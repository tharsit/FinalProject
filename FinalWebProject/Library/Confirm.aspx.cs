using System;
using System.Collections.Generic;
using System.Data;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;

namespace FinalWebProject.Library
{
    public partial class Confirm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                List<CartItem> cartItems = (List<CartItem>)Session["cart"];
                int totalPriceAllItems = 0;

                DataTable dt = new DataTable();
                dt.Columns.Add("BookName", typeof(string));
                dt.Columns.Add("Price", typeof(int));
                dt.Columns.Add("Quantity", typeof(int));
                dt.Columns.Add("TotalPrice", typeof(int));

                foreach (CartItem cartItem in cartItems)
                {
                    DataRow row = dt.NewRow();
                    row["BookName"] = cartItem.BookName;
                    row["Price"] = cartItem.Price;
                    row["Quantity"] = cartItem.Count;
                    int totalItemPrice = cartItem.Price * cartItem.Count;
                    row["TotalPrice"] = totalItemPrice;
                    dt.Rows.Add(row);
                    totalPriceAllItems += totalItemPrice;
                }
                txtTotal.Text = totalPriceAllItems.ToString();

                GridView2.DataSource = dt;
                GridView2.DataBind();
                Session["cart"] = cartItems;
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            List<CartItem> cartItems = (List<CartItem>)Session["cart"];
            if (cartItems != null && TextBox1 != null && TextBox2 != null && TextBox3 != null)
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["booktable"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("SELECT MAX(Order_No) FROM Sales", con);
                    int lastOrderNumber = (int)cmd.ExecuteScalar();
                    int newOrderNumber = lastOrderNumber + 1;

                    foreach (CartItem cartItem in cartItems)
                    {
                        string insert = "insert into Sales(Customer_Name,Address,Phone_Number,Book_ID,Quantity,Order_Date,Order_No) values (@Name,@Address,@Phone_Number,@Book_ID,@Quantity,@Order_Date,@Order_Number)";
                        using (SqlCommand com = new SqlCommand(insert, con))
                        {
                            com.Parameters.AddWithValue("@Name", TextBox2.Text);
                            com.Parameters.AddWithValue("@Address", TextBox1.Text);
                            com.Parameters.AddWithValue("@Phone_Number", TextBox3.Text);
                            com.Parameters.AddWithValue("@Book_ID", cartItem.Book_ID);
                            com.Parameters.AddWithValue("@Quantity", cartItem.Count);
                            com.Parameters.AddWithValue("@Order_Date", DateTime.Today);
                            com.Parameters.AddWithValue("@Order_Number", newOrderNumber);
                            com.ExecuteNonQuery();
                        }
                    }
                    con.Close();
                }
                lblMsg.Text = "Your order is successfully confirmed";
                lblMsg.ForeColor = System.Drawing.Color.Black;
                Session.Remove("cart");
            }
            else
            {
                lblMsg.Text = "Please order something first";
                lblMsg.ForeColor = System.Drawing.Color.Red;
            }


        }


        protected void btnCancel_Click(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                Session.Remove("cart");
            }
            Response.Redirect("Mainpage.aspx");
        }
    }
}
