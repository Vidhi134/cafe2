using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe2
{
    public partial class Report : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void AddReport(string reportType)
        {
            // Add report logic here
            // Example: Insert report details into the database
            Response.Write($"<script>alert('Adding {reportType} functionality');</script>");
        }

        protected void EditReport(string reportType)
        {
            // Edit report logic here
            // Example: Update report details in the database
            Response.Write($"<script>alert('Editing {reportType} functionality');</script>");
        }

        protected void DeleteReport(string reportType)
        {
            // Delete report logic here
            // Example: Remove report details from the database
            Response.Write($"<script>alert('Deleting {reportType} functionality');</script>");
        }
    }
}
