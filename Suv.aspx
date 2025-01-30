<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Suv.aspx.cs" Inherits="Suv" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section id="vehicles-cars" class="vehicles-section-cars">
            <h2 class="vehicles-title-cars">SUV</h2>
            <div class="vehicles-grid-cars">
            <div class="vehicles-card-cars">
                    <img src="Images/suv1.jpg" alt="Suv1">
                    <h3>Toyota Fortuner</h3>
                    <p>Compact and easy to drive</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-cars">
                    <img   src="Images/suv2.jpg" alt="Suv2">
                    <h3> Mahandra XUV 700</h3>
                    <p>Comfortable and stylish</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <div class="vehicles-card-cars">
                    <img  src="Images/suv3.jpg"   alt="Suv3">
                    <h3>Kia Seltos</h3>
                    <p>Spacious and powerful</p>
                    <button><a href="booking.aspx">View Details</a></button>
                </div>
                <!-- Additional Cars -->
            </div>
        </section>
</asp:Content>

