<%@ Page Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="Admin.aspx.cs" Inherits="Admin" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="menu" Runat="Server">
    <li><a href='Admin.aspx'><span>Admin</span></a></li>
</asp:Content>
<asp:Content ID="Content3" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
     <asp:DetailsView AutoGenerateInsertButton="True" ID="DetailsView1" runat="server" Height="50px" Width="536px" AutoGenerateRows="False" DataKeyNames="id" DataSourceID="SqlDataSource1">
         <Fields>
             <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
             <asp:BoundField DataField="company" HeaderText="company" SortExpression="company" />
             <asp:BoundField DataField="director" HeaderText="director" SortExpression="director" />
             <asp:BoundField DataField="editor" HeaderText="editor" SortExpression="editor" />
         </Fields>
     </asp:DetailsView>

     <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MoveDBConnectionString %>" InsertCommand="insert into allmovies (id, title , company , director, editor) values ( 
         (SELECT TOP 1 id+1     
FROM allmovies
order by id desc ) ,  @title , @company , @director , @editor)" SelectCommand="SELECT * FROM [allmovies]">
         <InsertParameters>
             <asp:Parameter Name="title" />
             <asp:Parameter Name="company" />
             <asp:Parameter Name="director" />
             <asp:Parameter Name="editor" />
         </InsertParameters>
     </asp:SqlDataSource>

</asp:Content>
