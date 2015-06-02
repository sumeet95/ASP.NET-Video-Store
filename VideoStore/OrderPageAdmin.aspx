<%@ Page ValidateRequest="false" Title="" Language="C#" MasterPageFile="~/MasterPage.master" AutoEventWireup="true" CodeFile="OrderPageAdmin.aspx.cs" Inherits="OrderPage" %> 

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:DetailsView AutoGenerateEditButton="True" ID="DetailsView1" runat="server" AutoGenerateRows="False" DataKeyNames="id,Expr1" DataSourceID="SqlDataSource1" Height="326px" Width="1047px" BackColor="White" BorderColor="#DEDFDE" BorderStyle="None" BorderWidth="1px" CellPadding="4" ForeColor="Black" GridLines="None">
        <AlternatingRowStyle BackColor="White" />
        <EditRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
        <Fields>
            <asp:BoundField DataField="title" HeaderText="title" SortExpression="title" />
            <asp:BoundField DataField="summary" HeaderText="summary" SortExpression="summary" />
            <asp:BoundField DataField="author" HeaderText="author" SortExpression="author" />
        </Fields>
        <FooterStyle BackColor="#CCCC99" />
        <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
        <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
        <RowStyle BackColor="#F7F7DE" />
    </asp:DetailsView>
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:MoveDBConnectionString %>" SelectCommand="SELECT summaries.id, summaries.summary, summaries.author, allmovies.title, allmovies.company, allmovies.director, allmovies.editor, allmovies.id AS Expr1 FROM summaries INNER JOIN allmovies ON summaries.id = allmovies.id WHERE (summaries.id = @id)" UpdateCommand="BEGIN TRANSACTION

UPDATE allmovies SET title = @title  WHERE (id = @id) 

UPDATE summaries SET summary = @summary WHERE (id = @id)

COMMIT">
        <SelectParameters>
            <asp:QueryStringParameter Name="id" QueryStringField="id" Type="Int32" />
        </SelectParameters>
        <UpdateParameters>
            <asp:Parameter Name="title" />
            <asp:Parameter Name="id" />
            <asp:Parameter Name="summary" />
        </UpdateParameters>
    </asp:SqlDataSource>

</asp:Content>

