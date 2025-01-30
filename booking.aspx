<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <div class="product-detail-page">
    <!-- Hero Section -->
    
    <section class="product-hero">
        <img src="Images/car1.jpg" alt="Vehicle Image" class="product-image" />
        <h1 class="product-title">Luxury Sedan</h1>
        <p class="product-highlight">Comfortable, Spacious, and Perfect for Long Drives</p>
    </section>

    <!-- Details Section -->
    <section class="product-details">
        <h2>Vehicle Details</h2>
        <p><strong>Make:</strong> </p>
        <p><strong>Model:</strong> </p>
        <p><strong>Fuel Type:</strong> </p>
        <p><strong>Mileage:</strong> </p>
        <p><strong>Seating Capacity:</strong> </p>
        <p><strong>Transmission:</strong> </p>
    </section>

    <!-- Pricing and Booking -->
    <section class="product-pricing">
        <h2>Pricing</h2>
        <p><strong>Price:</strong> </p>

        <h2>Book This Vehicle</h2>
        <asp:Label ID="lblStartDate" runat="server" Text="Start Date:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtStartDate" runat="server" CssClass="date-input-box" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvStartDate" runat="server"
            ControlToValidate="txtStartDate" ErrorMessage="Start Date is required!"
            CssClass="error-message" />

        <asp:Label ID="lblEndDate" runat="server" Text="End Date:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtEndDate" runat="server" CssClass="date-input-box" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEndDate" runat="server"
            ControlToValidate="txtEndDate" ErrorMessage="End Date is required!"
            CssClass="error-message" />

            <asp:Button ID="btnBookVehicle" runat="server" Text="Book Now" CssClass="button" />

    </section>
</div>
</asp:Content>

