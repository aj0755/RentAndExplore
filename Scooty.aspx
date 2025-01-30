<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Scooty.aspx.cs" Inherits="Touring" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <section id="vehicles-bikes" class="vehicles-section-bikes">
            <h2 class="vehicles-title-bikes">Scooty</h2>
            <div class="vehicles-grid-bikes">
             <div class="vehicles-card-bikes">
                    <img  src="Images/scooty1.jpg"  alt="scooty1">
                    <h3>Honda Activa</h3>
                    <p>Comfartable to drive</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-bikes">
                    <img src="Images/scooty2.jpg"  alt="scooty2">
                    <h3> Honda Dio</h3>
                    <p>Comfart and easy to drive</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                
                <!-- Additional Bikes -->
            </div>
        </section>
</asp:Content>

