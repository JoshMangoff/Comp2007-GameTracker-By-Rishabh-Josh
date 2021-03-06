﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/**
* @Description:     This file is used to let user register for the game tracker
* @Author:          Rishabh Batra & Josh Mangoff
* @Student Numbers: Rishabh(200301786) & Josh(200284512)
* @Date :           June 7th, 2016
* @Version:         0.1
*/



namespace Comp2007_GameTracker_By_RishabhAndJosh
{
    public partial class Register : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //checking for title
            if(!IsPostBack)
            {
                if(HttpContext.Current.User.Identity.IsAuthenticated)
                {
                    //show logout
                    PrivateTitlePlaceHolder.Visible = true;
                    PublicTitlePlaceHolder.Visible = false;
                }
                else
                {
                    //show login and register
                    PrivateTitlePlaceHolder.Visible = false;
                    PublicTitlePlaceHolder.Visible = true;
                }
            }
        }
    }
}
