using System;
using System.Data;
using System.Data.SqlClient;
using System.Web.UI;

namespace FinalWebProject.Library
{
    public partial class pwrecover : Page
    {
        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            string connectionString = @"Data Source=.\SQLEXPRESS;AttachDbFilename=C:\USERS\MAKKG\ONEDRIVE\DOCUMENTS\VISUAL STUDIO 2010\PROJECTS\FINALWEBPROJECT\FINALWEBPROJECT\APP_DATA\LOGIN.MDF;Integrated Security=True";

            using (SqlConnection con = new SqlConnection(connectionString))
            {
                string gmail = txtgmail.Text;
                string newPassword = cnewpw.Text;

                string selectQuery = "SELECT Gmail FROM admindata WHERE Gmail = @Gmail";

                using (SqlCommand selectCmd = new SqlCommand(selectQuery, con))
                {
                    selectCmd.Parameters.AddWithValue("@Gmail", gmail);
                   
                    con.Open();

                    using (SqlDataReader reader = selectCmd.ExecuteReader())
                    {
                        if (reader.HasRows)
                        {
                            reader.Close();

                            string updateQuery = "UPDATE admindata SET password = @Password";

                            using (SqlCommand updateCmd = new SqlCommand(updateQuery, con))
                            {
                                updateCmd.Parameters.AddWithValue("@Password", newPassword);
                                updateCmd.ExecuteNonQuery();
                            }

                            Label2.Text = "Password updated successfully.";
                            Label2.ForeColor = System.Drawing.Color.Green;
                            Response.Redirect("admin.aspx");
                        }
                        else
                        {
                            Label2.Text = "Please check your Gmail!";
                        }
                    }
                }
            }
        }
    }
}

