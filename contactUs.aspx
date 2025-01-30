<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <h5>Contact Us</h5>
    <div class="contact-section">
        <!-- Contact Details -->
        <div class="contact-details">
            <asp:Label ID="lblHeader" runat="server" Text="If you need any info, please contact us!" CssClass="contact-header"></asp:Label>
            <asp:Label ID="lblAddressHeader" runat="server" Text="Address:" CssClass="contact-subheader"></asp:Label>
            <asp:Label ID="lblAddress" runat="server" Text="123 Main Street, Anand, Gujarat, India" CssClass="contact-text"></asp:Label>
            <asp:Label ID="lblEmailHeader" runat="server" Text="Email:" CssClass="contact-subheader"></asp:Label>
            <asp:HyperLink ID="hlEmail" runat="server" NavigateUrl="mailto:info@rentandexplore.com" CssClass="contact-link">info@rentandexplore.com</asp:HyperLink>
            <asp:Label ID="lblPhoneHeader" runat="server" Text="Phone:" CssClass="contact-subheader"></asp:Label>
            <asp:HyperLink ID="hlPhone" runat="server" NavigateUrl="tel:+91234567890" CssClass="contact-link">+91 234 567 890</asp:HyperLink>
        </div>

        <!-- Contact Form -->
        <div class="contact-form">
            <asp:Label ID="lblFormHeader" runat="server" Text="If any queries feel free to contact us!" CssClass="contact-header"></asp:Label>
            <asp:Label ID="lblName" runat="server" Text="Name" CssClass="contact-label"></asp:Label>
            <asp:TextBox ID="txtName" runat="server" CssClass="contact-input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvName" runat="server" 
                ControlToValidate="txtName" ErrorMessage="Name is required." 
                CssClass="validation-error" ForeColor="Red" />

            <asp:Label ID="lblEmail" runat="server" Text="Email" CssClass="contact-label"></asp:Label>
            <asp:TextBox ID="txtEmail" runat="server" CssClass="contact-input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvEmail" runat="server" 
                ControlToValidate="txtEmail" ErrorMessage="Email is required." 
                CssClass="validation-error" ForeColor="Red" />
            <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" ErrorMessage="Invalid email format." ValidationExpression="^\w+@[a-zA-Z_]+?\.[a-zA-Z]{2,3}$" CssClass="validation-error" />

            <asp:Label ID="lblPhone" runat="server" Text="Phone" CssClass="contact-label"></asp:Label>
            <asp:TextBox ID="txtPhone" runat="server" CssClass="contact-input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvPhone" runat="server" 
                ControlToValidate="txtPhone" ErrorMessage="Phone is required." 
                CssClass="validation-error" ForeColor="Red" />
            <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" ErrorMessage="Invalid phone number." ValidationExpression="^\d{10}$" CssClass="validation-error" />

            <asp:Label ID="lblSubject" runat="server" Text="Subject" CssClass="contact-label"></asp:Label>
            <asp:TextBox ID="txtSubject" runat="server" CssClass="contact-input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvSubject" runat="server" 
                ControlToValidate="txtSubject" ErrorMessage="Subject is required." 
                CssClass="validation-error" ForeColor="Red" />

            <asp:Label ID="lblMessage" runat="server" Text="Message" CssClass="contact-label"></asp:Label>
            <asp:TextBox ID="txtMessage" runat="server" TextMode="MultiLine" Rows="4" CssClass="contact-input"></asp:TextBox>
            <asp:RequiredFieldValidator ID="rfvMessage" runat="server" 
                ControlToValidate="txtMessage" ErrorMessage="Message is required." 
                CssClass="validation-error" ForeColor="#FF3300" />

            <asp:Button ID="btnSubmit" runat="server" Text="Send Message" CssClass="contact-button"/>
        </div>
    </div>

    <!-- Map Section -->
    <div class="map-container">
        <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d58772.37661108545!2d72.89832463429048!3d22.55612308054471!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x395e59e68f31ab5b%3A0x6eeb1e7f712bd8f7!2sAnand%2C%20Gujarat%2C%20India!5e0!3m2!1sen!2sus!4v1688674093891!5m2!1sen!2sus" allowfullscreen="" loading="lazy"></iframe>
    </div>
</asp:Content>
