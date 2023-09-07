using System;
using System.Text;
using System.Web.UI;
using System.Collections.Generic;

namespace FinalWebProject.Library
{
    public partial class Invoice : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["cart"] != null)
            {
                // Generate the HTML content for the invoice
                StringBuilder htmlContent = new StringBuilder();
                htmlContent.Append("<h1>Invoice</h1>");

                // Add table headers
                htmlContent.Append("<table style = 'margin-left : auto; margin-right : auto;'>");
                htmlContent.Append("<tr><th>Book Name</th><th>Price</th><th>Quantity</th><th>Total Price</th></tr>");

                // Add table rows
                List<CartItem> cartItems = (List<CartItem>)Session["cart"];
                int totalPriceAllItems = 0;
                foreach (CartItem cartItem in cartItems)
                {
                    htmlContent.Append("<tr>");
                    htmlContent.Append("<td>" + cartItem.BookName + "</td>");
                    htmlContent.Append("<td>" + cartItem.Price + "</td>");
                    htmlContent.Append("<td>" + cartItem.Count + "</td>");
                    int totalItemPrice = cartItem.Price * cartItem.Count;
                    htmlContent.Append("<td>" + totalItemPrice + "</td>");
                    htmlContent.Append("</tr>");
                    totalPriceAllItems += totalItemPrice;
                }

                // Add the total row
                htmlContent.Append("<tr><td colspan='3'><b>Total</b></td><td>" + totalPriceAllItems + "</td></tr>");

                htmlContent.Append("</table>");

                // Output the HTML content
                invoice.InnerHtml = htmlContent.ToString();

                Session["cart"] = cartItems;
            }
        }

       
    }
}
