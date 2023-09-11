using System;
using System.Text;
using System.Web.UI;
using System.Collections.Generic;
using System.Data;

namespace FinalWebProject.Library
{
    public partial class Invoice : Page
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

                // Calculate and add the total at the bottom row
                DataRow totalRow = dt.NewRow();
                totalRow["BookName"] = "Total";
                totalRow["Price"] = DBNull.Value;
                totalRow["Quantity"] = DBNull.Value;
                totalRow["TotalPrice"] = totalPriceAllItems;
                dt.Rows.Add(totalRow);

                GridView1.DataSource = dt;
                GridView1.DataBind();
                Session["cart"] = cartItems;
            }
        }

       
    }
}
