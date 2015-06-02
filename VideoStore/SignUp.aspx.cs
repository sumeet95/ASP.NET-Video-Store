using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SignUpaspx : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {

        string _connStr = ConfigurationManager.ConnectionStrings["MoveDBConnectionString"].ConnectionString;
        string _query = "INSERT INTO [account] (username,password,email) values (@username,@password,@email)";
        using (SqlConnection conn = new SqlConnection(_connStr))
        {
            using (SqlCommand comm = new SqlCommand())
            {
                comm.Connection = conn;
                comm.CommandType = CommandType.Text;
                comm.CommandText = _query;
                comm.Parameters.AddWithValue("@username", txtUsername.Text);
                comm.Parameters.AddWithValue("@password", txtPass.Text );
                comm.Parameters.AddWithValue("@email", txtEmail.Text );
                try
                {
                    conn.Open();
                    comm.ExecuteNonQuery();
                    conn.Close();
                    Server.Transfer("CreationComplete.aspx", true);
                }
                catch (SqlException ex)
                {
                    
                }
                
            }
        }


        
    }
}