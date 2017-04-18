<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Product.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
     <hgroup class="title">
     </hgroup>
     <h1>Option Product</h1>
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="978px" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="MaSP" DataSourceID="SqlDataSource2" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="MaSP" HeaderText="MaSP" ReadOnly="True" SortExpression="MaSP" />
                <asp:BoundField DataField="Ma_DanhMuc_Cha" HeaderText="Ma_DanhMuc_Cha" SortExpression="Ma_DanhMuc_Cha" />
                <asp:BoundField DataField="Don_Vi" HeaderText="Don_Vi" SortExpression="Don_Vi" />
                <asp:BoundField DataField="TenSP" HeaderText="TenSP" SortExpression="TenSP" />
                <asp:BoundField DataField="GiaSP" HeaderText="GiaSP" SortExpression="GiaSP" />
                <asp:BoundField DataField="Chu_Thich" HeaderText="Chu_Thich" SortExpression="Chu_Thich" />
                <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\BANHANG.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [San_Pham] WHERE [MaSP] = @MaSP" InsertCommand="INSERT INTO [San_Pham] ([MaSP], [Ma_DanhMuc_Cha], [Don_Vi], [TenSP], [GiaSP], [Chu_Thich], [Hinh_Anh]) VALUES (@MaSP, @Ma_DanhMuc_Cha, @Don_Vi, @TenSP, @GiaSP, @Chu_Thich, @Hinh_Anh)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [San_Pham]" UpdateCommand="UPDATE [San_Pham] SET [Ma_DanhMuc_Cha] = @Ma_DanhMuc_Cha, [Don_Vi] = @Don_Vi, [TenSP] = @TenSP, [GiaSP] = @GiaSP, [Chu_Thich] = @Chu_Thich, [Hinh_Anh] = @Hinh_Anh WHERE [MaSP] = @MaSP">
            <DeleteParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaSP" Type="Int32" />
                <asp:Parameter Name="Ma_DanhMuc_Cha" Type="Int32" />
                <asp:Parameter Name="Don_Vi" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="GiaSP" Type="Decimal" />
                <asp:Parameter Name="Chu_Thich" Type="String" />
                <asp:Parameter Name="Hinh_Anh" Type="Object" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="Ma_DanhMuc_Cha" Type="Int32" />
                <asp:Parameter Name="Don_Vi" Type="String" />
                <asp:Parameter Name="TenSP" Type="String" />
                <asp:Parameter Name="GiaSP" Type="Decimal" />
                <asp:Parameter Name="Chu_Thich" Type="String" />
                <asp:Parameter Name="Hinh_Anh" Type="Object" />
                <asp:Parameter Name="MaSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
     <hgroup>
        
    </hgroup>
        
</asp:Content>