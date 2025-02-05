<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="booking.aspx.cs" Inherits="booking" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
   <div class="product-detail-page">
    <!-- Hero Section -->
    <section class="product-hero">
        <asp:Image ID="Vehicleimg" runat="server" CssClass="product-image" Height="315px" Width="631px" />
        <h1 class="product-title"><asp:Label ID="lblVehicleTitle" runat="server" Text="Luxury Sedan"></asp:Label></h1>
        <%--<p class="product-highlight"><i class="fas fa-star"></i> Comfortable, Spacious, and Perfect for Long Drives</p>--%>
    </section>

    <!-- Details Section -->
    <section class="product-details">
        <h2><i class="fas fa-info-circle"></i> Vehicle Details</h2>
        <p><strong>Make:</strong> <asp:Label ID="lblMake" runat="server" Text="Toyota"></asp:Label></p>
        <p><strong>Model:</strong> <asp:Label ID="lblModel" runat="server" Text="Camry"></asp:Label></p>
        <p><strong>Fuel Type:</strong> <asp:Label ID="lblFuelType" runat="server" Text="Petrol"></asp:Label></p>
        <p><strong>Mileage:</strong> <asp:Label ID="lblMileage" runat="server" Text="15 km/l"></asp:Label></p>
        <p><strong>Seating Capacity:</strong> <asp:Label ID="lblSeating" runat="server" Text="5"></asp:Label></p>
        <p><strong>Transmission:</strong> <asp:Label ID="lblTransmission" runat="server" Text="Automatic"></asp:Label></p>
    </section>

    <!-- Pricing and Booking -->
    <section class="product-pricing">
        <h2><i class="fas fa-tag"></i> Pricing</h2>
        <p><strong>Price:</strong> <asp:Label ID="lblPrice" runat="server" Text="$50/day"></asp:Label></p>

        <h2><i class="fas fa-calendar-alt"></i> Book This Vehicle</h2>

        <asp:Label ID="lblStartDate" runat="server" Text="Start Date:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtStartDate" runat="server" CssClass="date-input-box" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvStartDate" runat="server"
            ControlToValidate="txtStartDate" ErrorMessage="Start Date is required!"
            CssClass="error-message" Display="Dynamic" ForeColor="Red" />

        <asp:Label ID="lblEndDate" runat="server" Text="End Date:" CssClass="form-label"></asp:Label>
        <asp:TextBox ID="txtEndDate" runat="server" CssClass="date-input-box" TextMode="Date"></asp:TextBox>
        <asp:RequiredFieldValidator ID="rfvEndDate" runat="server"
            ControlToValidate="txtEndDate" ErrorMessage="End Date is required!"
            CssClass="error-message" Display="Dynamic" ForeColor="Red" />

        <asp:Button ID="btnBookVehicle" runat="server" Text="Book Now" CssClass="button" OnClick="btnBookVehicle_Click" />

        <br />
    </section>

    <!-- Success/Error Message -->
    <asp:Label ID="lblMessage" runat="server" CssClass="message-label"></asp:Label>

    <!-- Back Button -->
    <div class="back-button-container">
        <asp:Button ID="btnBack" runat="server" Text="Back" CssClass="back-button" OnClientClick="goBack(); return false;" />
    </div>

    <script>
        function goBack() {
            window.history.back();
        }
    </script>
</div>
</asp:Content>

