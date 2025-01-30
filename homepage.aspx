<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true"
    CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" runat="Server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" runat="Server">
    <!--<div class="container">--%>
            <!-- Hero Section -->
    <section class="hero">
                <img src="Images/hero.jpeg" alt="Hero Image"/>
                <div class="hero-overlay">
            <h1>Explore the Road with Ease</h1>
            <form class="date-selector">
                <label for="vehicle-category">Select Vehicle Category:</label>
                <select id="vehicle-category">
                    <option value="cars">Cars</option>
                    <option value="bikes">Bikes</option>
                    <option value="heavy-machinery">Heavy Machinery</option>
                </select>
                <label for="rental-date">Select Your Rental Dates:</label>
                <input type="date" id="rental-date-start" placeholder="Start Date">
                <input type="date" id="rental-date-end" placeholder="End Date">
                <button type="submit">Search</button>
            </form>
        </div>
    </section>
    <div class="container">
        <!-- Brands Section -->
        <section id="brands" class="brands">
                <h2>Our Trusted Brands</h2>
                <div class="brand-logos">
                    <img src="Logo/maruti.jpg" alt="Tata"/>
                    <img src="Logo/tata.jpg" alt="Maruti"/>
                    <img src="Logo/toyota.jpg" alt="Toyota"/>
                    <img src="Logo/honda.jpg" alt="Honda"/>
                    <img src="Logo/hyundai.jpg" alt="Hyundai"/>
                </div>
            </section>
        <!-- About Us Section -->
        <section class="about-section">
                <h2>Who We Are</h2>
                <p>At Rent And Explore, we are committed to making your journeys unforgettable. With years of experience in the vehicle rental industry, we offer a wide range of cars, bikes, and trucks tailored to meet your travel and transport needs. Whether it’s a short weekend getaway or a long-term rental, we’ve got you covered.</p>
            </section>
        <!-- Most Rented Vehicles Section -->
        <section id="most-rented" class="most-rented">
                <h2>Most Rented Vehicles</h2>
                <div class="vehicles-list">
                    <div class="vehicle-item">
                        <img src="Images/LuxSedan.jpg" />
                        <h3>Luxury Sedan</h3>
                        <p>Perfect for city and highway drives with premium comfort.</p>
                        <button><a href="Sedan.aspx">Rent Now</a></button>
                    </div>
                    <div class="vehicle-item">
                        <img src="Images/SportsBike.jpg" />
                        <h3>Sports Bike</h3>
                        <p>Fast and stylish bike for adrenaline-packed rides.</p>
                        <button><a href="SportBike.aspx">Rent Now</a></button>
                    </div>
                    <div class="vehicle-item">
                        <img src="Images/putruck.jpg" />
                        <h3>Pickup Truck</h3>
                        <p>Ideal for transporting goods and heavy loads efficiently.</p>
                        <button><a href="Truck.aspx">Rent Now</a></button>
                    </div>
                </div>
            </section>
        <!-- Vehicles Section -->
        <section id="vehicles" class="vehicles">
                <h2>Our Fleet</h2>
                <div class="vehicle-cards">
                    <div class="vehicle-card">
                        <img src="Images/hondaAmaze.jpg" alt="Cars"/>
                        <h3>Cars</h3>
                        <p>Comfortable cars for city and long drives.</p>
                    </div>
                    <div class="vehicle-card">
                        <img src="Images/appache.jpg" alt="Bikes"/>
                        <h3>Bikes</h3>
                        <p>Fast and efficient bikes for quick trips.</p>
                    </div>
                    <div class="vehicle-card">
                        <img src="Images/truck.jpg" alt="Trucks"/>
                        <h3>Trucks</h3>
                        <p>Heavy-duty trucks for your transport needs.</p>
                    </div>
                </div>
            </section>
        <!-- Mission and Vision Section -->
        <section id="mission-vision" class="mission-vision">
                <h2>Our Mission & Vision</h2>
                <div class="mission-vision-cards">
                    <div class="mission-vision-card">
                        <p><strong>Mission:</strong> To provide world-class vehicle rental services tailored to individual and business needs, ensuring safety, comfort, and satisfaction.</p>
                    </div>
                    <div class="mission-vision-card">
                        <p><strong>Vision:</strong> To become the global leader in vehicle rental services, renowned for our innovation, customer-centric approach, and environmental sustainability.</p>
                    </div>
                </div>
            </section>
        <!-- Testimonials Section -->
        <section id="testimonials" class="testimonials">
                <h2>What Our Customers Say</h2>
                <div class="testimonials-list">
                    <div class="card">
                        <p>"Rent And Explore made our family vacation hassle-free with their reliable cars and excellent service!"</p>
                        <p><strong>- John Doe</strong></p>
                    </div>
                    <div class="card">
                        <p>"Their trucks were perfect for our business deliveries. Highly recommend them!"</p>
                        <p><strong>- Jane Smith</strong></p>
                    </div>
                    <div class="card">
                        <p>"I needed a bike for a quick city commute, and Rent And Explore exceeded my expectations."</p>
                        <p><strong>- Maria Lopez</strong></p>
                    </div>
                </div>
            </section>
        <!-- FAQ Section -->
        <section id="faq" class="faq">
                <h2>FAQs</h2>
                <div class="faq-list">
                    <div class="faq-item">
                        <strong>Where can I hire a car and driver?</strong>
                        <p>We offer chauffeured vehicles and related services throughout India, Sri Lanka, Nepal, and Mauritius.</p>
                    </div>
                    <div class="faq-item">
                        <strong>Are there any mileage limits?</strong>
                        <p>Within the cities in your itinerary, there are no mileage limits. Itineraries are not required in Mauritius or Goa.</p>
                    </div>
                    <div class="faq-item">
                        <strong>For how long can I hire a car and driver?</strong>
                        <p>We accommodate everything from airport transfers to multi-week rentals.</p>
                    </div>
                    <div class="faq-item">
                        <strong>Are any common charges excluded?</strong>
                        <p>No, our quotes include parking, tolls, and driver expenses. There are no nighttime or waiting charges.</p>
                    </div>
                    <div class="faq-item">
                        <strong>For how many hours is a driver on duty?</strong>
                        <p>Up to eight hours when driving locally and 12 hours outstation. Additional hours will typically incur fees.</p>
                    </div>
                    <div class="faq-item">
                        <strong>What if I need to cancel my reservation?</strong>
                        <p>You will be refunded in full so long as you cancel at least 24 hours before your pickup time.</p>
                    </div>
                </div>
            </section>
    </div>
    <script>
        // Check if the query string contains login=success
        const urlParams = new URLSearchParams(window.location.search);
        if (urlParams.get('login') === 'success') {
        alertify.set('notifier', 'position', 'top-right');
            alertify.success('You are successfully logged in!');
            const newURL = window.location.href.split('?')[0];
        window.history.replaceState({}, document.title, newURL);
        }
    </script>
</asp:Content>
