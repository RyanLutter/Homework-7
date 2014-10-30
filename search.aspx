<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="search.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:SqlDataSource ID="SqlDataSource1" runat="server"></asp:SqlDataSource>
    
<% If Not IsPostBack Then%>
        <p>
            Search for &lt;blank&gt;:
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
        </p>
<% Else%>
         Search for another &lt;blank&gt;:
            <asp:TextBox ID="TextBox2" runat="server"></asp:TextBox>
        <asp:GridView ID="GridView1" runat="server">
        </asp:GridView>
<%End If%>

</asp:Content>
    


