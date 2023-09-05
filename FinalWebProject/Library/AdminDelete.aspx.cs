using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace FinalWebProject.Library
{
    public partial class AdminDelete : System.Web.UI.Page
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
        protected void BookTable_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            // Get the Book_ID of the row being deleted
            int Id = Convert.ToInt32(AdminTable.DataKeys[e.RowIndex].Value);

            // Add your logic to delete the book from the database
            // Example:
            DeleteBook(Id);

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
        private void DeleteBook(int Id)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["booktable"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM admindata WHERE Admin_ID = @Id";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@Id", Id);
                    connection.Open();
                    command.ExecuteNonQuery();
                }
            }
        }

        protected void Back_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPanel.aspx");
        }

    }
}