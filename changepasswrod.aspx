<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="changepasswrod.aspx.cs" Inherits="Content_changepasswrod" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="change-password-page">
    <h2>Change Password</h2>

    <!-- Current Password -->
    <asp:Label ID="lblCurrentPassword" runat="server" Text="Current Password:" CssClass="form-label"></asp:Label>
    <asp:TextBox ID="txtCurrentPassword" runat="server" CssClass="input-box" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvCurrentPassword" runat="server"
        ControlToValidate="txtCurrentPassword"
        ErrorMessage="Current password is required!"
        CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
    <br />

    <!-- New Password -->
    <asp:Label ID="lblNewPassword" runat="server" Text="New Password:" CssClass="form-label"></asp:Label>
    <asp:TextBox ID="txtNewPassword" runat="server" CssClass="input-box" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server"
        ControlToValidate="txtNewPassword"
        ErrorMessage="New password is required!"
        CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:RegularExpressionValidator ID="revNewPassword" runat="server"
        ControlToValidate="txtNewPassword"
        ErrorMessage="Password must be at least 8 characters with letters and numbers!"
        ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$"
        CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RegularExpressionValidator>
    <br />

    <!-- Confirm New Password -->
    <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm New Password:" CssClass="form-label"></asp:Label>
    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input-box" TextMode="Password"></asp:TextBox>
    <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server"
        ControlToValidate="txtConfirmPassword"
        ErrorMessage="Confirm password is required!"
        CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
    <asp:CompareValidator ID="cvConfirmPassword" runat="server"
        ControlToValidate="txtConfirmPassword" ControlToCompare="txtNewPassword"
        ErrorMessage="Passwords do not match!"
        CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
    <br />

    <!-- Forget Password Link -->
    <div class="forget-password-link">
        <asp:HyperLink ID="lnkForgetPassword" runat="server" NavigateUrl="forget.aspx" CssClass="forget-link">
            Forgot your password?
        </asp:HyperLink>
    </div>
    <br />
    <!-- Message Label -->
    <asp:Label ID="lblMessage" runat="server" CssClass="message-label"></asp:Label>
    <!-- Submit Button -->
    <asp:Button ID="btnSubmit" runat="server" Text="Change Password" CssClass="btn-submit" OnClick="btnSubmit_Click" />
</div>
</asp:Content>

