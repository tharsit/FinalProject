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
                    row["TotalPrice"] = cartItem.Price * cartItem.Count;
                    dt.Rows.Add(row);
                    totalPriceAllItems += totalItemPrice;
                }
                txtTotal.Text = totalPriceAllItems.ToString();
               
                GridView2.DataSource = dt;
                GridView2.DataBind();
            }
        }

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            int Book_id, Quantity, Total;
            Total = 0;
            List<CartItem> cartItems = (List<CartItem>)Session["cart"];
            foreach (CartItem cartItem in cartItems)
            {
                SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["booktable"].ConnectionString);
             
                Book_id = cartItem.Book_ID;
                Quantity = cartItem.Count;
                int totalItemPrice = cartItem.Price * cartItem.Count;
                Total += totalItemPrice;
                string insert = "insert into CustomerData(Name,Address,Phone_Number,Book_ID,Quantity,Price,Order_ID) values (@Name,@Address,@Phone_Number,@Book_ID,@Quantity,@Price,@Order_ID)";
                SqlCommand com = new SqlCommand(insert, con);

                com.Parameters.AddWithValue("@Name", TextBox2.Text);
                com.Parameters.AddWithValue("@Address", TextBox1.Text);
                com.Parameters.AddWithValue("@Phone_Number", TextBox3.Text);
                com.Parameters.AddWithValue("@Price", cartItem.Price);
                com.Parameters.AddWithValue("@Book_ID",cartItem.Book_ID);
                com.Parameters.AddWithValue("@Quantity",cartItem.Count);
                con.Close();
            }
            lblMsg.Text = "Your order is successfully confirmed";
        }

        protected void btnCancel_Click(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                Session.Remove("cart");
                Response.Redirect("Mainpage.aspx");            

            }
            if (Session["cart"] == null)
            {
                Response.Redirect("Mainpage.aspx");
            }

        }
    }
}
