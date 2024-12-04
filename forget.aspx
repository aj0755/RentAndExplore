<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="forget.aspx.cs" Inherits="forget" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="forgot-password-section">
    <div class="forgot-password-container">
      <h1>Forgot Your Password?</h1>
      <p>Enter your email address below, and we’ll send you a link to reset your password.</p>

      <form action="#" method="POST" class="forgot-password-form">
        <div class="form-group">
          <label for="email">Email Address</label>
          <input type="email" id="email" name="email" placeholder="Enter your email" required>
        </div>
        <button type="submit" class="btn">Send Reset Link</button>
      </form>

      <p class="back-to-login"><a href="login.aspx">Back to Login</a></p>
    </div>
  </section>
</asp:Content>

