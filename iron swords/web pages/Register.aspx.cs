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
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack)
            {
                //connect to the database
                string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(connectionstring);


                //build sql query
                string SQLstr = $"SELECT * FROM tblUsers Where 0=1";
                SqlCommand cmd = new SqlCommand(SQLstr, con);

                //build dataadapter
                SqlDataAdapter ad = new SqlDataAdapter(cmd);

                //build dataset to store the data
                DataSet ds = new DataSet();

                //get data from database into the dataset
                //con.openm();
                ad.Fill(ds, "tblUsers");
                //con.close();

                DataRow dr = ds.Tables["tblUsers"].NewRow();
                dr["firstName"] = Request.Form["Name"];
                dr["lastName"] = Request.Form["LastName"];
                dr["admin"] = false;
                dr["city"] = Request.Form["City"];
                dr["email"] = Request.Form["email"];
                dr["tel"] = Request.Form["PhoneNumber"];
                dr["username"] = Request.Form["userName"];
                dr["password"] = Request.Form["password"];
                dr["birthdate"] = DateTime.Parse(birthday.Value);
                dr["gender"] = Request.Form["gender"];
                dr["security question 1"] = Request.Form["Question1"];
                dr["answer 1"] = Request.Form["answer1"];
                dr["security question 2"] = Request.Form["Question2"];
                dr["answer 2"] = Request.Form["answer2"];
                ds.Tables["tblUsers"].Rows.Add(dr);

                SqlCommandBuilder builder = new SqlCommandBuilder(ad);
                ad.UpdateCommand = builder.GetInsertCommand();
                ad.Update(ds, "tblUsers");


                massege.InnerHtml = "registered succesfully you can log in now!";
                massege.Style.Add("text-align", "center");
                massege.Style.Add("color", "green");
                massege.Style.Add("font-size", "15px");
            }

        }
        }
    }
