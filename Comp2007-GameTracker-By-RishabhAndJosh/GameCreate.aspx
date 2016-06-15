<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="GameCreate.aspx.cs" Inherits="Comp2007_GameTracker_By_RishabhAndJosh.GameCreate" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="form-group">
            <label class="control-label" for="GameNameTextBox">Game Name</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="GameNameTextBox" placeholder="Name of Game" required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Name of Game is required" ControlToValidate="GameNameTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label" for="GameDescriptionTextBox">Game Description</label>
            <asp:TextBox runat="server" TextMode="MultiLine" Rows="3" Columns="3" CssClass="form-control" ID="GameDescriptionTextBox" placeholder="Game Description here..." required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Game Description is required" ControlToValidate="GameDescriptionTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label" for="Team1NameTextBox">Team 1 Name</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="Team1NameTextBox" placeholder="Team 1 Name" required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator6" runat="server" ErrorMessage="Team 1 Name is required" ControlToValidate="Team1NameTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label" for="Team1DescriptionTextBox">Team 1 Description:</label>
            <asp:TextBox runat="server" TextMode="MultiLine" Rows="3" Columns="3" CssClass="form-control" ID="Team1DescriptionTextBox" placeholder="Team 1 Description here..." required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Team 1 Description is required" ControlToValidate="Team1DescriptionTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label" for="Team1ScoreTextBox">Team 1 Score</label>
            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="Team1ScoreTextBox" placeholder="Team 1 Score" required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator8" runat="server" ErrorMessage="Team 1 Score is required" ControlToValidate="Team1ScoreTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label" for="Team2NameTextBox">Team 2 Name</label>
            <asp:TextBox runat="server" CssClass="form-control" ID="Team2NameTextBox" placeholder="Team 2 Name" required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator7" runat="server" ErrorMessage="Team 2 Name is required" ControlToValidate="Team2NameTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label" for="Team2DescriptionTextBox">Team 2 Description:</label>
            <asp:TextBox runat="server" TextMode="MultiLine" Rows="3" Columns="3" CssClass="form-control" ID="Team2DescriptionTextBox" placeholder="Team 2 Description here..." required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator4" runat="server" ErrorMessage="Team 2 Description is required" ControlToValidate="Team2DescriptionTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label" for="Team2ScoreTextBox">Team 2 Score</label>
            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="Team2ScoreTextBox" placeholder="Team 2 Score" required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator9" runat="server" ErrorMessage="Team 2 Score is required" ControlToValidate="Team2ScoreTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label" for="SpectatorsTextBox">Number of Spectators</label>
            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="SpectatorsTextBox" placeholder="Number of Spectators" required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator5" runat="server" ErrorMessage="Number of Spectators is required" ControlToValidate="SpectatorsTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="form-group">
            <label class="control-label" for="WinnerTextBox">Winning Team</label>
            <asp:TextBox runat="server" TextMode="Number" CssClass="form-control" ID="WinnerTextBox" placeholder="Winning Team" required="true"></asp:TextBox>
            <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator10" runat="server" ErrorMessage="Winning Team is required" ControlToValidate="WinnerTextBox"></asp:RequiredFieldValidator>
        </div>
        <div class="text-right">
            <a class="btn btn-default btn-lg" id="CancelButton" href="Default.aspx">Cancel</a>
            <asp:Button runat="server" CssClass="btn btn-primary btn-lg" ID="SendButton" Text="Send" CausesValidation="true" OnClick="SendButton_Click" />
        </div>
    </div>
</asp:Content>
