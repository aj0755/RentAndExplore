<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="forgot-password-page">
        <div class="forgot-container">
            <div class="Logo">
                <img src="Images/logo.jpg" alt="Rent And Explore Logo" />
            </div>
            <h1 class="animate-title">Forgot Password</h1>
            <p class="instructions">
                Enter your registered email address to reset your password.
            </p>
            <form action="ResetPassword.aspx" method="post">
                <label for="email">Email Address:</label>
                <input type="email" id="email" name="email" class="input-box" placeholder="Enter your email" required />
                <button type="submit" class="btn-submit">Reset Password</button>
            </form>
            <div class="links">
                <a href="login.aspx">Back to Login</a>
            </div>
        </div>
    </div>
</asp:Content>

