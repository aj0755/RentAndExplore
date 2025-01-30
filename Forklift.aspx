<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Forklift.aspx.cs" Inherits="Forklift" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="vehicles-machinery" class="vehicles-section-machinery">
            <h2 class="vehicles-title-machinery">Forklift</h2>
            <div class="vehicles-grid-machinery">
             <div class="vehicles-card-machinery">
                    <img   src="Images/Forklift.jpg"  alt="Forklift1">
                    <h3> Cat</h3>
                    <p>Heavy-duty commercial Machine</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-machinery">
                 <img src="Images/forklift1.jpg"   alt="Forklift2">
                    <h3>Heli Forklift</h3>
                    <p>Commercial lifting Machine</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                
                <!-- Additional Machinery -->
            </div>
        </section>
</asp:Content>

