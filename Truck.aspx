<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Truck.aspx.cs" Inherits="Truck" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="vehicles-machinery" class="vehicles-section-machinery">
            <h2 class="vehicles-title-machinery">Truck</h2>
            <div class="vehicles-grid-machinery">
             <div class="vehicles-card-machinery">
                    <img  src="Images/truck1.jpg" alt="Truck1">
                    <h3> Tata</h3>
                    <p>Heavy-duty commercial truck</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-machinery">
                 <img src="Images/truck2.jpg"   alt="truck2">
                    <h3>Ashok leyland</h3>
                    <p>Commercial truck</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                
                <!-- Additional Machinery -->
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

