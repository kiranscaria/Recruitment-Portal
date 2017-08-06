using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

using MySql.Data.MySqlClient;

public partial class FormsMasterPage : System.Web.UI.MasterPage
{

    protected void Page_Load(object sender, EventArgs e)
    {
        //Response.Cache.SetNoStore();      comment out both these lines 
        //logoTron();                       before deployment 
    }

    protected void logoTron()
    {
        if (Session["AuthToken"] != null && Request.Cookies["AuthToken"] != null)
        {
            if (!Session["AuthToken"].ToString().Equals(Request.Cookies["AuthToken"].Value))
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                // token but not matching
                // hacker detected :)
            }
        }
        else
        {
            Response.Redirect("Login.aspx");
        }
    }

    
}
