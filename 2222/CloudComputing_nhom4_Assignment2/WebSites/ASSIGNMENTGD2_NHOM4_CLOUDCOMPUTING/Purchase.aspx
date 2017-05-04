<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Purchase.aspx.cs" Inherits="About" %>
<!-- 4/5-->
<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <asp:DetailsView ID="DetailsView1" runat="server" Height="50px" Width="389px" AllowPaging="True" AutoGenerateRows="False" BackColor="#CCCCCC" BorderColor="#999999" BorderStyle="Solid" BorderWidth="3px" CellPadding="4" CellSpacing="2" DataKeyNames="MaGH" DataSourceID="SqlDataSource1" ForeColor="Black">
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="MaGH" HeaderText="MaGH" ReadOnly="True" SortExpression="MaGH" />
            <asp:BoundField DataField="SLGH" HeaderText="SLGH" SortExpression="SLGH" />
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" SortExpression="MaKH" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#CCCCCC" ForeColor="Black" HorizontalAlign="Left" />
        <RowStyle BackColor="White" />
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