using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalWebProject.Library
{
    public partial class pwrecover : Page
    {
        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            string gmail = txtgmail.Text;
            string newPassword = cnewpw.Text;

            // Validate user input
            if (!IsValidEmail(gmail))
            {
                lblMessage.Text = "Please enter a valid email address.";
                lblMessage.ForeColor = System.Drawing.Color.Red;
                return;
            }

            // Update the user's password
            UpdatePassword(gmail, newPassword);

            // Provide user feedback
            lblMessage.Text = "Password updated successfully.";
            lblMessage.ForeColor = System.Drawing.Color.Green;
        }

        private bool IsValidEmail(string email)
        {
            // Use regular expression to validate email address format
            string emailPattern = @"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$";
            return System.Text.RegularExpressions.Regex.IsMatch(email, emailPattern);
        }

        private void UpdatePassword(string email, string newPassword)
        {
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["booktable"].ConnectionString))
            {
                string selectQuery = "SELECT Gmail FROM admindata WHERE Gmail = @Gmail";

                using (SqlCommand selectCmd = new SqlCommand(selectQuery, con))
                {
                    selectCmd.Parameters.AddWithValue("@Gmail", email);

                    con.Open();

                    using (SqlDataReader reader = selectCmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Close();

                            string updateQuery = "UPDATE admindata SET password = @Password WHERE Gmail = @Gmail";

                            using (SqlCommand updateCmd = new SqlCommand(updateQuery, con))
                            {
                                updateCmd.Parameters.AddWithValue("@Password", newPassword);
                                updateCmd.Parameters.AddWithValue("@Gmail", email);
                                updateCmd.ExecuteNonQuery();
                            }

                            Response.Redirect("admin.aspx");
                        }
                        else
                        {
                            lblMessage.Text = "Please check your Gmail!";
                            lblMessage.ForeColor = System.Drawing.Color.Red;
                        }
                    }
                }
            }
        }
    }
}
