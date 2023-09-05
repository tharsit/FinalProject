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
    public partial class Signup : System.Web.UI.Page
    {



        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btnconfirm_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["booktable"].ConnectionString);
                con.Open();

              
                string selectQuery = "SELECT COUNT(*) FROM [admindata] WHERE Username = @Username";
                SqlCommand selectCommand = new SqlCommand(selectQuery, con);
                selectCommand.Parameters.AddWithValue("@Username", TextBox1.Text);
                int existingCount = (int)selectCommand.ExecuteScalar();

                if (existingCount > 0)
                {
                    lblMsg.Text = "A record with the same username already exists.";
                    lblMsg.ForeColor = System.Drawing.Color.Red;
                }
                else
                {
                   
                    string insertQuery = "INSERT INTO [admindata] (Username, Gmail, Password, Confirmpassword) VALUES (@Username, @Gmail, @Password, @Confirmpassword)";
                    SqlCommand insertCommand = new SqlCommand(insertQuery, con);
                    insertCommand.Parameters.AddWithValue("@Username", TextBox1.Text);
                    insertCommand.Parameters.AddWithValue("@Gmail", TextBox2.Text);
                    insertCommand.Parameters.AddWithValue("@Password", TextBoxpw.Text);
                    insertCommand.Parameters.AddWithValue("@Confirmpassword", TextBoxcpw.Text);
                    insertCommand.ExecuteNonQuery();
                    Response.Redirect("Admindaya.aspx");
                }

                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

    }
}
 

 
