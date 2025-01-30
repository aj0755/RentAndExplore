<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="privacypolicy.aspx.cs" Inherits="Content_privacypolicy" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="policy-header">
            <asp:Label ID="lblHeaderTitle" runat="server" Text="Terms & Conditions and Privacy Policy" CssClass="header-title"></asp:Label>
            <asp:Label ID="lblHeaderSubtitle" runat="server" Text="Know how we protect your information and outline our rules for service." CssClass="header-subtitle"></asp:Label>
        </div>

        <!-- Content Wrapper -->
        <div class="policy-content">
            <!-- Terms and Conditions Section -->
            <asp:Panel ID="pnlTerms" runat="server" CssClass="content-section">
                <asp:Label ID="lblTermsTitle" runat="server" Text="Terms and Conditions" CssClass="section-title"></asp:Label>
                <asp:Label ID="lblTermsContent" runat="server" 
                    Text="By using Rent and Explore's services, you agree to abide by the following terms and conditions:
                          <ul>
                            <li>You must provide accurate and complete information during the booking process.</li>
                            <li>All vehicles must be returned in the same condition as provided.</li>
                            <li>Late returns may incur additional charges.</li>
                            <li>Our services are subject to availability and applicable local laws.</li>
                          </ul>" 
                    CssClass="section-content">
                </asp:Label>
            </asp:Panel>

            <!-- Privacy Policy Section -->
            <asp:Panel ID="pnlPrivacy" runat="server" CssClass="content-section">
                <asp:Label ID="lblPrivacyTitle" runat="server" Text="Privacy Policy" CssClass="section-title"></asp:Label>
                <asp:Label ID="lblPrivacyContent" runat="server" 
                    Text="Your privacy matters to us. At Rent and Explore, we collect and use your information responsibly. Here's what you need to know:
                          <ul>
                            <li>We collect data such as name, email, phone number, and payment details.</li>
                            <li>Your data is used for processing bookings, customer support, and service improvement.</li>
                            <li>We employ industry-standard security measures to protect your data.</li>
                            <li>Your data will never be shared without your explicit consent.</li>
                          </ul>" 
                    CssClass="section-content">
                </asp:Label>
            </asp:Panel>

            <!-- Call-to-Action Section -->
            <asp:Panel ID="pnlCTA" runat="server" CssClass="cta-section">
                <asp:Label ID="lblCTATitle" runat="server" Text="Still Have Questions?" CssClass="cta-title"></asp:Label>
                <asp:HyperLink ID="hlContactUs" runat="server" NavigateUrl="contactUs.aspx" CssClass="cta-button">Contact Us</asp:HyperLink>
            </asp:Panel>
        </div>
</asp:Content>

