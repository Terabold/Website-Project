using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace iron_swords
{
    public class Global : System.Web.HttpApplication
    {

        protected void Application_Start(object sender, EventArgs e)
        {
            Application["totalusers"] = 0;
            Application["currentusers"] = 0;

        }

        protected void Session_Start(object sender, EventArgs e)
        {
            Application["currentusers"] = (int)Application["currentusers"]+1;
            Application["totalusers"] = (int)Application["totalusers"]+1;

            Session["userName"] = "Visitor";
            Session["login"] = false;
            Session["admin"] = false;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            Application["currentusers"] = (int)Application["currentusers"] - 1;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
    }
}