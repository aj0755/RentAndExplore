<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="SportBike.aspx.cs" Inherits="SportBike" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="vehicles-bikes" class="vehicles-section-bikes">
            <h2 class="vehicles-title-bikes">Sport Bike</h2>
            <div class="vehicles-grid-bikes">
             <div class="vehicles-card-bikes">
                    <img  src="Images/Sportbike1.jpg"  alt="Sportbike1">
                    <h3>Bajaj Pulser 200</h3>
                    <p>Comfartable to drive</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-bikes">
                    <img src="Images/Sportbike2.jpg"  alt="Sportbike2">
                    <h3> Tvs Apache RTR</h3>
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

