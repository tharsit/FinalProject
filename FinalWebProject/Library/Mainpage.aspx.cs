using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace FinalWebProject.Library
{
    public partial class Mainpage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("admin.aspx");
        }

        protected void Button2_Click(object sender, EventArgs e)
            
        {
           
            string search = "SELECT * FROM Booktable WHERE (BookName LIKE '%' + @BookName + '%' OR Author LIKE '%' + @Author + '%')";

            using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["booktable"].ConnectionString))
            {
                using (SqlCommand com = new SqlCommand(search, con))
                {
                    com.Parameters.AddWithValue("@BookName", TextBox1.Text);
                    com.Parameters.AddWithValue("@Author", TextBox1.Text);

                  
                    {
                        con.Open();
                        using (SqlDataAdapter da = new SqlDataAdapter(com))
                        {
                            DataSet ds = new DataSet();
                            da.Fill(ds);

                            if (ds.Tables[0].Rows.Count == 0)
                            {
                                lblMessage.Text = "No books found.";
                                GridView1.DataSource = null;
                                GridView1.DataBind();
                            }
                            else
                            {
                                lblMessage.Text = "";
                                GridView1.DataKeyNames = new string[] { "Book_ID" };

                                GridView1.DataSource = ds;
                                GridView1.DataBind();
                            }
                        }
                    }
                   
                }
                
            }
        }

        protected void TextBox1_TextChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {
            GridView1.SelectedIndex = GridView1.SelectedRow.RowIndex;
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            
            if (GridView1.SelectedIndex > -1)
            {
                
                GridViewRow selectedRow = GridView1.SelectedRow;
                int book_id = int.Parse(selectedRow.Cells[1].Text);
                string bookName = selectedRow.Cells[2].Text;
                double priceDouble = double.Parse(selectedRow.Cells[5].Text);
                int price = (int)priceDouble; 
                int count = 1; 

                CartItem cartItem = new CartItem
                {
                    Book_ID = book_id,                 
                    BookName = bookName,
                    Price = price,
                    Count = count
                };

               if (Session["cart"] == null)
                {
               List<CartItem> cartItems = new List<CartItem>();
                    cartItems.Add(cartItem);

                    
                    Session["cart"] = cartItems;
                }
                else
                {
                    
                    List<CartItem> cartItems = (List<CartItem>)Session["cart"];

                   
                    bool bookExists = cartItems.Any(item => item.BookName == bookName);

                    if (!bookExists)
                    {
                     
                        cartItems.Add(cartItem);
                    }
                    else
                    {
                       
                        CartItem existingCartItem = cartItems.FirstOrDefault(item => item.BookName == bookName);
                        existingCartItem.Count += count;
                    }

                   
                    Session["cart"] = cartItems;
                }
            }
            
        }

        protected void btncart_Click(object sender, EventArgs e)
        {
            Response.Redirect("Confirm.aspx");
        }

       

        protected void btncart_Click2(object sender, EventArgs e)
        {
            Response.Redirect("Confirm.aspx");
        }
    }
}
