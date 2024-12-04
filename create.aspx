<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="create.aspx.cs" Inherits="create" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section class="create-account-section">
    <div class="create-account-container">
      <h1>Create a New Account</h1>
      <p>Fill out the form below to create a new account.</p>

      <form action="#" method="POST" class="create-account-form">
        <div class="form-group">
          <label for="name">Full Name</label>
          <input type="text" id="name" name="name" placeholder="Enter your full name" required>
        </div>
        <div class="form-group">
          <label for="email">Email Address</label>
          <input type="email" id="email" name="email" placeholder="Enter your email" required>
        </div>
        <div class="form-group">
          <label for="password">Password</label>
          <input type="password" id="password" name="password" placeholder="Enter your password" required>
        </div>
        <div class="form-group">
          <label for="confirm-password">Confirm Password</label>
          <input type="password" id="confirm-password" name="confirm-password" placeholder="Confirm your password" required>
        </div>
        <button type="submit" class="btn">Create Account</button>
      </form>

      <p class="existing-account">Already have an account? <a href="login.aspx">Login here</a></p>
    </div>
  </section>

</asp:Content>

