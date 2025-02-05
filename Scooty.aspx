<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Scooty.aspx.cs" Inherits="Touring" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <%--<section id="vehicles-bikes" class="vehicles-section-bikes">
            <h2 class="vehicles-title-bikes">Scooty</h2>
            <div class="vehicles-grid-bikes">
             <div class="vehicles-card-bikes">
                    <img  src="Images/scooty1.jpg"  alt="scooty1">
                    <h3>Honda Activa</h3>
                    <p>Comfartable to drive</p>
                    <asp:Button ID="Activa" runat="server" Text="View Details" 
                        CssClass="vehicles-card-bikes-btn" onclick="Activa_Click"/>
                </div>
                <div class="vehicles-card-bikes">
                    <img src="Images/scooty2.jpg"  alt="scooty2">
                    <h3> Honda Dio</h3>
                    <p>Comfart and easy to drive</p>
                    <asp:Button ID="Dio" runat="server" Text="View Details" 
                        CssClass="vehicles-card-bikes-btn" onclick="Dio_Click"/>
                </div>
                
                <!-- Additional Bikes -->
            </div>
        </section>--%>
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

