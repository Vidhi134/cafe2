using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace cafe2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            string username = txtUsername.Text;
            string password = txtPassword.Text;

            if (username == "User" && password == "1234")
            {
                Response.Redirect("UserDashboard.aspx");
            }
            else
            {
                Label1.Text = "Invalid Username or Password.";
            }
        
    }

        protected void txtUsername_TextChanged(object sender, EventArgs e)
        {

        }
    }
}