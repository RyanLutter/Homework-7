<%@ Page Title="Home" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:SqlDataSource ID="sql_data" runat="server" ConnectionString="<%$ ConnectionStrings:rlutter_HW7 %>" SelectCommand="SELECT * FROM [rlutter_HW7]"></asp:SqlDataSource>
        <br />
    
        <asp:GridView ID="gv_data" runat="server" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_data" HorizontalAlign="Center">
            <Columns>
                <asp:BoundField DataField="First_Name" HeaderText="First_Name" SortExpression="First_Name" />
                <asp:BoundField DataField="Last_Name" HeaderText="Last_Name" SortExpression="Last_Name" />
                <asp:HyperLinkField HeaderText="Details of Player" NavigateUrl="./playerdetails.aspx" Text="Select" />
            </Columns>
        </asp:GridView>
    <br />


</asp:Content>
    


