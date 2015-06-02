<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="MainPageAdmin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
    <link href="css/StyleSheet.css" rel="stylesheet" />
</asp:Content>

<asp:Content ID="ContentMenu" ContentPlaceHolderID="menu" runat="server">
    <li><a href='Admin.aspx'><span>Admin</span></a></li>
</asp:Content>

<asp:Content ID="Content4" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    
    <asp:GridView ID="GridView1" runat="server" HorizontalAlign="Right" AutoGenerateColumns="False" DataKeyNames="id" DataSourceID="SqlDataSource1" Height="227px" Width="254px" style="text-align: left" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="OrderPage.aspx?id={0}" DataTextField="title" HeaderText="You Might Like:" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>

    <img class="auto-style1" style="float:right; height: 294px; width: 488px;" src="http://localhost:49406/Images/Blockbuster_logo.svg.png" />

    <asp:GridView ID="GridView2" runat="server" HorizontalAlign="Left" AutoGenerateColumns="False"  DataSourceID="SqlDataSource2" Width="256px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="Vertical" Height="228px" style="text-align: left">
        <AlternatingRowStyle BackColor="White" />
        <Columns>
            <asp:HyperLinkField DataNavigateUrlFields="id" DataNavigateUrlFormatString="OrderPage.aspx?id={0}" DataTextField="title" HeaderText="Top Rented" />
        </Columns>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
        <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <SortedAscendingCellStyle BackColor="#FBFBF2" />
        <SortedAscendingHeaderStyle BackColor="#848384" />
        <SortedDescendingCellStyle BackColor="#EAEAD3" />
        <SortedDescendingHeaderStyle BackColor="#575357" />
    </asp:GridView>
        

    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MoveDBConnectionString %>" SelectCommand="SELECT TOP 10 * FROM allmovies ORDER BY newid()"></asp:SqlDataSource>
                                                                                                        
    <asp:SqlDataSource ID="SqlDataSource2" runat="server" ConnectionString="<%$ ConnectionStrings:MoveDBConnectionString %>" SelectCommand="SELECT TOP 10 * from allmovies a inner join rented r ON a.id = r.id order by r.rent_count"></asp:SqlDataSource>
    
</asp:Content>

<asp:Content ID="Content5" ContentPlaceHolderID="ContentPlaceHolder2" Runat="Server">
    <div id="footer" style="position: absolute; width:70%; padding: 20px; bottom: -38px; background: #222222;
  background: -moz-linear-gradient(top, #555555 0%, #222222 100%);
  background: -webkit-gradient(linear, left top, left bottom, color-stop(0%, #555555), color-stop(100%, #222222));
  background: -webkit-linear-gradient(top, #555555 0%, #222222 100%);
  background: -o-linear-gradient(top, #555555 0%, #222222 100%);
  background: -ms-linear-gradient(top, #555555 0%, #222222 100%);
  background: #222222; left: 162px; margin-top: 0px;">

    </div>
</asp:Content>


