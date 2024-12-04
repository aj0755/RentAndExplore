<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="vehicle.aspx.cs" Inherits="vehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<section class="vehicle-search">
    <h1>Available Vehicles</h1>
    <form class="search-form">
      <input type="text" placeholder="Search vehicles..." class="search-input">
      <select class="filter">
        <option value="all">All</option>
        <option value="cars">Cars</option>
        <option value="bikes">Bikes</option>
        <option value="trucks">Trucks</option>
      </select>
      <button type="submit" class="btn">Search</button>
    </form>
  </section>

  <section class="vehicle-list">
    <div class="vehicle-card">
      <img src="Images/camryCar.jpeg" alt="Car">
      <h3>Sedan - Toyota Camry</h3>
      <p>Comfortable and stylish sedan. ₹240/hr</p>
      <button class="btn">Rent Now</button>
    </div>
    <div class="vehicle-card">
      <img src="Images/YR1.jpeg" alt="Bike">
      <h3>Sports Bike - Yamaha R1</h3>
      <p>Fast and sleek sports bike. ₹150/hr</p>
      <button class="btn">Rent Now</button>
    </div>
    <div class="vehicle-card">
      <img src="Images/FordF-150.jpg" alt="Truck">
      <h3>Truck - Ford F-150</h3>
      <p>Heavy-duty truck for transport. ₹600/hr</p>
      <button class="btn">Rent Now</button>
    </div>
    <div class="vehicle-card">
      <img src="Images/HondaCRV.jpeg" alt="Car">
      <h3>SUV - Honda CR-V</h3>
      <p>Spacious and reliable SUV. ₹250/hr</p>
      <button class="btn">Rent Now</button>
    </div>
    <div class="vehicle-card">
      <img src="Images/HondaActiva.jpg" alt="Bike">
      <h3>City Bike - Honda Activa</h3>
      <p>Economical and easy to ride. ₹100/hr</p>
      <button class="btn">Rent Now</button>
    </div>
  </section>
    </div>
</asp:Content>

