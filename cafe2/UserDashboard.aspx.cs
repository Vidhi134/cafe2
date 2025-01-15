using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe2
{
    public partial class UserDashboard : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnViewMenu_Click(object sender, EventArgs e)
        {
            Response.Redirect("MenuPage.aspx");
        }
        protected void btnViewOrders_Click(object sender, EventArgs e)
        {
            Response.Redirect("OrdersPage.aspx");
        }
    }
}