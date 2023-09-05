using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalWebProject.Library
{
    public partial class AdminEdit : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                BindGridView();
            }
        }


        protected void btnSearch_Click(object sender, EventArgs e)
        {
            BindGridView();
        }
        protected void AdminTable_RowEditing(object sender, GridViewEditEventArgs e)
        {
            AdminTable.EditIndex = e.NewEditIndex;
            BindGridView();
        }


        protected void AdminTable_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = AdminTable.Rows[e.RowIndex];
            string ID = AdminTable.DataKeys[e.RowIndex].Value.ToString();
            string UserName = ((TextBox)row.FindControl("txt_UserName")).Text;
            string Gmail = ((TextBox)row.FindControl("txt_Gmail")).Text;
            string Password = ((TextBox)row.FindControl("txt_Password")).Text;
            string Confirmpassword = ((TextBox)row.FindControl("txt_ConfirmPassword")).Text;
            // Update the book record in the database using the ID, UserName, and Gmail variables

            // Example code to update the book record using SQL query
            string updateQuery = "UPDATE admindata SET UserName = @UserName, Gmail = @Gmail, Password = @Password,Confirmpassword = @Confirmpassword WHERE Admin_ID = @ID";
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["booktable"].ConnectionString))
            {
                using (SqlCommand com = new SqlCommand(updateQuery, con))
                {
                    com.Parameters.AddWithValue("@ID", ID);
                    com.Parameters.AddWithValue("@UserName", UserName);
                    com.Parameters.AddWithValue("@Gmail", Gmail);
                    com.Parameters.AddWithValue("@Password", Password);
                    com.Parameters.AddWithValue("@Confirmpassword", Confirmpassword);
                    con.Open();
                    com.ExecuteNonQuery();
                }
            }

            // Reset the GridView's EditIndex to -1 to exit edit mode
            AdminTable.EditIndex = -1;

            // Rebind the GridView to reflect the updated data
            BindGridView();
        }

        protected void AdminTable_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Reset the GridView's EditIndex to -1 to exit edit mode
            AdminTable.EditIndex = -1;

            // Rebind the GridView to reflect the original data
            BindGridView();
        }





        protected void BindGridView()
        {
            string search = "SELECT * FROM admindata WHERE (UserName LIKE '%' + @UserName + '%' OR Gmail LIKE '%' + @Gmail + '%')";

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["booktable"].ConnectionString))
            {
                using (SqlCommand com = new SqlCommand(search, con))
                {
                    com.Parameters.AddWithValue("@UserName", txtSearch.Text);
                    com.Parameters.AddWithValue("@Gmail", txtSearch.Text);

                    {
                        con.Open();
                        using (SqlDataAdapter da = new SqlDataAdapter(com))
                        {
                            DataSet ds = new DataSet();
                            da.Fill(ds);

                            if (ds.Tables[0].Rows.Count == 0)
                            {
                                lblMessage.Text = "No Admin found.";
                                AdminTable.DataSource = null;
                                AdminTable.DataBind();
                            }
                            else
                            {
                                lblMessage.Text = "";
                                AdminTable.DataKeyNames = new string[] { "Admin_ID" };

                                AdminTable.DataSource = ds;
                                AdminTable.DataBind();
                            }
                        }
                    }
                }
            }
        }

        protected void AdminTable_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGridView();

        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPanel.aspx");
        }
    }


}

