<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="homepage.aspx.cs" Inherits="homepage" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <%--Hero section--%>
   <section class="hero">
    <div class="hero-content">
      <h1>Find Your Perfect Ride</h1>
      <p>Affordable and reliable vehicle rentals for all your needs.</p>
      <button class="btn">Explore Vehicles</button>
    </div>
  </section>
  <section class="about">
    <div class="about-content">
      <h1>About Us</h1>
      <p>At <strong>RentalRide</strong>, we strive to provide affordable and reliable vehicle rentals tailored to meet your needs. With a wide range of cars, bikes, and trucks, we’ve been helping customers travel in comfort and style since 2015.</p>
    </div>
  </section>
   <section class="categories">
    <h2>Vehicle Categories</h2>
    <div class="category-cards">
      <div class="card">
        <img src="Images/car3.jpg" alt="Car">
        <h3>Cars</h3>
        <p>Comfortable cars for city and long drives.</p>
      </div>
      <div class="card">
        <img src="Images/bike3.jpg" alt="Bike">
        <h3>Bikes</h3>
        <p>Fast and efficient bikes for quick trips.</p>
      </div>
      <div class="card">
        <img src="Images/truck2.jpg" alt="Truck">
        <h3>Trucks</h3>
        <p>Heavy-duty trucks for your transport needs.</p>
      </div>
    </div>
  </section>

  <section class="mission-vision">
    <div class="mission">
      <h2>Our Mission</h2>
      <p>To make transportation easy, affordable, and accessible for everyone, providing a seamless rental experience backed by exceptional customer service.</p>
    </div>
    <div class="vision">
      <h2>Our Vision</h2>
      <p>To be the leading vehicle rental service globally, known for our innovation, sustainability, and customer-centric approach.</p>
    </div>
  </section>

  <section class="testimonials">
    <h2>What Our Customers Say</h2>
    <div class="testimonial-cards">
      <div class="testimonial-card">
        <p>"RentalRide made my vacation stress-free! The car was clean, and the booking process was effortless."</p>
        <h4>- Sarah J.</h4>
      </div>
      <div class="testimonial-card">
        <p>"Great service and affordable rates. The bike I rented was in excellent condition."</p>
        <h4>- Rajesh K.</h4>
      </div>
      <div class="testimonial-card">
        <p>"I needed a truck for moving, and RentalRide was a lifesaver. Highly recommended!"</p>
        <h4>- Maria L.</h4>
      </div>
    </div>
  </section>
 
</asp:Content>

