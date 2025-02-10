using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Security.Cryptography;
using System.Web;
using System.Web.Caching;
using System.Web.Services.Description;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iron_swords.web_pages
{
    public partial class Login_form : System.Web.UI.Page
    {
        DataSet RetrieveUsersTable(string sqlstr)
        {
            //connect to the database
            string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionstring);

            //build sql query
            SqlCommand cmd = new SqlCommand(sqlstr, con);
          
            //sqlcommand cmd = new sqlcommand(sqlstr, con);

            //build dataadapter
            SqlDataAdapter ad = new SqlDataAdapter(cmd);

            //build dataset to store the data
            DataSet ds = new DataSet();

            //get data from database into the dataset
            //con.openm();
            ad.Fill(ds, "tblUsers");
            //con.close();

            return ds;
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            
            if (IsPostBack)
            {
                String SQLStr = "SELECT * FROM TblUsers" + $" WHERE userName='{Request.Form["userName"]}' AND password = '{Request.Form["password"]}'";
                DataSet ds = RetrieveUsersTable(SQLStr);
                if (ds.Tables[0].Rows.Count > 0)
                {
                    Session["userName"] = Request.Form["userName"];
                    Session["Login"] = true;
                    Session["Admin"] = ds.Tables[0].Rows[0]["Admin"];
                    Response.Redirect("https://localhost:44399/web%20pages/HomePage.aspx");
                }
                else
                {
                    Session["userName"] = "Visitor";
                    Session["Login"] = false;
                    Session["Admin"] = false;
                    welcomevisitor.InnerHtml = "unknown user name or password";
                }

            }
        }

    }
}