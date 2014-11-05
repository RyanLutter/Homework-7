<%@ Page Title="" Language="VB" MasterPageFile="~/Admin/admin.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="Admin_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:SqlDataSource ID="sql_data" runat="server" ConnectionString="<%$ ConnectionStrings:rlutter_HW7 %>" SelectCommand="SELECT * FROM [rlutter_HW7]"></asp:SqlDataSource>
        <br />
    
        <asp:GridView ID="gv_data" runat="server" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_data" HorizontalAlign="Center" CssClass="view" AllowSorting="True">
            <Columns>
                <asp:BoundField DataField="Team" HeaderText="Team" SortExpression="Team" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Position" HeaderText="Position" SortExpression="Position" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:HyperLinkField HeaderText="Details of Player" DataNavigateUrlFormatString="~/Admin/Adminplayerdetails.aspx?playerID={0}" Text="Select" DataNavigateUrlFields="playerID" >
                <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                </asp:HyperLinkField>
            </Columns>
        </asp:GridView>
    <br />

</asp:Content>

