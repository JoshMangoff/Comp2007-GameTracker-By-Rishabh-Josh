<%@ Page Title="Register" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="Comp2007_GameTracker_By_RishabhAndJosh.Register" %>

<%--Register Page to let user register and login to site--%>
<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" runat="server">
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <asp:PlaceHolder ID="PublicTitlePlaceHolder" runat="server">
                    <h2>Create an Account!</h2>
                </asp:PlaceHolder>
                <asp:PlaceHolder ID="PrivateTitlePlaceHolder" runat="server">
                    <h2>Edit Account</h2>
                </asp:PlaceHolder>
                <div class="form-group">
                    <label class="control-label" for="UsernameTextBox">Username</label>
                    <asp:TextBox type="text" runat="server" class="form-control" ID="UsernameTextBox" placeholder="Username" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator1" runat="server" ErrorMessage="Username is required" ControlToValidate="UsernameTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="PasswordTextBox">Password</label>
                    <asp:TextBox type="text" runat="server" TextMode="password" class="form-control" ID="PasswordTextBox" placeholder="" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator2" runat="server" ErrorMessage="Password is required" ControlToValidate="PasswordTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="form-group">
                    <label class="control-label" for="ConfirmPasswordTextBox">Password</label>
                    <asp:TextBox type="text" runat="server" TextMode="password" class="form-control" ID="ConfirmPasswordTextBox" placeholder="" required="true"></asp:TextBox>
                    <asp:RequiredFieldValidator Display="Dynamic" CssClass="alert-danger" ID="RequiredFieldValidator3" runat="server" ErrorMessage="Password Confirmation is required" ControlToValidate="ConfirmPasswordTextBox"></asp:RequiredFieldValidator>
                </div>
                <div class="text-right">
                    <a class="btn btn-default btn-lg" id="CancelButton" href="Default.aspx">Cancel</a>
                    <asp:Button runat="server" CssClass="btn btn-primary btn-lg" ID="SendButton" Text="Send" CausesValidation="true" />
                </div>
            </div>
        </div>
    </div>
</asp:Content>
