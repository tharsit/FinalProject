using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace FinalWebProject.Library
{
    public partial class admin : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["booktable"].ConnectionString);
        SqlCommand com = null;
        SqlDataReader dr = null;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            try
            {
                con.Open();
                com = new SqlCommand("SELECT Password FROM admindata WHERE Gmail = @Gmail", con);
                com.Parameters.AddWithValue("@Gmail", txtgmail.Text);

                using (SqlDataReader dr = com.ExecuteReader())
                {
                    if (dr.HasRows)
                    {
                        while (dr.Read())
                        {
                            string password = dr.GetString(0);

                            if (password.Equals(txtpassword.Text))
                            {
                                Session["Gmail"] = txtgmail.Text;
                                Response.Redirect("bookdata.aspx");
                            }
                            else
                            {
                                lblMsg.Text = "Gmail or Password is incorrect!!";
                                lblMsg.ForeColor = System.Drawing.Color.Red;
                            }
                        }
                    }
                    else
                    {
                        lblMsg.Text = "Gmail or Password is incorrect!!";
                        lblMsg.ForeColor = System.Drawing.Color.Red;
                    }
                }
            }
            catch (Exception ex)
            {
                // Handle the exception or log the error message
                lblMsg.Text = "An error occurred: " + ex.Message;
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }
            finally
            {
                con.Close();
            }
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

      
    }
}