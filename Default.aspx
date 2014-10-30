<%@ Page Title="Home" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:SqlDataSource ID="sql_data" runat="server" ConnectionString="<%$ ConnectionStrings:rlutter.HW7 %>" SelectCommand="SELECT * FROM [rlutter.HW7]"></asp:SqlDataSource>
        <br />
    
        <asp:GridView ID="gv_data" runat="server" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_data">
            <Columns>
                <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                <asp:HyperLinkField HeaderText="Select Player" Text="Select" />
            </Columns>
        </asp:GridView>

</asp:Content>
    


