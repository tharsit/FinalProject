using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;


namespace FinalWebProject.Library
{
    public partial class BookDelete : System.Web.UI.Page
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
            int bookId = Convert.ToInt32(BookTable.DataKeys[e.RowIndex].Value);

            // Add your logic to delete the book from the database
            // Example:
            DeleteBook(bookId);

            BindGridView();
        }

        protected void BindGridView()
        {
            string search = "SELECT * FROM Booktable WHERE (BookName LIKE '%' + @BookName + '%' OR Author LIKE '%' + @Author + '%')";

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["booktable"].ConnectionString))
            {
                using (SqlCommand com = new SqlCommand(search, con))
                {
                    com.Parameters.AddWithValue("@BookName", txtSearch.Text);
                    com.Parameters.AddWithValue("@Author", txtSearch.Text);


                    {
                        con.Open();
                        using (SqlDataAdapter da = new SqlDataAdapter(com))
                        {
                            DataSet ds = new DataSet();
                            da.Fill(ds);

                            if (ds.Tables[0].Rows.Count == 0)
                            {
                                lblMessage.Text = "No books found.";
                                BookTable.DataSource = null;
                                BookTable.DataBind();
                            }
                            else
                            {
                                lblMessage.Text = "";
                                BookTable.DataKeyNames = new string[] { "Book_ID" };

                                BookTable.DataSource = ds;
                                BookTable.DataBind();
                            }
                        }
                    }
                }
            }
        }
        private void DeleteBook(int bookId)
        {
            string connectionString = ConfigurationManager.ConnectionStrings["booktable"].ConnectionString;
            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "DELETE FROM Booktable WHERE Book_ID = @BookId";
                using (SqlCommand command = new SqlCommand(query, connection))
                {
                    command.Parameters.AddWithValue("@BookId", bookId);
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