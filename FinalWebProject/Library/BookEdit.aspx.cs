using System;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalWebProject.Library
{
    public partial class EditBooks : System.Web.UI.Page
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
        protected void BookTable_RowEditing(object sender, GridViewEditEventArgs e)
        {
            BookTable.EditIndex = e.NewEditIndex;
            BindGridView();
        }


        protected void BookTable_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = BookTable.Rows[e.RowIndex];
            string bookId = BookTable.DataKeys[e.RowIndex].Value.ToString();
            string bookName = ((TextBox)row.FindControl("txt_BookName")).Text;
            string author = ((TextBox)row.FindControl("txt_Author")).Text;
            string Category = ((TextBox)row.FindControl("txt_Category")).Text;
            float price = float.Parse(((TextBox)row.FindControl("txt_Price")).Text);
            // Update the book record in the database using the bookId, bookName, and author variables

            // Example code to update the book record using SQL query
            string updateQuery = "UPDATE Booktable SET BookName = @BookName, Author = @Author, Price = @Price,Category = @Category WHERE Book_ID = @BookID";
            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["booktable"].ConnectionString))
            {
                using (SqlCommand com = new SqlCommand(updateQuery, con))
                {
                    com.Parameters.AddWithValue("@BookID", bookId);
                    com.Parameters.AddWithValue("@BookName", bookName);
                    com.Parameters.AddWithValue("@Author", author);
                    com.Parameters.AddWithValue("@Price", price);
                    com.Parameters.AddWithValue("@Category", Category);
                    con.Open();
                    com.ExecuteNonQuery();
                }
            }

            // Reset the GridView's EditIndex to -1 to exit edit mode
            BookTable.EditIndex = -1;

            // Rebind the GridView to reflect the updated data
            BindGridView();
        }

        protected void BookTable_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            // Reset the GridView's EditIndex to -1 to exit edit mode
            BookTable.EditIndex = -1;

            // Rebind the GridView to reflect the original data
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
        protected void BookTable_SelectedIndexChanged(object sender, EventArgs e)
        {
            BindGridView();

        }

        protected void btnBack_On_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminPanel.aspx");
        }


    }

}