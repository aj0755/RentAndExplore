<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="excavator.aspx.cs" Inherits="excavator" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="vehicles-machinery" class="vehicles-section-machinery">
            <h2 class="vehicles-title-machinery">Excavator</h2>
            <div class="vehicles-grid-machinery">
             <div class="vehicles-card-machinery">
                    <img src="Images/Excavator.jpg"  alt="excavator1">
                    <h3> Cat 325</h3>
                    <p>Heavy-duty commercial Machine</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-machinery">
                 <img src="Images/excavator1.jpg"  alt="excavator2">
                    <h3>Sany 215</h3>
                    <p>Commercial  Machine</p>
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

