using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;

public partial class Search : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string CS = ConfigurationManager.ConnectionStrings["MoveDBConnectionString"].ConnectionString;
        SqlConnection con = new SqlConnection(CS);


        string command = "SELECT title,director,id FROM [allmovies] where " + Request.QueryString["By"] +" LIKE '%"+Request.QueryString["Search"]+"%'";

        SqlDataAdapter da = new SqlDataAdapter(command, con);

        //stored in the memory of the webserver
        DataSet ds = new DataSet();
        //opens and closes automatically
        da.Fill(ds);

        GridView1.AutoGenerateColumns = false;
        GridView1.DataSource = ds;
        GridView1.DataBind();
    }
}