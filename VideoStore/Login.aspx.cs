using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void button_Click(object sender, EventArgs e)
    {

        string CS = ConfigurationManager.ConnectionStrings["MoveDBConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);


        string command = "SELECT user_id, username, password FROM [account] where password='" + tfPass.Text + "' AND username='" + tfUser.Text + "'";

        SqlDataAdapter da = new SqlDataAdapter(command, con);

        //stored in the memory of the webserver
        DataSet ds = new DataSet();
        //opens and closes automatically
        da.Fill(ds);
        if ((int)ds.Tables[0].Rows.Count == 0)
        {
            
        }
        else
        {
            Session["CurrentUser"] = (string)ds.Tables[0].Rows[0][1];
            Server.Transfer("MainPage.aspx", true);
        }

    }
}