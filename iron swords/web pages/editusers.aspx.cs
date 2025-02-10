using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iron_swords.web_pages
{
    public partial class editusers : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["admin"])
            {
                Response.Redirect("https://localhost:44399/web%20pages/HomePage.aspx");
            }

            if (!IsPostBack)
            {
                //connect to the database
                string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
                SqlConnection con = new SqlConnection(connectionstring);

                //build sql query
                string SQLstr = $"SELECT * FROM tblUsers Where userid={(int)Session["userToUpdate"]}";
                SqlCommand cmd = new SqlCommand(SQLstr, con);
                //sqlcommand cmd = new sqlcommand(sqlstr, con);

                //build dataset to store the data
                DataSet ds = new DataSet();

                SqlDataAdapter ad = new SqlDataAdapter(cmd);
                ad.Fill(ds, "tblUsers");
                DataRow dr = ds.Tables["tblUsers"].Rows[0];

                Name.Value = dr["firstName"].ToString();
                LastName.Value = dr["lastName"].ToString();
                admin2.Value = dr["admin"].ToString();
                City.Value = dr["city"].ToString();
                email.Value = dr["email"].ToString();
                PhoneNumber.Value = dr["tel"].ToString();
                userName.Value = dr["username"].ToString();
                password.Value = dr["password"].ToString();
                password2.Value = dr["password"].ToString();
                birthday.Value = Convert.ToDateTime(dr["birthdate"]).ToString("yyyy-MM-dd");
                gender2.Value = dr["gender"].ToString();
                q1.Value = dr["security question 1"].ToString();
                answer1.Value = dr["answer 1"].ToString();
                q2.Value = dr["security question 2"].ToString();
                answer2.Value = dr["answer 2"].ToString();

            }


        }
        public void updateUser(object sender, EventArgs e)
        {
            //connect to the database
            string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionstring);

            //build sql query
            string SQLstr = $"SELECT * FROM tblUsers Where userid={(int)Session["userToUpdate"]}";
            SqlCommand cmd = new SqlCommand(SQLstr, con);
            //sqlcommand cmd = new sqlcommand(sqlstr, con);

            //build dataset to store the data
            DataSet ds = new DataSet();

            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            ad.Fill(ds, "tblUsers");

            DataRow dr = ds.Tables["tblUsers"].Rows[0];
            dr["firstName"] = Name.Value;
            dr["lastName"] = LastName.Value;
            dr["admin"] = admin2.Value;
            dr["city"] = City.Value;
            dr["email"] = email.Value;
            dr["tel"] = PhoneNumber.Value;
            dr["username"] = userName.Value;
            dr["password"] = password.Value;
            dr["password"] = password2.Value;
            dr["birthdate"] = DateTime.Parse(birthday.Value);
            dr["gender"] = gender2.Value;
            dr["security question 1"] = q1.Value;
            dr["answer 1"] = answer1.Value;
            dr["security question 2"] = q2.Value;
            dr["answer 2"] = answer2.Value;


            SqlCommandBuilder builder = new SqlCommandBuilder(ad);
            ad.UpdateCommand = builder.GetUpdateCommand();
            ad.Update(ds, "tblUsers");

            Response.Redirect("https://localhost:44399/web%20pages/users.aspx");
        }
    }
}