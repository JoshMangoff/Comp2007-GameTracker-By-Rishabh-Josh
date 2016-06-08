using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/**
* @Description: This file is used to perform site navigation activities
* @Author:      Rishabh Batra & Josh Mangoff
* @Date :       June 7th, 2016
* @Version:     0.1
*/


namespace Comp2007_GameTracker_By_RishabhAndJosh.User_Controls
{
    public partial class NavigationBar : System.Web.UI.UserControl
    {
        protected void Page_Load(object sender, EventArgs e)
        {

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
                case "games":
                    games.Attributes.Add("class", "active");
                    break;
                case "login":
                    login.Attributes.Add("class", "active");
                    break;
                case "register":
                    register.Attributes.Add("class", "active");
                    break;
                case "contact":
                    contact.Attributes.Add("class", "active");
                    break;
            }
            return Page.Title;
        }
    }
}