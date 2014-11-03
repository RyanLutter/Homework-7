<%@ Page Title="Home" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

        <asp:SqlDataSource ID="sql_data" runat="server" ConnectionString="<%$ ConnectionStrings:rlutter_HW7 %>" SelectCommand="SELECT * FROM [rlutter_HW7]"></asp:SqlDataSource>
        <br />
    
        <asp:GridView ID="gv_data" runat="server" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_data" HorizontalAlign="Center" CssClass="border">
            <Columns>
                <asp:BoundField DataField="First_Name" HeaderText="First Name" SortExpression="First_Name" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:BoundField DataField="Last_Name" HeaderText="Last Name" SortExpression="Last_Name" >
                <ItemStyle HorizontalAlign="Center" />
                </asp:BoundField>
                <asp:HyperLinkField HeaderText="Details of Player" DataNavigateUrlFormatString="playerdetails.aspx?playerID={0}" Text="Select" DataNavigateUrlFields="playerID" >
                <ItemStyle Font-Bold="True" HorizontalAlign="Center" />
                </asp:HyperLinkField>
            </Columns>
                    <FooterStyle BackColor="#CCCC99" />
                    <PagerStyle BackColor="#F7F7DE" ForeColor="Black" HorizontalAlign="Right" />
                    <SelectedRowStyle BackColor="#CE5D5A" Font-Bold="True" ForeColor="White" />
                    <HeaderStyle BackColor="#6B696B" Font-Bold="True" ForeColor="White" />
                    <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    <br />


</asp:Content>
    


