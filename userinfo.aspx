<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="userinfo.aspx.cs" Inherits="userinfo" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="user-info-page">
        <!-- Header Section -->
        <header class="user-info-header">
            <h1>Welcome, <asp:Label ID="lblUserName" runat="server" Text="User"></asp:Label>!</h1>
            <asp:Button ID="btnLogout" runat="server" Text="Logout" CssClass="logout-button" OnClick="btnLogout_Click" />
        </header>

        <!-- User Details Section -->
        <section class="user-details">
            <h2>Your Account Details</h2>

            <p><strong>User ID:</strong>
                <asp:Label ID="lblUserId" runat="server" CssClass="info-label"></asp:Label>
            </p>
            <p><strong>Full Name:</strong>
                <asp:TextBox ID="txtFullName" runat="server" CssClass="info-input" ReadOnly="true"></asp:TextBox>
            </p>
            <p><strong>Email:</strong>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="info-input" ReadOnly="true"></asp:TextBox>
            </p>
            <p><strong>Contact Number:</strong>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="info-input" ReadOnly="true"></asp:TextBox>
            </p>
        <p>
            <asp:Label ID="Label1" runat="server" ForeColor="Lime"></asp:Label>
             <asp:Button ID="btnSaveChanges" runat="server" CssClass="btn-submit" Text="Save Changes" OnClick="btnSaveChanges_Click" Visible="false" />
            </p>
        </section>

        <!-- Account Management Section -->
        <section class="account-management">
            <h2>Manage Your Account</h2>
            <asp:Button ID="btnEditProfile" runat="server" Text="Edit Profile" CssClass="account-management-button" OnClick="btnEditProfile_Click" />
            <asp:Button ID="btnChangePassword" runat="server" Text="Change Password" CssClass="account-management-button" OnClick="btnChangePassword_Click" />
            <asp:Button ID="btnBookingHistory" runat="server" Text="View Booking History" CssClass="account-management-button" OnClick="btnBookingHistory_Click" />
        </section>

        <!-- Support Section -->
        <section class="customer-support">
            <h2>Need Help?</h2>
            <p><asp:HyperLink ID="hlContactUs" runat="server" NavigateUrl="contactUs.aspx" CssClass="support-link">Contact Us</asp:HyperLink></p>
        </section>
    </div>
</asp:Content>

