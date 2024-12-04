<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="login.aspx.cs" Inherits="login" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="login-section">
    <div class="login-container">
      <h1>Login to Your Account</h1>
      <form action="#" method="POST" class="login-form">
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="Enter your email" required>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="password" placeholder="Enter your password" required>
        </div>

        <button type="submit" class="btn login-btn">Login</button>
        <div class="login-options">
          <a href="forget.aspx">Forgot Password?</a>
          <a href="Create.aspx">Create an Account</a>
        </div>
      </form>
    </div>
  </section>
</asp:Content>

