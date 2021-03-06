﻿<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/admin.master" AutoEventWireup="false" CodeFile="Adminsearch.aspx.vb" Inherits="search" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>

<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    <asp:SqlDataSource ID="sql_playerdata" runat="server" ConnectionString="<%$ ConnectionStrings:rlutter_HW7 %>" SelectCommand="SELECT * FROM [rlutter_HW7]"></asp:SqlDataSource>
    
    <br />

            Search for  player by first and last name:
            <asp:TextBox ID="tb_player" runat="server"></asp:TextBox>

            <br />
            <br />

            <asp:GridView ID="gv_search" runat="server" AllowSorting="True" AutoGenerateColumns="False" BorderStyle="None" CellPadding="4" DataKeyNames="playerID" DataSourceID="sql_playerdata" ForeColor="Black" GridLines="Vertical" HorizontalAlign="Center" CssClass="view">
                <Columns>
                    <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
                    <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
                    <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
                    <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                    <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                    <asp:BoundField DataField="Hometown" HeaderText="Hometown" SortExpression="Hometown" />
                    <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                    <asp:BoundField DataField="Money" HeaderText="Salary" SortExpression="Money" />
                </Columns>
        </asp:GridView>
    <br />

</asp:Content>
    


