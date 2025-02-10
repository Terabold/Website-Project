using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Security.Cryptography.X509Certificates;
using System.Data.SqlClient;
using System.Web.Services.Description;
using System.Runtime.Remoting.Messaging;

namespace iron_swords.web_pages
{
    public partial class users : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["admin"])
            {
                Response.Redirect("https://localhost:44399/web%20pages/HomePage.aspx");
            }

            if (!IsPostBack)
            {
                String sqlstr = "SELECT * FROM TblUsers";
                DataSet ds = RetrieveUsersTable(sqlstr);
                DataTable dt = ds.Tables[0];
                string table = buildusertable(dt);
                tablediv.InnerHtml = table;
            }

        }

        public void Click_Filter(object sender, EventArgs e)
        {
            string SQLstr = buildSQLStrfilter(Request.Form["filter"]);
            DataSet ds = RetrieveUsersTable(SQLstr);
            string table = buildusertable(ds.Tables[0]);
            tablediv.InnerHtml = table;
        }
        public void Click_Sort(object sender, EventArgs e)
        {
            string SQLStr = buildSQLStrsort(columns.Value, Request.Form["order"]);
            DataSet ds = RetrieveUsersTable(SQLStr);
            string table = buildusertable(ds.Tables[0]);
            tablediv.InnerHtml = table;
        }

        public string buildSQLStrfilter(string str)
        {
            if (str.Length == 0)
            {
                return "SELECT * FROM tblUsers";
            }
            string SQLstr = $"SELECT * FROM tblUsers " + $"WHERE firstName LIKE '%{str}%' OR lastName LIKE '%{str}%'";
            return SQLstr;
        }

        public string buildSQLStrsort(string column, string order)
        {
            string SQLStr = $"SELECT * FROM tblUsers " + $" ORDER BY {column} {order}";
            return SQLStr;
        }
        public DataSet RetrieveUsersTable(string sqlstr)
        {
            //connect to the database
            string connectionstring = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionstring);

            //build sql query
            SqlCommand cmd = new SqlCommand(sqlstr, con);
         
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

        public string buildusertable(DataTable dt)
        {
            string str = "<table class='tablediv'>";

            // Header row
            str += "<tr>";
            str += "<th>Checkbox</th>"; // Title for checkbox column
            foreach (DataColumn column in dt.Columns)
            {
                str += "<th>" + column.ColumnName + "</th>";
            }
            str += "</tr>";

            // Data rows
            foreach (DataRow row in dt.Rows)
            {
                str += "<tr>";
                // Checkbox column
                str += $"<td>{CreateradioBtn(row["UserId"].ToString())}</td>";
                foreach (DataColumn column in dt.Columns)
                {
                    str += "<td>" + row[column] + "</td>";
                }
                str += "</tr>";
            }

            str += "</table>";
            return str;
        }

        public string CreateradioBtn(string id)
        {
            return $"<input type='checkbox' name='chk{id}' id='chk{id}' runat='server' />";
        }

        public void Delete(object sender, EventArgs e)
        {
            //התחברות למסד הנתונים
            string connectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename=|DataDirectory|\Database1.mdf;Integrated Security=True";
            SqlConnection con = new SqlConnection(connectionString);

            //טעינת הנתונים
            string SQLstr = "SELECT * FROM tblUsers";
            SqlCommand cmd = new SqlCommand(SQLstr, con);
            SqlDataAdapter ad = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            ad.Fill(ds, "tblUsers");

            //מחיקת שורות שנבחרו מתוך הדאטה סט
            for (int i = 0; i < Request.Form.Count; i++)
            {
                if (Request.Form.AllKeys[i].Contains("chk"))
                {
                    int UserId = int.Parse(Request.Form.AllKeys[i].Remove(0, 3));
                    DataRow[] dr = ds.Tables["tblUsers"].Select($"UserId = {UserId}");
                    dr[0].Delete();
                }
            }

            //עדכון הדאטה סט בבסיס הנתונים
            SqlCommandBuilder builder = new SqlCommandBuilder(ad);
            ad.UpdateCommand = builder.GetDeleteCommand();
            ad.Update(ds, "tblUsers");

            //הדפסת הטבל המעודכנת
            string table = buildusertable(ds.Tables["tblUsers"]);
            tablediv.InnerHtml = table;
        }

        public void edit (object sender, EventArgs e)
        {
            for (int i = 1; i< Request.Form.Count; i++)
            {

                if (Request.Form.AllKeys[i].Contains("chk"))
                {
                    Session["userToUpdate"] = int.Parse(Request.Form.AllKeys[i].Remove(0, 3));
                    Response.Redirect("https://localhost:44399/web%20pages/editusers.aspx");
                }
            } 
            message.InnerHtml = "no user was selected";
        }
    }
}