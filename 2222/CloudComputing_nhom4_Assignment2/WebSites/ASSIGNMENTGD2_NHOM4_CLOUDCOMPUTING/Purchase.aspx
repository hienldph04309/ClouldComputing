<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Purchase</h1>
        
    </hgroup>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="MaGH" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" Width="773px" ForeColor="Black">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="MaGH" HeaderText="MaGH" ReadOnly="True" SortExpression="MaGH" />
            <asp:BoundField DataField="SLGH" HeaderText="SLGH" SortExpression="SLGH" />
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\BANHANG.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Gio_Hang] WHERE [MaGH] = @MaGH" InsertCommand="INSERT INTO [Gio_Hang] ([MaGH], [SLGH], [MaKH]) VALUES (@MaGH, @SLGH, @MaKH)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaGH], [SLGH], [MaKH] FROM [Gio_Hang]" UpdateCommand="UPDATE [Gio_Hang] SET [SLGH] = @SLGH, [MaKH] = @MaKH WHERE [MaGH] = @MaGH">
        <DeleteParameters>
            <asp:Parameter Name="MaGH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaGH" Type="Int32" />
            <asp:Parameter Name="SLGH" Type="String" />
            <asp:Parameter Name="MaKH" Type="Int32" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="SLGH" Type="String" />
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="MaGH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>