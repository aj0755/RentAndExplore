﻿<%@ Page Language="C#" AutoEventWireup="true" CodeFile="registration.aspx.cs" Inherits="registration" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Registration page</title>
    <link href="Content/StyleSheet.css" rel="stylesheet" type="text/css" />
    <script src="Content/JScript.js" type="text/javascript"></script>
    <script>
        // Show Modal
        function showOtpModal() {
            document.getElementById("otpModal").style.display = "block";
            document.getElementById("modalOverlay").style.display = "block";
        }

        // Hide Modal
        function hideOtpModal() {
            document.getElementById("otpModal").style.display = "none";
            document.getElementById("modalOverlay").style.display = "none";
        }m
    </script>
</head>
<body>
    <form id="form1" runat="server">
<div class="register-page">
        <div class="register-container">
            <!-- Logo Section -->
            <div class="Logo">
                <img src="Logo/logo.jpg" alt="Rent And Explore Logo">
            </div>

            <!-- Title and Tagline -->
            <h1 class="animate-title">Create Your Account</h1>
            <p class="tagline">Join us and explore the best vehicles for rent!</p>

            <!-- Registration Form -->
            <asp:Panel ID="RegisterPanel" runat="server">

                <!-- Full Name -->
                <asp:Label ID="lblFullName" runat="server" Text="Full Name:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtFullName" runat="server" CssClass="input-box" Placeholder="Enter your full name"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvFullName" runat="server" 
                    ControlToValidate="txtFullName" ErrorMessage="Full Name is required!" 
                    CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <br />

                <!-- Age -->
                <asp:Label ID="lblAge" runat="server" Text="Age:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtAge" runat="server" CssClass="input-box" Placeholder="Enter your age"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvAge" runat="server"
                    ControlToValidate="txtAge" ErrorMessage="Age is required!"
                    CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RangeValidator ID="rvAge" runat="server"
                    ControlToValidate="txtAge" ErrorMessage="Age must be 18 or older!"
                    MinimumValue="18" MaximumValue="120" Type="Integer"
                    CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RangeValidator>
                <br />

                <!-- Email -->
                <asp:Label ID="lblEmail" runat="server" Text="Email Address:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtEmail" runat="server" CssClass="input-box" Placeholder="Enter your email"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Email is required!" 
                    CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revEmail" runat="server" 
                    ControlToValidate="txtEmail" ErrorMessage="Invalid email format!" 
                    CssClass="error-message" Display="Dynamic"
                    ValidationExpression="^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
                <br />

                <!-- Phone -->
                <asp:Label ID="lblPhone" runat="server" Text="Phone Number:" CssClass="form-label"></asp:Label>
                <asp:TextBox ID="txtPhone" runat="server" CssClass="input-box" Placeholder="Enter your phone number"></asp:TextBox>
                <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                    ControlToValidate="txtPhone" ErrorMessage="Phone number is required!" 
                    CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPhone" runat="server" 
                    ControlToValidate="txtPhone" ErrorMessage="Invalid phone number format!" 
                    CssClass="error-message" Display="Dynamic" ForeColor="Red"
                    ValidationExpression="^\d{10}$">
                </asp:RegularExpressionValidator>
                <br />

                <!-- Password -->
                <asp:Label ID="lblPassword" runat="server" Text="Password:" CssClass="form-label"></asp:Label>
                <div class="password-container">
                    <asp:TextBox ID="txtPassword" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Enter your password"></asp:TextBox>
                    <span class="toggle-password" onclick="togglePasswordVisibility('<%= txtPassword.ClientID %>')">&#128065;</span>
                </div>
                <asp:RequiredFieldValidator ID="rfvPassword" runat="server" 
                    ControlToValidate="txtPassword" ErrorMessage="Password is required!" 
                    CssClass="error-message" Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:RegularExpressionValidator ID="revPassword" runat="server" 
                    ControlToValidate="txtPassword" 
                    ErrorMessage="Password must be at least 8 characters with letters and numbers!" 
                    CssClass="error-message" Display="Dynamic"
                    ValidationExpression="^(?=.*[A-Za-z])(?=.*\d)[A-Za-z\d]{8,}$" 
                    ForeColor="Red"></asp:RegularExpressionValidator>
                <br />

                <!-- Confirm Password -->
                <asp:Label ID="lblConfirmPassword" runat="server" Text="Confirm Password:" CssClass="form-label"></asp:Label>
                <div class="password-container">
                    <asp:TextBox ID="txtConfirmPassword" runat="server" CssClass="input-box" TextMode="Password" Placeholder="Confirm your password"></asp:TextBox>
                    <span class="toggle-password" onclick="togglePasswordVisibility('<%= txtConfirmPassword.ClientID %>')">&#128065;</span>
                </div>
                <asp:RequiredFieldValidator ID="rfvConfirmPassword" runat="server" 
                    ControlToValidate="txtConfirmPassword" 
                    ErrorMessage="Confirm Password is required!" CssClass="error-message" 
                    Display="Dynamic" ForeColor="Red"></asp:RequiredFieldValidator>
                <asp:CompareValidator ID="cvPassword" runat="server" 
                    ControlToCompare="txtPassword" ControlToValidate="txtConfirmPassword" 
                    ErrorMessage="Passwords do not match!" CssClass="error-message" 
                    Display="Dynamic" ForeColor="Red"></asp:CompareValidator>
                <br />

                <!-- Sign Up Button -->
                <asp:Button ID="btnSignUp" runat="server" CssClass="btn-submit" Text="Sign Up" onclick="btnSignUp_Click"/>
                <br />
                <asp:Label ID="lblMessage" runat="server" ForeColor="Lime"></asp:Label>
            </asp:Panel>

            <!-- Login Link -->
            <div class="links">
                <p>Already have an account? <a href="login.aspx">Login Here</a></p>
            </div>
        </div>
         <!-- OTP Verification Modal -->
        <div id="otpModal" class="modal" runat="server" visible="false">
            <div class="modal-content">
                <h3>Verify Your Email</h3>
                <p>An OTP has been sent to your email. Please enter it below:</p>
                <asp:TextBox ID="txtOtp" runat="server" CssClass="input-box" Placeholder="Enter OTP"></asp:TextBox>
                <asp:Button ID="btnVerifyOtp" runat="server" Text="Verify OTP" CssClass="btn-submit" OnClick="btnVerifyOtp_Click" />
                <asp:Label ID="lblOtpMessage" runat="server" CssClass="error-message"></asp:Label>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
