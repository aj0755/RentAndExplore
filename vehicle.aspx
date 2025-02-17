﻿<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vehicle.aspx.cs" Inherits="Content_vehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1><Center>Explore Our Vehicles</Center></h1>

  

        <!-- Cars Section -->
        <section id="vehicles-cars" class="vehicles-section-cars">
            <h2 class="vehicles-title-cars">Cars</h2>
            <div class="vehicles-grid-cars">
            <div class="vehicles-card-cars">
                    <img src="Images/hatchback.jpg"  alt="Car 1">
                    <h3>Hatchback</h3>
                    <p>Compact and easy to drive</p>
                  <asp:Button ID="Button1" runat="server" Text="View Details" CssClass="vehicles-card-cars button"></asp:Button>
                  
                </div>
                <div class="vehicles-card-cars">
                    <img src="Images/seden.jpg" alt="Car 1">
                    <h3>Sedan</h3>
                    <p>Comfortable and stylish</p>
              <asp:Button ID="Button2" runat="server" Text="View Details" CssClass="vehicles-card-cars button"></asp:Button>
                </div>
                <div class="vehicles-card-cars">
                    <img src="Images/suv.jpg"  alt="Car 2">
                    <h3>SUV</h3>
                    <p>Spacious and powerful</p>
                    <asp:Button ID="Button3" runat="server" Text="View Details" CssClass="vehicles-card-cars button"></asp:Button>
                </div>
                <!-- Additional Cars -->
            </div>
        </section>

        <!-- Bikes Section -->
        <section id="vehicles-bikes" class="vehicles-section-bikes">
            <h2 class="vehicles-title-bikes">Two Wheeler</h2>
            <div class="vehicles-grid-bikes">
             <div class="vehicles-card-bikes">
                    <img src="Images/Scooty.jpg"  alt="Scooty">
                    <h3>Scooty</h3>
                    <p>Comfartable and Easy to drive</p>
                 <asp:Button ID="Button4" runat="server" Text="View Details" CssClass="vehicles-card-cars button"></asp:Button>
                </div>
                <div class="vehicles-card-bikes">
                    <img  src="Images/Sportbike2.jpg" alt="Sportbike1">
                    <h3>Sport Bike</h3>
                    <p>High-speed thrill</p>
                   <asp:Button ID="Button5" runat="server" Text="View Details" CssClass="vehicles-card-cars button"></asp:Button>
                </div>
                <div class="vehicles-card-bikes">
                    <img   src="Images/bike1.jpg" alt="Bike1">
                    <h3>Bike</h3>
                    <p>Comfortable long rides</p>
               <asp:Button ID="Button6" runat="server" Text="View Details" CssClass="vehicles-card-cars button"></asp:Button>
                </div>
                <!-- Additional Bikes -->
            </div>
        </section>

        <!-- Heavy Machinery Section -->
        <section id="vehicles-machinery" class="vehicles-section-machinery">
            <h2 class="vehicles-title-machinery">Heavy Machinery</h2>
            <div class="vehicles-grid-machinery">
             <div class="vehicles-card-machinery">
                    <img src="Images/dumper.jpg" alt="Machine 1">
                    <h3>Truck</h3>
                    <p>Heavy-duty commercial truck</p>
                 <asp:Button ID="Button7" runat="server" Text="View Details" CssClass="vehicles-card-cars button"></asp:Button>
                </div>
                <div class="vehicles-card-machinery">
                    <img src="Images/Forklift.jpg" alt="Machine 1">
                    <h3>Forklift</h3>
                    <p>Efficient material handling</p>
                <asp:Button ID="Button8" runat="server" Text="View Details" CssClass="vehicles-card-cars button"></asp:Button>
                </div>
                <div class="vehicles-card-machinery">
                    <img src="Images/Excavator.jpg" alt="Machine 2">
                    <h3>Excavator</h3>
                    <p>Heavy-duty excavation</p>
             <asp:Button ID="Button9" runat="server" Text="View Details" CssClass="vehicles-card-cars button"></asp:Button>
                </div>
                <!-- Additional Machinery -->
            </div>
        </section>
       
        
    </div>
</asp:Content>

