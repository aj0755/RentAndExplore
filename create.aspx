<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="register-page">
        <div class="register-container">
            <div class="Logo">
                <img src="Images/logo.jpg" alt="Rent And Explore Logo">
            </div>
            <h1 class="animate-title">Create Your Account</h1>
            <p class="tagline">Join us and explore the best vehicles for rent!</p>
            <form>
                <input type="text" class="input-box" placeholder="Enter your full name" required>
                <input type="email" class="input-box" placeholder="Enter your email" required>
                <input type="password" class="input-box" placeholder="Enter your password" required>
                <input type="password" class="input-box" placeholder="Confirm your password" required>
                <button type="submit" class="btn-submit">Sign Up</button>
            </form>
            <div class="links">
                <p>Already have an account? <a href="login.aspx">Login Here</a></p>
            </div>
        </div>
    </div>

</asp:Content>

