using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iron_swords.web_pages
{
    public partial class Mater_Page : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["admin"])
            {
                tacticot.Style.Add("display", "none");
                userinfo.Style.Add("display", "none");
            }
            if (!(bool)Session["login"])
            {
                btnLogOut.Style.Add("display", "none");
                strengthworkout.Style.Add("display", "none");
                mealplans.Style.Add("display", "none");
                flexabilityworkouts.Style.Add("display", "none");
                preparation.Style.Add("display", "none");
                tips.Style.Add("display", "none");
                cardio.Style.Add("display", "none");
                stregnthli.Style.Add("display", "none");
                nutritionli.Style.Add("display", "none");
                flexabilityli.Style.Add("display", "none");
            }
            else
            {
                logregister.Style.Add("display", "none");
            }
        }
        protected void BtnLogOut_ServerClick(object sender, EventArgs e)
        {      
            Session.Abandon();
            Session["userName"] = "Visitor";
            Response.Redirect("https://localhost:44399/web%20pages/Login%20form.aspx");
        }
    }
}