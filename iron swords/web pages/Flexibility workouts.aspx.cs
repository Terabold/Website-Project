﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace iron_swords.web_pages
{
    public partial class Flexibility_workouts1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!(bool)Session["login"])
            {
                Response.Redirect("https://localhost:44399/web%20pages/HomePage.aspx");
            }
        }
    }
}