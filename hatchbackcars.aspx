    <%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="hatchbackcars.aspx.cs" Inherits="hatchbackcars" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="vehicles-cars" class="vehicles-section-cars">
            <h2 class="vehicles-title-cars">Hatchbackcars</h2>
            <div class="vehicles-grid-cars">
            <div class="vehicles-card-cars">
                    <img src="Images/hatchback1.jpg" alt="hatchback1">
                    <h3>i20 sportz</h3>
                    <p>Compact and easy to drive</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-cars">
                    <img src="Images/hatchback2.jpg"  alt="hatchback2">
                    <h3>Swift</h3>
                    <p>Comfortable and stylish</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-cars">
                    <img src="Images/hatchback3.jpg"  alt="hatchback3">
                    <h3>Kwid</h3>
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

