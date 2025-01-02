<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="contactUs.aspx.cs" Inherits="contactUs" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<h5>Contact us</h5>
        <div class="contact-section">
            <!-- Contact Details -->
            <div class="contact-details">
                <h2>If you need any info, please contact us!</h2>
                <p><strong>Head Office Address:</strong><br> 123 Main Street, City, Country</p>
                <p><strong>Email:</strong> <a href="mailto:info@rentandexplore.com">info@rentandexplore.com</a></p>
                <p><strong>Phone:</strong> <a href="tel:+123456789">+1 234 567 89</a></p>
            </div>

            <!-- Contact Form -->
            <div class="contact-form">
                <h2>If any queries feel free to contact us</h2>
                <form>
                    <label for="name">Name</label>
                    <input type="text" id="name" name="name" placeholder="Your Name" required>

                    <label for="email">Email</label>
                    <input type="email" id="email" name="email" placeholder="Your Email" required>

                    <label for="phone">Phone</label>
                    <input type="tel" id="phone" name="phone" placeholder="Your Phone Number" required>

                    <label for="subject">Subject</label>
                    <input type="text" id="subject" name="subject" placeholder="Subject" required>

                    <label for="message">Message</label>
                    <textarea id="message" name="message" rows="4" placeholder="Your Message"></textarea>

                    <button type="submit">Send Message</button>
                </form>
            </div>
        </div>

        <!-- Map Section -->
        <div class="map-container">
            <iframe src="https://www.google.com/maps/embed?pb=!1m18!1m12!1m3!1d3153.8354345091677!2d-122.40641708468169!3d37.78583417975652!2m3!1f0!2f0!3f0!3m2!1i1024!2i768!4f13.1!3m3!1m2!1s0x8085808c1f8e3b81%3A0x7d3ce9a2ab2c0e57!2sGoogleplex!5e0!3m2!1sen!2sus!4v1688674093891!5m2!1sen!2sus" allowfullscreen="" loading="lazy"></iframe>
        </div>
</asp:Content>

