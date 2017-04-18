<%@ Page Title="About" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeFile="Client.aspx.cs" Inherits="About" %>

<asp:Content runat="server" ID="BodyContent" ContentPlaceHolderID="MainContent">
    <hgroup class="title">
        <h1>Client</h1>
        
    </hgroup>
    <asp:DetailsView ID="DetailsView1" runat="server" AllowPaging="True" AutoGenerateRows="False" BackColor="White" BorderColor="#999999" BorderStyle="Solid" BorderWidth="1px" CellPadding="3" DataKeyNames="MaKH" DataSourceID="SqlDataSource1" GridLines="Vertical" Height="50px" Width="878px" ForeColor="Black">
        <AlternatingRowStyle BackColor="#CCCCCC" />
        <EditRowStyle BackColor="#000099" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="MaKH" HeaderText="MaKH" ReadOnly="True" SortExpression="MaKH" />
            <asp:BoundField DataField="Ho_Ten" HeaderText="Ho_Ten" SortExpression="Ho_Ten" />
            <asp:BoundField DataField="Email" HeaderText="Email" SortExpression="Email" />
            <asp:CommandField ShowDeleteButton="True" ShowEditButton="True" ShowInsertButton="True" />
        </Fields>
        <FooterStyle BackColor="#CCCCCC" />
        <HeaderStyle BackColor="Black" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#999999" ForeColor="Black" HorizontalAlign="Center" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="Data Source=(LocalDB)\v11.0;AttachDbFilename=|DataDirectory|\BANHANG.mdf;Integrated Security=True" DeleteCommand="DELETE FROM [Khach_Hang] WHERE [MaKH] = @MaKH" InsertCommand="INSERT INTO [Khach_Hang] ([MaKH], [Ho_Ten], [Email]) VALUES (@MaKH, @Ho_Ten, @Email)" ProviderName="System.Data.SqlClient" SelectCommand="SELECT [MaKH], [Ho_Ten], [Email] FROM [Khach_Hang]" UpdateCommand="UPDATE [Khach_Hang] SET [Ho_Ten] = @Ho_Ten, [Email] = @Email WHERE [MaKH] = @MaKH">
        <DeleteParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
        </DeleteParameters>
        <InsertParameters>
            <asp:Parameter Name="MaKH" Type="Int32" />
            <asp:Parameter Name="Ho_Ten" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
        </InsertParameters>
        <UpdateParameters>
            <asp:Parameter Name="Ho_Ten" Type="String" />
            <asp:Parameter Name="Email" Type="String" />
            <asp:Parameter Name="MaKH" Type="Int32" />
        </UpdateParameters>
    </asp:SqlDataSource>
    
</asp:Content>