<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <div class="login-page">
        <div class="login-container">
            <div class="Logo">
                <img src="Images/logo.jpg" alt="Rent And Explore" />
            </div>
            <h1 class="animate-title">Welcome Back</h1>
            <p class="tagline">Log in to explore the best vehicles for rent!</p>
            <form id="loginForm">
                <label for="email">Email:</label>
                <input type="email" id="email" class="input-box" placeholder="Enter your email" required />

                <label for="password">Password:</label>
                <input type="password" id="password" class="input-box" placeholder="Enter your password" required />

                <button type="submit" class="btn-submit">Login</button>
                <div class="links">
                    <a href="forget.aspx">Forgot Password?</a> | 
                    <a href="create.aspx">Create Account</a>
                </div>
            </form>
        </div>
    </div></asp:Content>

