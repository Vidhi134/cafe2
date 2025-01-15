using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe2
{
    public partial class Menu_page : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (!IsPostBack)
            {
                BindMenuItems();
            }
        }

        private void BindMenuItems()
        {
            DataTable dt = new DataTable();
            dt.Columns.Add("Name");
            dt.Columns.Add("Price");
            dt.Columns.Add("ImageUrl");
            dt.Columns.Add("IsAvailable", typeof(bool));

            dt.Rows.Add("Espresso", 3.50, "Espresso.jpg", true);
            dt.Rows.Add("Latte", 4.00, "Latte.jpg", true);
            dt.Rows.Add("Cappuccino", 4.50, "Cappuccino.jpg", false);
            dt.Rows.Add("Mocha", 5.00, "Mocha.jpg", true);
            dt.Rows.Add("Americano", 3.00, "Americano.jpg", true);

            rptMenuItems.DataSource = dt;
            rptMenuItems.DataBind();
        }
    


        protected void rptMenuItems_ItemCommand(object source, RepeaterCommandEventArgs e)
        {

        }
    }
}