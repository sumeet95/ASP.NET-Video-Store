using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class OrderPage : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string v = (string)Session["CurrentUser"];
        if ("sumeet" == (string)Session["CurrentUser"])
        {
            Server.Transfer("OrderPageAdmin.aspx", true);
        }
    }
}