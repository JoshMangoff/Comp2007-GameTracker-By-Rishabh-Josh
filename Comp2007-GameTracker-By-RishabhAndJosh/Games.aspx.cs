using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

/**
* @Description: This file is used to track Games statistics
* @Author:          Rishabh Batra & Josh Mangoff
* @Student Numbers: Rishabh(200301786) & Josh(200284512)
* @Date :           June 7th, 2016
* @Version:         0.1
*/


// using statements required for EF DB access
using Comp2007_GameTracker_By_RishabhAndJosh.Models;
using System.Web.ModelBinding;


namespace Comp2007_GameTracker_By_RishabhAndJosh
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void SelectWeek_DayRender(object sender, DayRenderEventArgs e)
        {
            e.Day.IsSelectable = false;
        }

        protected void SelectWeek_SelectionChanged(object sender, EventArgs e)
        {
            Label1.Text = SelectWeek.SelectedDates[0] + " - " + SelectWeek.SelectedDates[SelectWeek.SelectedDates.Count-1].ToShortDateString();
            // connect to the EF DB
            using (DefaultConnection db = new DefaultConnection())
            {
                DateTime selectedDate = SelectWeek.SelectedDates[0];
                // populate a student object instance with the StudentID from the URL Parameter
                GamesPlayed gamesPlayed = (from gPlayed in db.GamesPlayeds
                                           where gPlayed.DatePlayed== selectedDate
                                           select gPlayed).FirstOrDefault();
                if (gamesPlayed != null)
                {
                    GameNameTextBox1.Text = (from games in db.Games where games.GamesID == gamesPlayed.Game select games.GameName).SingleOrDefault();
                    TeamATextBox1.Text = (from team in db.Teams where team.TeamsID == gamesPlayed.TeamA select team.TeamName).SingleOrDefault();
                    TeamBTextBox1.Text = (from team in db.Teams where team.TeamsID == gamesPlayed.TeamB select team.TeamName).SingleOrDefault();
                    TotalPointsTextBox1.Text = gamesPlayed.TotalPointsScored.ToString();
                    TotalPointsAllowedTextBox1.Text = gamesPlayed.TotalPointsAllowed.ToString();
                    NoOfSpectatorsTextBox1.Text = gamesPlayed.NumberOfSpectators.ToString();
                    WinningTeamTextBox1.Text = (from team in db.Teams where team.TeamsID == gamesPlayed.WinningTeam select team.TeamName).SingleOrDefault();
                    TeamAScoresTextBox1.Text = gamesPlayed.TeamA_Scores.ToString();
                    TeamBScoresTextBox1.Text = gamesPlayed.TeamB_Scores.ToString();
                    TotalPointsAllowedTextBox1.Text = gamesPlayed.TotalPointsAllowed.ToString();
                }
            }
        }
    }
}