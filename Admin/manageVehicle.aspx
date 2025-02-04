<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="manageVehicle.aspx.cs" Inherits="Admin_manageVehicle" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="productcontainer">
            <!-- Header -->
            <div class="productheader">
                <h2>Add Vehicle</h2>
            </div>

            <!-- Product Form -->
            <div class="product-form">
                <div class="form-group">
                    <label>Image</label>
                    <asp:FileUpload ID="fileUpload" runat="server" CssClass="file-upload" />
                </div>

               <div class="form-group">
                    <label>Vehicle_ID</label>
                    <asp:TextBox ID="txtID" runat="server" CssClass="input-text" placeholder="Enter Vehicle ID"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Name</label>
                    <asp:TextBox ID="txtName" runat="server" CssClass="input-text" placeholder="Enter Name"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Brand</label>
                    <asp:TextBox ID="txtBrand" runat="server" CssClass="input-text" placeholder="Enter Brand"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Price</label>
                    <asp:TextBox ID="txtPrice" runat="server" CssClass="input-text" placeholder="Enter Price"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Year</label>
                    <asp:TextBox ID="txtYear" runat="server" CssClass="input-text" placeholder="Enter Year"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>FuelType</label>
                    <asp:TextBox ID="txtFuelType" runat="server" CssClass="input-text" placeholder="Petrol/Diesel"></asp:TextBox>
                </div>

                <div class="form-group">
                    <label>Capacity</label>
                    <asp:TextBox ID="txtCapacity" runat="server" CssClass="input-text" placeholder="Enter Capacity"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Transmission</label>
                    <asp:TextBox ID="txtTransmission" runat="server" CssClass="input-text" placeholder="Enter Transmission"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Mileage</label>
                    <asp:TextBox ID="txtMileage" runat="server" CssClass="input-text" placeholder="Enter Mileage"></asp:TextBox>
                </div>

                 <div class="form-group">
                    <label>Status</label>
                    <asp:TextBox ID="txtStatus" runat="server" CssClass="input-text" placeholder="Enter Status"></asp:TextBox>
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
                    <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn-add" 
                        onclick="btnAdd_Click" />
                    <br />
                    <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
                </div>
            </div>
        </div>
            <!-- Product Table -->
            <div class="table-container">
                <asp:GridView ID="gvProducts" runat="server" CssClass="product-table" 
                    AutoGenerateColumns="False" DataKeyNames="Vehicle_ID" 
                    DataSourceID="SqlDataSource1">
                    <Columns>
                        <asp:TemplateField HeaderText="Action">
                            <ItemTemplate>
                                <asp:LinkButton ID="btnDelete" runat="server" CommandName="Delete" ToolTip="Delete" >
                                    <i class="fa fa-trash"></i>
                                </asp:LinkButton>
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Vehicle_ID" HeaderText="Vehicle_ID" ReadOnly="True" 
                            SortExpression="Vehicle_ID" />
                        <asp:BoundField DataField="Name" HeaderText="Name" SortExpression="Name" />
                        <asp:TemplateField HeaderText="Images">
                            <ItemTemplate>
                                <asp:Image ID="imgvehicle" runat="server" 
                                           ImageUrl='<%# Eval("Images") %>' 
                                           CssClass="room-image" 
                                           Width="100" Height="100" />
                            </ItemTemplate>
                        </asp:TemplateField>
                        <asp:BoundField DataField="Brand" HeaderText="Brand" SortExpression="Brand" />
                        <asp:BoundField DataField="Category" HeaderText="Category" 
                            SortExpression="Category" />
                        <asp:BoundField DataField="Year" HeaderText="Year" 
                            SortExpression="Year" />
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
                    SelectCommand="SELECT * FROM [RAE_Vehicle]" 
                    DeleteCommand="DELETE FROM [RAE_Vehicle] WHERE [Vehicle_ID] = @Vehicle_ID" 
                    InsertCommand="INSERT INTO [RAE_Vehicle] ([Vehicle_ID], [Name], [Images], [Brand], [Category], [Year], [FuelType], [Capacity], [Transmission], [Mileage], [RatePerDay], [Status]) VALUES (@Vehicle_ID, @Name, @Images, @Brand, @Category, @Year, @FuelType, @Capacity, @Transmission, @Mileage, @RatePerDay, @Status)" 
                    UpdateCommand="UPDATE [RAE_Vehicle] SET [Name] = @Name, [Images] = @Images, [Brand] = @Brand, [Category] = @Category, [Year] = @Year, [FuelType] = @FuelType, [Capacity] = @Capacity, [Transmission] = @Transmission, [Mileage] = @Mileage, [RatePerDay] = @RatePerDay, [Status] = @Status WHERE [Vehicle_ID] = @Vehicle_ID">
                    <DeleteParameters>
                        <asp:Parameter Name="Vehicle_ID" Type="String" />
                    </DeleteParameters>
                    <InsertParameters>
                        <asp:Parameter Name="Vehicle_ID" Type="String" />
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Images" Type="String" />
                        <asp:Parameter Name="Brand" Type="String" />
                        <asp:Parameter Name="Category" Type="String" />
                        <asp:Parameter Name="Year" Type="Decimal" />
                        <asp:Parameter Name="FuelType" Type="String" />
                        <asp:Parameter Name="Capacity" Type="Decimal" />
                        <asp:Parameter Name="Transmission" Type="String" />
                        <asp:Parameter Name="Mileage" Type="String" />
                        <asp:Parameter Name="RatePerDay" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                    </InsertParameters>
                    <UpdateParameters>
                        <asp:Parameter Name="Name" Type="String" />
                        <asp:Parameter Name="Images" Type="String" />
                        <asp:Parameter Name="Brand" Type="String" />
                        <asp:Parameter Name="Category" Type="String" />
                        <asp:Parameter Name="Year" Type="Decimal" />
                        <asp:Parameter Name="FuelType" Type="String" />
                        <asp:Parameter Name="Capacity" Type="Decimal" />
                        <asp:Parameter Name="Transmission" Type="String" />
                        <asp:Parameter Name="Mileage" Type="String" />
                        <asp:Parameter Name="RatePerDay" Type="String" />
                        <asp:Parameter Name="Status" Type="String" />
                        <asp:Parameter Name="Vehicle_ID" Type="String" />
                    </UpdateParameters>
                </asp:SqlDataSource>
            </div>
</asp:Content>

