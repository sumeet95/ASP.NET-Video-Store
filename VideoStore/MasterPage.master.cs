using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class MasterPage : System.Web.UI.MasterPage
{
    protected void Page_Load(object sender, EventArgs e)
    {
        Label1.Text ="Welcome " + (String)Session["CurrentUser"];
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {   
        Response.Redirect("Search.aspx?By="+DropDownList1.SelectedValue+"&Search="+txtSearch.Text );
    }
}
