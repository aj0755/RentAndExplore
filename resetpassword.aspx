<%@ Page Language="C#" AutoEventWireup="true" CodeFile="resetpassword.aspx.cs" Inherits="resetpassword" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Reset Password</title>
    <script src="Content/JScript.js" type="text/javascript"></script>
    <link href="Content/StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div class="reset-password-page">
        <div class="reset-password-container">
            <h2>Reset Your Password</h2>
            <asp:Label ID="lblMessage" runat="server" CssClass="reset-password-message"></asp:Label>
            <div class="reset-password-group">
                <asp:Label ID="lblNewPassword" runat="server" AssociatedControlID="txtNewPassword">New Password</asp:Label>
                <asp:TextBox ID="txtNewPassword" runat="server" CssClass="reset-password-input" TextMode="Password" Placeholder="Enter new password" Required="true"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvNewPassword" runat="server" ControlToValidate="txtNewPassword" ErrorMessage="New password is required." CssClass="reset-password-message"></asp:RequiredFieldValidator>
            </div>
            <div class="reset-password-group">
                <asp:Label ID="lblConfirmPassword" runat="server" AssociatedControlID="txtConfirmPassword">Confirm Password</asp:Label>
                <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="reset-password-input" TextMode="Password" Placeholder="Confirm new password" Required="true"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" ControlToValidate="txtConfirmPassword" ErrorMessage="Confirmation password is required." CssClass="reset-password-message"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvPasswords" runat="server" ControlToCompare="txtNewPassword" ControlToValidate="txtConfirmPassword" ErrorMessage="Passwords do not match." CssClass="reset-password-message"></asp:CompareValidator>
            </div>
            <asp:Button ID="btnResetPassword" runat="server" Text="Reset Password" CssClass="reset-password-btn"/>
        </div>
      </div>
    </form>
</body>
</html>
