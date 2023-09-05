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
    public partial class bookdata : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {

                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["booktable"].ConnectionString);

                con.Open();

                string insert = "insert into Booktable(Bookname,Category,Author,Price) values (@Bookname,@Category,@Author,@Price)";
                SqlCommand com = new SqlCommand(insert, con);
                
                com.Parameters.AddWithValue("@Bookname", TextBox2.Text);
                com.Parameters.AddWithValue("@Category", DropDownList1.Text);
                com.Parameters.AddWithValue("@Author", TextBox3.Text);
                com.Parameters.AddWithValue("@Price", TextBox4.Text);
                com.ExecuteNonQuery();
                Response.Redirect("Booktable.aspx");
                con.Close();
            }
            catch (Exception ex)
            {
                Response.Write(ex);
            }
        }

        

        protected void TextBox2_TextChanged(object sender, EventArgs e)
        {

        }
        

        
    }
}