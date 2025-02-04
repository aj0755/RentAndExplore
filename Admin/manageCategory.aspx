<%@ Page Title="" Language="C#" MasterPageFile="~/Admin/AdminMasterPage.master" AutoEventWireup="true" CodeFile="manageCategory.aspx.cs" Inherits="Admin_manageCategory" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
<div class="categorycontent">
    <div class="form-container">
        <h2>Category Master</h2>
    </div>

    <!-- Add Category Form -->
    <div class="add-category">
        <label for="txtCategoryName">Category Name</label>
        <asp:TextBox ID="txtCategoryName" runat="server" CssClass="input-text" Placeholder="Enter Category Name"></asp:TextBox>
        <asp:Button ID="btnAdd" runat="server" Text="Add" CssClass="btn-add" 
            onclick="btnAdd_Click" />
    </div>
     </div>
    <!-- Category Table -->
    <div class="table-container">
        <asp:GridView ID="gvCategories" runat="server" CssClass="category-table"
            AutoGenerateColumns="False" DataSourceID="SqlDataSource1" DataKeyNames="CategoryName">
            <Columns>
                <asp:TemplateField HeaderText="Action">
                    <ItemTemplate>
                        <asp:LinkButton ID="btnDelete" runat="server" CssClass="delete-btn" OnClick="btnDelete_Click" OnClientClick="return confirm('Are you sure you want to delete this category?');">
                            <i class="fa fa-trash"></i>
                        </asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>

                <asp:BoundField DataField="CategoryName" HeaderText="Category Name" SortExpression="CategoryName" />
            </Columns>
        </asp:GridView>

        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:ConnectionString %>" 
            SelectCommand="SELECT Category_ID, CategoryName FROM RAE_Category">
        </asp:SqlDataSource>
        <br />
        <asp:Label ID="lblMessage" runat="server" ForeColor="Red"></asp:Label>
    </div>
</asp:Content>

