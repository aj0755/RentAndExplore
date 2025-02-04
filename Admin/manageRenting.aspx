<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="manageRenting.aspx.cs" Inherits="Admin_manageRenting" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="productcontainer">
        <div class="productheader">
            <h2>Manage Bookings</h2>
        </div>

        <!-- Search Panel -->
        <div class="search-panel">
            <h3>Search Bookings</h3>
            <asp:TextBox ID="txtSearch" runat="server" CssClass="input-text" placeholder="Search by Booking ID or Customer Name" />
            <asp:Button ID="btnSearch" runat="server" Text="Search" CssClass="btn-search"/>
            <asp:Label ID="lblMesage" runat="server"></asp:Label>
        </div>

        <!-- Booking Table -->
        <div class="table-container">
            <asp:GridView ID="gvBookings" runat="server" CssClass="product-table" AutoGenerateColumns="False" DataKeyNames="Booking_ID" DataSourceID="SqlDataSource1" >
                <Columns>
                    
                    <asp:BoundField DataField="Booking_ID" HeaderText="Booking_ID" 
                        SortExpression="Booking_ID" ReadOnly="True" />
                    <asp:BoundField DataField="User_ID" HeaderText="User_ID" 
                        SortExpression="User_ID" />
                    <asp:BoundField DataField="Vehicle_ID" HeaderText="Vehicle_ID" 
                        SortExpression="Vehicle_ID" />
                    <asp:BoundField DataField="StartDate" HeaderText="StartDate" 
                        SortExpression="StartDate" />
                    <asp:BoundField DataField="EndDate" HeaderText="EndDate" 
                        SortExpression="EndDate" />
                    <asp:BoundField DataField="TotalPrice" HeaderText="TotalPrice" 
                        SortExpression="TotalPrice" />
                    <asp:BoundField DataField="Status" HeaderText="Status" 
                        SortExpression="Status" />
                </Columns>
            </asp:GridView>
            <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                SelectCommand="SELECT * FROM [RAE_Booking]"></asp:SqlDataSource>
        </div>
    </div>
</asp:Content>

