<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vehicle.aspx.cs" Inherits="Content_vehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h1><Center>Explore Our Vehicles</Center></h1>

    <div class="vehicles-container">
        <!-- Category Tabs -->
        <div class="vehicles-tabs">
            <button onclick="scrollToSection('vehicles-cars')">Cars</button>
            <button onclick="scrollToSection('vehicles-bikes')">Bikes</button>
            <button onclick="scrollToSection('vehicles-machinery')">Heavy Machinery</button>
        </div>

        <!-- Cars Section -->
        <section id="vehicles-cars" class="vehicles-section-cars">
            <h2 class="vehicles-title-cars">Cars</h2>
            <div class="vehicles-grid-cars">
                <div class="vehicles-card-cars">
                    <img src="car1.jpg" alt="Car 1">
                    <h3>Sedan</h3>
                    <p>Comfortable and stylish</p>
                    <button>View Details</button>
                </div>
                <div class="vehicles-card-cars">
                    <img src="car2.jpg" alt="Car 2">
                    <h3>SUV</h3>
                    <p>Spacious and powerful</p>
                    <button>View Details</button>
                </div>
                <!-- Additional Cars -->
            </div>
        </section>

        <!-- Bikes Section -->
        <section id="vehicles-bikes" class="vehicles-section-bikes">
            <h2 class="vehicles-title-bikes">Bikes</h2>
            <div class="vehicles-grid-bikes">
                <div class="vehicles-card-bikes">
                    <img src="bike1.jpg" alt="Bike 1">
                    <h3>Sports Bike</h3>
                    <p>High-speed thrill</p>
                    <button>View Details</button>
                </div>
                <div class="vehicles-card-bikes">
                    <img src="bike2.jpg" alt="Bike 2">
                    <h3>Cruiser</h3>
                    <p>Comfortable long rides</p>
                    <button>View Details</button>
                </div>
                <!-- Additional Bikes -->
            </div>
        </section>

        <!-- Heavy Machinery Section -->
        <section id="vehicles-machinery" class="vehicles-section-machinery">
            <h2 class="vehicles-title-machinery">Heavy Machinery</h2>
            <div class="vehicles-grid-machinery">
                <div class="vehicles-card-machinery">
                    <img src="machine1.jpg" alt="Machine 1">
                    <h3>Forklift</h3>
                    <p>Efficient material handling</p>
                    <button>View Details</button>
                </div>
                <div class="vehicles-card-machinery">
                    <img src="machine2.jpg" alt="Machine 2">
                    <h3>Excavator</h3>
                    <p>Heavy-duty excavation</p>
                    <button>View Details</button>
                </div>
                <!-- Additional Machinery -->
            </div>
        </section>
    </div>
</asp:Content>

