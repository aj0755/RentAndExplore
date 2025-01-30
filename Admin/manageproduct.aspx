<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="manageproduct.aspx.cs" Inherits="Content_manageproduct" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="productcontainer">
            <!-- Header -->
            <div class="productheader">
                <h2>Add Product</h2>
            </div>

            <!-- Product Form -->
            <div class="product-form">
                <div class="form-group">
                    <label>Image</label>
                    <asp:FileUpload ID="fileUpload" runat="server" CssClass="file-upload" />
                </div>

                <div class="form-group">
                    <label>Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="input-text" placeholder="Enter Name"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Brand</label>
                    <asp:TextBox ID="txtNet" runat="server" CssClass="input-text" placeholder="Enter Brand"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Price</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="input-text" placeholder="Enter Price"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Year</label>
                    <asp:TextBox ID="txtFlavour" runat="server" CssClass="input-text" placeholder="Enter Year"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>FuelType</label>
                    <asp:TextBox ID="txtContains" runat="server" CssClass="input-text" placeholder="Petrol/Diesel"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Capacity</label>
                    <asp:TextBox ID="txtDescription" runat="server" CssClass="input-text" placeholder="Enter Capacity"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Transmission</label>
                    <asp:TextBox ID="TextBox1" runat="server" CssClass="input-text" placeholder="Enter Transmission"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Mileage</label>
                    <asp:TextBox ID="TextBox2" runat="server" CssClass="input-text" placeholder="Enter Mileage"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Capacity</label>
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="input-text" placeholder="Enter Capacity"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Status</label>
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="input-text" placeholder="Enter Status"></asp:TextBox>
                </div>
                <div class="form-group">
                    <label>Category</label>
                    <asp:DropDownList ID="ddlCategory" runat="server" CssClass="input-dropdown" 
                        AutoPostBack="True" DataSourceID="SqlDataSource2" DataTextField="CategoryName" 
                        DataValueField="CategoryName">
                        <asp:ListItem Text="-- Select Category --" Value="" />
                        <asp:ListItem Text="" Value="Cakes" />
                        <asp:ListItem Text="Pastries" Value="Pastries" />
                        <asp:ListItem Text="Cookies" Value="Cookies" />
                    </asp:DropDownList>
                    <asp:SqlDataSource ID="SqlDataSource2" runat="server" 
                        ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                        SelectCommand="SELECT [CategoryName] FROM [RAE_Category]">
                    </asp:SqlDataSource>
                </div>

                <div class="form-group">
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn-add" />
                </div>
            </div>

            <!-- Product Table -->
            <div class="table-container">
                <asp:GridView ID="gvProducts" runat="server" CssClass="product-table" 
                    AutoGenerateColumns="False" DataKeyNames="Vehicle_ID" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:BoundField DataField="Vehicle_ID" HeaderText="Vehicle_ID" ReadOnly="True" 
                            SortExpression="Vehicle_ID" />
                        <asp:BoundField DataField="Model" HeaderText="Model" SortExpression="Model" />
                        <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                        <asp:BoundField DataField="Year" HeaderText="Year" SortExpression="Year" />
                        <asp:BoundField DataField="FuelType" HeaderText="FuelType" 
                            SortExpression="FuelType" />
                        <asp:BoundField DataField="Capacity" HeaderText="Capacity" 
                            SortExpression="Capacity" />
                        <asp:BoundField DataField="Transmission" HeaderText="Transmission" 
                            SortExpression="Transmission" />
                        <asp:BoundField DataField="Mileage" HeaderText="Mileage" 
                            SortExpression="Mileage" />
                        <asp:BoundField DataField="RatePerDay" HeaderText="RatePerDay" 
                            SortExpression="RatePerDay" />
                        <asp:BoundField DataField="Status" HeaderText="Status" 
                            SortExpression="Status" />
                    </Columns>
                </asp:GridView>
                <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
                    ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
                    SelectCommand="SELECT * FROM [RAE_Vehicle]"></asp:SqlDataSource>
            </div>
        </div>
</asp:Content>


