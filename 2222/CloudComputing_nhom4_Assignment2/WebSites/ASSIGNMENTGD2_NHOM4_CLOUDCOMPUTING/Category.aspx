<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Category.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <h1> Option CATEGORY

    </h1>
    <p> 
        <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" DataKeyNames="MaDMSP" DataSourceID="SqlDataSource1" Height="50px" Width="1000px" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" ForeColor="Black" GridLines="Vertical">
            <AlternatingRowStyle BackColor="#CCCCCC" />
            <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
            <Fields>
                <asp:BoundField DataField="MaDMSP" HeaderText="MaDMSP" ReadOnly="True" SortExpression="MaDMSP" />
                <asp:BoundField DataField="TenDMSP" HeaderText="TenDMSP" SortExpression="TenDMSP" />
                <asp:BoundField DataField="Ma_DanhMuc_Cha" HeaderText="Ma_DanhMuc_Cha" SortExpression="Ma_DanhMuc_Cha" />
                <asp:CommandField ShowEditButton="True" ShowInsertButton="True" ShowDeleteButton="True" />
            </Fields>
            <FooterStyle BackColor="#CCCCCC" />
            <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
        </asp:DetailsView>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\BANHANG.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Danh_MucSP] WHERE [MaDMSP] = @MaDMSP" InsertCommand="INSERT INTO [Danh_MucSP] ([MaDMSP], [TenDMSP], [Ma_DanhMuc_Cha]) VALUES (@MaDMSP, @TenDMSP, @Ma_DanhMuc_Cha)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT * FROM [Danh_MucSP]" UpdateCommand="UPDATE [Danh_MucSP] SET [TenDMSP] = @TenDMSP, [Ma_DanhMuc_Cha] = @Ma_DanhMuc_Cha WHERE [MaDMSP] = @MaDMSP">
            <DeleteParameters>
                <asp:Parameter Name="MaDMSP" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="MaDMSP" Type="Int32" />
                <asp:Parameter Name="TenDMSP" Type="String" />
                <asp:Parameter Name="Ma_DanhMuc_Cha" Type="Int32" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="TenDMSP" Type="String" />
                <asp:Parameter Name="Ma_DanhMuc_Cha" Type="Int32" />
                <asp:Parameter Name="MaDMSP" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>

    </p>
</asp:Content>