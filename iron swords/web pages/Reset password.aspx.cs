using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.Services.Description;

namespace iron_swords.web_pages
{
    public partial class Reset_password : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            if (IsPostBack)
            {
                // Setting up the connection string
                string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(connectionstring);

                // Open the connection
                con.Open();

                // SQL command to check if the user exists
                string selectSQL = $"SELECT * FROM tblUsers WHERE [username] = '{Request.Form["userName"]}' AND [security question 1] = '{Question1.Value}' AND [answer 1] = '{Request.Form["answer1"]}' AND [security question 2] = '{Question2.Value}' AND [answer 2] = '{Request.Form["answer2"]}' OR [security question 1] = '{Question2.Value}' AND [answer 1] = '{Request.Form["answer2"]}' AND [security question 2] = '{Question1.Value}' AND [answer 2] = '{Request.Form["answer1"]}'";
                SqlCommand selectCmd = new SqlCommand(selectSQL, con);
                SqlDataAdapter ad = new SqlDataAdapter(selectCmd);
                DataSet ds = new DataSet();
                ad.Fill(ds, "tblUsers");

                if (ds.Tables[0].Rows.Count > 0)
                {
                    // SQL command to update the password
                    string updateSQL = $"UPDATE tblUsers SET password='{Request.Form["newpass"]}' WHERE username='{Request.Form["userName"]}'";
                    SqlCommand updateCmd = new SqlCommand(updateSQL, con);

                    // Execute the update command
                    updateCmd.ExecuteNonQuery();

                    message.InnerHtml = "password changed successfully login now";
                    message.Style.Add("text-align", "center");
                    message.Style.Add("color", "green");
                    message.Style.Add("font-size", "15PX");
                }
                else
                {
                    Session["userName"] = "visitor";
                    Session["login"] = false;
                    Session["admin"] = false;
                    message.Style.Add("text-align", "center");
                    message.Style.Add("color", "red");
                    message.Style.Add("font-size", "15px");
                    message.InnerHtml = "you were wrong in 1 or more sections";
                }

                // Close the connection
                con.Close();
            }
        }
    }
}