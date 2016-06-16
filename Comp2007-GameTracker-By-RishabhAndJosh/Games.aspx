<%@ Page Title="Games" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Games.aspx.cs" Inherits="Comp2007_GameTracker_By_RishabhAndJosh.WebForm2" %>

<%--Games page to track the result and statistics of games--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-2 col-md-8">
                <h1 style="text-align:center;">Games Tracker</h1>
                <div class="grid">
                    <div class="form-group row">
                        <div class="col-md-4 center-block">
                        <label class="control-label  margin10" for="SelectWeek">Select Week</label>
                        <asp:Calendar ID="SelectWeek" CssClass=" weekCalendar" SelectionMode="DayWeek" runat="server" BackColor="#FFFFCC" BorderColor="#FFCC66" BorderWidth="1px" DayNameFormat="Shortest" Font-Names="Verdana" Font-Size="8pt" ForeColor="#663399" Height="200px" ShowGridLines="True" Width="220px" OnDayRender="SelectWeek_DayRender" OnSelectionChanged="SelectWeek_SelectionChanged">
                            <DayHeaderStyle BackColor="#FFCC66" Font-Bold="True" Height="1px" />
                            <NextPrevStyle Font-Size="9pt" ForeColor="#FFFFCC" />
                            <OtherMonthDayStyle ForeColor="#CC9966" />
                            <SelectedDayStyle BackColor="#CCCCFF" Font-Bold="True" />
                            <SelectorStyle BackColor="#FFCC66" />
                            <TitleStyle BackColor="#990000" Font-Bold="True" Font-Size="9pt" ForeColor="#FFFFCC" />
                            <TodayDayStyle BackColor="#FFCC66" ForeColor="White" />
                        </asp:Calendar>
                           <asp:Label CssClass="margin10 col-centered" ID="DateSelectedFromCalendar" runat="server" Text=""></asp:Label>
                       </div>
                    </div>
                    <div class="col-lg-2">
                        <div class="form-group row  ">
                            <label class="control-label" for="GameNameTextBox1">Game1</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="GameNameTextBox1" placeholder="Game Name"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="TeamATextBox1">Team A</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamATextBox1" placeholder="Team A"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamBTextBox1">Team B</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamBTextBox1" placeholder="Team B"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TotalPointsTextBox1">Total Points Scored</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsTextBox1" placeholder="Total Points Scored"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="NoOfSpectatorsTextBox1">Number of Spectators</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="NoOfSpectatorsTextBox1" placeholder="Number of Spectators"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="WinningTeamTextBox1">Winning Team</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="WinningTeamTextBox1" placeholder="Winning Team"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamAScoresTextBox1">Team A Scores</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamAScoresTextBox1" placeholder="Team A Scores"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamBScoresTextBox1">Team B Scores</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamBScoresTextBox1" placeholder="Team B Scores"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="TotalPointsAllowedTextBox1">Total points allowed</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsAllowedTextBox1" placeholder="Total points allowed"></asp:TextBox>
                        </div>
                    </div>
                    <div class="col-lg-2 margin25">
                        <div class="form-group row  ">
                            <label class="control-label" for="GameNameTextBox2">Game2</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="GameNameTextBox2" placeholder="Game Name"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="TeamATextBox2">Team A</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamATextBox2" placeholder="Team A"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamBTextBox2">Team B</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamBTextBox2" placeholder="Team B"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TotalPointsTextBox2">Total Points Scored</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsTextBox2" placeholder="Total Points Scored"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="NoOfSpectatorsTextBox2">Number of Spectators</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="NoOfSpectatorsTextBox2" placeholder="Number of Spectators"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="WinningTeamTextBox2">Winning Team</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="WinningTeamTextBox2" placeholder="Winning Team"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamAScoresTextBox2">Team A Scores</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamAScoresTextBox2" placeholder="Team A Scores"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamBScoresTextBox2">Team B Scores</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamBScoresTextBox2" placeholder="Team B Scores"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="TotalPointsAllowedTextBox2">Total points allowed</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsAllowedTextBox2" placeholder="Total points allowed"></asp:TextBox>
                        </div>
                    </div>
                     <div class="col-lg-2 margin25">
                        <div class="form-group row  ">
                            <label class="control-label" for="GameNameTextBox3">Game3</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="GameNameTextBox3" placeholder="Game Name"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="TeamATextBox3">Team A</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamATextBox3" placeholder="Team A"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamBTextBox3">Team B</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamBTextBox3" placeholder="Team B"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TotalPointsTextBox3">Total Points Scored</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsTextBox3" placeholder="Total Points Scored"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="NoOfSpectatorsTextBox3">Number of Spectators</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="NoOfSpectatorsTextBox3" placeholder="Number of Spectators"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="WinningTeamTextBox3">Winning Team</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="WinningTeamTextBox3" placeholder="Winning Team"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamAScoresTextBox3">Team A Scores</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamAScoresTextBox3" placeholder="Team A Scores"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamBScoresTextBox3">Team B Scores</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamBScoresTextBox3" placeholder="Team B Scores"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="TotalPointsAllowedTextBox3">Total points allowed</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsAllowedTextBox3" placeholder="Total points allowed"></asp:TextBox>
                        </div>
                    </div>
                       <div class="col-lg-2 margin25">
                        <div class="form-group row  ">
                            <label class="control-label" for="GameNameTextBox4">Game4</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="GameNameTextBox4" placeholder="Game Name"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="TeamATextBox4">Team A</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamATextBox4" placeholder="Team A"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamBTextBox4">Team B</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamBTextBox4" placeholder="Team B"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TotalPointsTextBox4">Total Points Scored</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsTextBox4" placeholder="Total Points Scored"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="NoOfSpectatorsTextBox4">Number of Spectators</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="NoOfSpectatorsTextBox4" placeholder="Number of Spectators"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="WinningTeamTextBox4">Winning Team</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="WinningTeamTextBox4" placeholder="Winning Team"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamAScoresTextBox4">Team A Scores</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamAScoresTextBox4" placeholder="Team A Scores"></asp:TextBox>
                        </div>
                        <div class="form-group row ">
                            <label class="control-label" for="TeamBScoresTextBox4">Team B Scores</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TeamBScoresTextBox4" placeholder="Team B Scores"></asp:TextBox>
                        </div>
                        <div class="form-group row  ">
                            <label class="control-label" for="TotalPointsAllowedTextBox4">Total points allowed</label>
                            <asp:TextBox runat="server" CssClass="form-control" ID="TotalPointsAllowedTextBox4" placeholder="Total points allowed"></asp:TextBox>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</asp:Content>
