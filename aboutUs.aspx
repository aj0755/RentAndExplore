<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="aboutUs.aspx.cs" Inherits="aboutUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
 <!-- About Us Page Content -->
      <h5>About Us</h5>
        <section class="about-section">
            <h2>Who We Are</h2>
            <p>At Rent And Explore, we are committed to making your journeys unforgettable. With years of experience in the vehicle rental industry, we offer a wide range of cars, bikes, and trucks tailored to meet your travel and transport needs. Whether it’s a short weekend getaway or a long-term rental, we’ve got you covered.</p>
        </section>

        <h2 class="section-heading">Our Mission and Vision</h2>
        <div class="cards-container">
            <div class="card">
                <h2>Our Mission</h2>
                <p>To provide seamless, affordable, and reliable vehicle rental services that empower people to explore the world with ease and confidence.</p>
            </div>

            <div class="card">
                <h2>Our Vision</h2>
                <p>To be the global leader in vehicle rental services, known for innovation, sustainability, and a customer-first approach.</p>
            </div>
        </div>

        <h2 class="section-heading">Why Choose Us?</h2>
        <div class="about-section">
            <p>We offer affordable pricing, a wide range of vehicles, transparent rental policies, and 24/7 customer support. Our goal is to make your journey seamless and enjoyable.</p>
        </div>

        <h2 class="section-heading">What Our Customers Say</h2>
        <div class="testimonials-container">
            <div class="testimonial">
                <p>"Rent And Explore made my vacation stress-free! The car was clean, and the booking process was effortless."</p>
                <span>- Sarah J.</span>
            </div>
            <div class="testimonial">
                <p>"Great service and affordable rates. The bike I rented was in excellent condition."</p>
                <span>- Rajesh K.</span>
            </div>
            <div class="testimonial">
                <p>"I needed a truck for moving, and Rent And Explore was a lifesaver. Highly recommended!"</p>
                <span>- Maria L.</span>
            </div>
        </div>

        <!-- Call to Action Section -->
        <section class="dynamic-section">
            <h2>Ready to Explore?</h2>
            <a href="vehicle.aspx">Check Out Our Fleet</a>
        </section>
</asp:Content>

