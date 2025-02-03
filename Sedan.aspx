<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Sedan.aspx.cs" Inherits="Sedan" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="vehicles-cars" class="vehicles-section-cars">
            <h2 class="vehicles-title-cars">Sedan</h2>
            <div class="vehicles-grid-cars">
            <div class="vehicles-card-cars">
                    <img src="Images/sedan1.jpg" alt="sedan1">
                    <h3>BMW M8</h3>
                    <p>Comfert and easy to drive</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-cars">
                    <img src="Images/sedan2.jpg " alt="sedan2">
                    <h3>hyundai Verna</h3>
                    <p>Comfortable and stylish</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-cars">
                    <img src="Images/sedan3.jpg"  alt="sedan3">
                    <h3>Volkswagan Virtus</h3>
                    <p>Spacious and powerful</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <!-- Additional Cars -->
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

