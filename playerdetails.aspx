<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="playerdetails.aspx.vb" Inherits="playerdetails" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

    <asp:SqlDataSource ID="sql_data" runat="server" ConnectionString="<%$ ConnectionStrings:rlutter_HW7 %>" SelectCommand="SELECT * FROM [rlutter_HW7]">
    </asp:SqlDataSource>
    <br />
        
    <asp:FormView ID="fv_details" runat="server" DataKeyNames="playerID" DataSourceID="sql_data" HorizontalAlign="Center">
        <EditItemTemplate>
        </EditItemTemplate>

        <InsertItemTemplate>
        </InsertItemTemplate>

        <ItemTemplate>
        <table>
                <tr>
                <td style="text-align:right;">
                    Team:
                </td>

                <td style="text-align:left;">
                    <asp:Label ID="TeamLabel" runat="server" Text='<%# Bind("Team") %>' />
                </td>

                </tr>
                <tr>

                <td style="text-align:right;">
                    First Name:
                </td>

                <td style="text-align:left;">
                    <asp:Label ID="First_NameLabel" runat="server" Text='<%# Bind("First_Name") %>' />
                </td>

                </tr>
                <tr>

                <td style="text-align:right;">
                Last_Name:
                </td>

                <td style="text-align:left;">
                <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Bind("Last_Name") %>' />
                </td>

                </tr>
                <tr>

                <td style="text-align:right">
                Age:
                </td>

                <td style="text-align:left;">
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                </td>

                </tr>
                <tr>

                <td style="text-align:right;">
                Position:
                </td>

                <td style="text-align:left;">
                <asp:Label ID="PositionLabel" runat="server" Text='<%# Bind("Position") %>' />
                </td>

                </tr>
                <tr>

                <td style="text-align:right;">
                Hometown:
                </td>

                <td style="text-align:left;">
                <asp:Label ID="HometownLabel" runat="server" Text='<%# Bind("Hometown") %>' />
                </td>

                </tr>
                <tr>

                <td style="text-align:right;">
                College:
                </td>

                <td style="text-align:left;">
                <asp:Label ID="CollegeLabel" runat="server" Text='<%# Bind("College") %>' />
                </td>

                </tr>
                <tr>

                <td style="text-align:right;">
                Money:
                </td>

                <td style="text-align:left;">
                <asp:Label ID="MoneyLabel" runat="server" Text='<%# Bind("Money") %>' />
                </td>

                </tr>

        </table>
        </ItemTemplate>
    </asp:FormView>
        
        <br />
    
</asp:Content>

