<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Scooty.aspx.cs" Inherits="Touring" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <div class="product-container">
    <asp:Repeater ID="RepeaterProducts" runat="server" 
           onitemcommand="RepeaterProducts_ItemCommand">
        <ItemTemplate>
            <div class="product-card">
                <!-- Directly binding image path -->
                <img id="Img1" class="product-image" 
                     src='<%# Eval("Images") %>' 
                     alt='<%# Eval("Name") %>' 
                     runat="server" />

                <!-- Product Details -->
                <h3><%# Eval("Name") %></h3>
                <p>Price: $<%# Eval("RatePerDay") %></p>
                <p>Brand: <%# Eval("Brand") %></p>

                <asp:Button ID="btnViewDetails" runat="server" Text="View Details" CssClass="view-details-btn" 
                            CommandArgument='<%# Eval("Name") %>' CommandName="StoreVehicle" />
            </div>
        </ItemTemplate>
    </asp:Repeater>
</div>

        <div class="back-button-container">
        <button onclick="goBack()" class="back-button">Back</button>
        </div>
        <script>
            function goBack() {
                window.history.back();
            }
</script>
</asp:Content>

