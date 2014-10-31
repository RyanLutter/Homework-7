﻿<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="playerdetails.aspx.vb" Inherits="playerdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="sql_data" runat="server" ConnectionString="<%$ ConnectionStrings:rlutter_HW7 %>" SelectCommand="SELECT * FROM [rlutter_HW7]">
    </asp:SqlDataSource>
    <br />
        
        <asp:DetailsView ID="dv_details" runat="server" AutoGenerateRows="False" DataKeyNames="playerID" DataSourceID="sql_data" Height="50px" Width="215px" HorizontalAlign="Center">
            <Fields>
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" />
                <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" />
                <asp:BoundField DataField="Age" HeaderText="Age" SortExpression="Age" />
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" />
                <asp:BoundField DataField="Hometown" HeaderText="Hometown" SortExpression="Hometown" />
                <asp:BoundField DataField="College" HeaderText="College" SortExpression="College" />
                <asp:BoundField DataField="Money" HeaderText="Salary" SortExpression="Money" />
            </Fields>
    </asp:DetailsView>
        
        <br />
    
</asp:Content>

