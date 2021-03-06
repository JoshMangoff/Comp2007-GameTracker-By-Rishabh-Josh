﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/**
* @Description: This file is used to perform site navigation activities
* @Author:      Rishabh Batra & Josh Mangoff
* @Student Numbers: Rishabh(200301786) & Josh(200284512)
* @Date :       June 7th, 2016
* @Version:     0.1
*/


namespace Comp2007_GameTracker_By_RishabhAndJosh.User_Controls
{
    public partial class NavigationBar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //navbar availibility
            if(!IsPostBack)
            {
                if(HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    //show logout
                    PrivatePlaceHolder.Visible = true;
                    PublicPlaceHolder.Visible = false;
                }
                else
                {
                    //show login and register
                    PrivatePlaceHolder.Visible = false;
                    PublicPlaceHolder.Visible = true;
                }
            }
        }
        /**
        * This method adds a css class of "active" to the 
        * list according as page title navigated
        * @method SetPageActive
        * @return {string}
        */
        private string SetPageActive()
        {
            switch (Page.Title)
            {
                case "Home":
                    home.Attributes.Add("class", "active");
                    break;
                case "Games":
                    games.Attributes.Add("class", "active");
                    break;
                case "Login":
                    login.Attributes.Add("class", "active");
                    break;
                case "Register":
                    register.Attributes.Add("class", "active");
                    break;
                case "Contact":
                    contact.Attributes.Add("class", "active");
                    break;
            }
            return Page.Title;
        }
    }
}
