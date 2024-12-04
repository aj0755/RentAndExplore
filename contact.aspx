<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contact.aspx.cs" Inherits="contact" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="contact">
    <div class="contact-container">
      <h1>Contact Us</h1>
      <p>If you have any questions or need assistance, feel free to reach out to us. We're here to help!</p>

      <div class="contact-details">
        <div class="detail">
          <h3>Address</h3>
          <p>123 RentalRide Lane,<br> City Center, ABC 12345</p>
        </div>
        <div class="detail">
          <h3>Email</h3>
          <p><a href="mailto:support@rentalride.com">support@rentalride.com</a></p>
        </div>
        <div class="detail">
          <h3>Phone</h3>
          <p><a href="tel:+1234567890">+1 234 567 890</a></p>
        </div>
      </div>

      <form action="#" method="POST" class="contact-form">
        <div class="form-group">
          <label for="name">Name</label>
          <input type="text" id="name" name="name" placeholder="Your Name" required>
        </div>
        <div class="form-group">
          <label for="email">Email</label>
          <input type="email" id="email" name="email" placeholder="Your Email" required>
        </div>
        <div class="form-group">
          <label for="message">Message</label>
          <textarea id="message" name="message" placeholder="Your Message" rows="5" required></textarea>
        </div>
        <button type="submit" class="btn contact-btn">Send Message</button>
      </form>
    </div>
  </section>
</asp:Content>

