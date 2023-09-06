using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FinalWebProject.Library
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnAddBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("bookdata.aspx");
        }

        protected void btnEditBook_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookEdit.aspx");
        }

        protected void btnDelete_Click(object sender, EventArgs e)
        {
            Response.Redirect("BookDelete.aspx");
        }

        protected void btnAddAdmins_Click(object sender, EventArgs e)
        {
            Response.Redirect("Signup.aspx");
        }

        protected void btnEditAdmins_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminEdit.aspx");
        }

        protected void btnDeleteAdmins_Click(object sender, EventArgs e)
        {
            Response.Redirect("AdminDelete.aspx");
        }

        protected void btnBack_Click(object sender, EventArgs e)
        {
            Response.Redirect("Mainpage.aspx");
        }
    }
}