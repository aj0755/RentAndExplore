<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Bike.aspx.cs" Inherits="Bike" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="vehicles-bikes" class="vehicles-section-bikes">
            <h2 class="vehicles-title-bikes">Bike</h2>
            <div class="vehicles-grid-bikes">
             <div class="vehicles-card-bikes">
                    <img src="Images/bike1.jpg"  alt="Bike1">
                    <h3>Hero Splender</h3>
                    <p>Comfartable to drive</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-bikes">
                    <img  src="Images/bike2.jpg" alt="bike2">
                    <h3> Hero Passion Pro</h3>
                    <p>Comfart and easy to drive</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                
                <!-- Additional Bikes -->
            </div>
        </section>
         <div class="back-button-container">
        <button onclick="goBack()" class="back-button">Back</button>
        </div>
        <script>
            function goBack() {
                window.history.back();
            }
</script>
</asp:Content>

