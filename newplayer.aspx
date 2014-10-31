<%@ Page Title="" Language="VB" MasterPageFile="~/players.master" AutoEventWireup="false" CodeFile="newplayer.aspx.vb" Inherits="newplayer" %>

<asp:Content ID="Content1" ContentPlaceHolderID="head" Runat="Server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">

<asp:SqlDataSource ID="sql_data" runat="server" ConnectionString="<%$ ConnectionStrings:rlutter_HW7 %>" SelectCommand="SELECT * FROM [rlutter_HW7]" DeleteCommand="DELETE FROM [rlutter_HW7] WHERE [playerID] = @playerID" InsertCommand="INSERT INTO [rlutter_HW7] ([Team], [First_Name], [Last_Name], [Age], [Position], [Hometown], [College], [Money]) VALUES (@Team, @First_Name, @Last_Name, @Age, @Position, @Hometown, @College, @Money)" UpdateCommand="UPDATE [rlutter_HW7] SET [Team] = @Team, [First_Name] = @First_Name, [Last_Name] = @Last_Name, [Age] = @Age, [Position] = @Position, [Hometown] = @Hometown, [College] = @College, [Money] = @Money WHERE [playerID] = @playerID">
    <DeleteParameters>
        <asp:Parameter Name="playerID" Type="Int32" />
    </DeleteParameters>
    <InsertParameters>
        <asp:Parameter Name="Team" Type="String" />
        <asp:Parameter Name="First_Name" Type="String" />
        <asp:Parameter Name="Last_Name" Type="String" />
        <asp:Parameter Name="Age" Type="String" />
        <asp:Parameter Name="Position" Type="String" />
        <asp:Parameter Name="Hometown" Type="String" />
        <asp:Parameter Name="College" Type="String" />
        <asp:Parameter Name="Money" Type="String" />
    </InsertParameters>
    <UpdateParameters>
        <asp:Parameter Name="Team" Type="String" />
        <asp:Parameter Name="First_Name" Type="String" />
        <asp:Parameter Name="Last_Name" Type="String" />
        <asp:Parameter Name="Age" Type="String" />
        <asp:Parameter Name="Position" Type="String" />
        <asp:Parameter Name="Hometown" Type="String" />
        <asp:Parameter Name="College" Type="String" />
        <asp:Parameter Name="Money" Type="String" />
        <asp:Parameter Name="playerID" Type="Int32" />
    </UpdateParameters>
    </asp:SqlDataSource>
        <br />
    
        <asp:FormView ID="fv_insert" runat="server" DataKeyNames="playerID" DataSourceID="sql_data" DefaultMode="Insert" HorizontalAlign="Center">
            <EditItemTemplate>
               
            </EditItemTemplate>

            <InsertItemTemplate>
            <table>
                <tr>
                <td style="text-align:right;">
                    Team:
                </td>
                <td style="text-align:left;">
                    <asp:TextBox ID="TextBox1" runat="server" Text='<%# Bind("Team") %>' />
                </td>
                <td style="text-align:left;">
                </td>
                </tr>
                <tr>
                <td style="text-align:right;">
                    First Name:
                </td>
                <td style="text-align:left;">
                    <asp:TextBox ID="TextBox2" runat="server" Text='<%# Bind("First_Name")%>' />
                </td>
                <td style="text-align:left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ErrorMessage="Please enter a first name." CssClass="validation" ControlToValidate="TextBox2"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td style="text-align:right;">
                    Last Name:
                </td>
                <td style="text-align:left;">
                    <asp:TextBox ID="TextBox3" runat="server" Text='<%# Bind("Last_Name")%>' />
                </td>
                <td style="text-align:left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ErrorMessage="Please enter a last name." CssClass="validation" ControlToValidate="TextBox3"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td style="text-align:right;">
                    Age:
                </td>
                <td style="text-align:left;">
                    <asp:TextBox ID="TextBox4" runat="server" Text='<%# Bind("Age") %>' />
                </td>
                <td style="text-align:left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ErrorMessage="Please enter an age." CssClass="validation" ControlToValidate="TextBox4"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td style="text-align:right;">
                    Position:
                </td>
                <td style="text-align:left;">
                    <asp:TextBox ID="TextBox5" runat="server" Text='<%# Bind("Position") %>' />
                </td>
                <td style="text-align:left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ErrorMessage="Positions: PG, SG, SF, PF and C." CssClass="validation" ControlToValidate="TextBox5"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td style="text-align:right;">
                    Hometown:
                </td>
                <td style="text-align:left;">
                    <asp:TextBox ID="TextBox6" runat="server" Text='<%# Bind("Hometown") %>' />
                </td>
                <td style="text-align:left;">
                    <asp:RequiredFieldValidator ID="RequiredFieldValidator5" runat="server" ErrorMessage="Please enter a hometown." CssClass="validation" ControlToValidate="TextBox6"></asp:RequiredFieldValidator>
                </td>
                </tr>
                <tr>
                <td style="text-align:right;">
                    College:
                </td>
                <td style="text-align:left;">
                    <asp:TextBox ID="TextBox7" runat="server" Text='<%# Bind("College") %>' />
                </td>
                <td>
                </td>
                </tr>
                <tr>
                <td style="text-align:right;">
                    Salary:
                </td>
                <td style="text-align:left;">
                    <asp:TextBox ID="TextBox8" runat="server" Text='<%# Bind("Money")%>' />
                </td>
                <td>
                </td>
                </tr>
                <tr>
                <td style="text-align: right;">
                    <asp:Button ID="btn_Insert" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                </td>
                <td style="text-align:left;">
                    <asp:Button ID="btn_Cancel" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
                </td>
                </tr>
            </table>
            </InsertItemTemplate>

            <ItemTemplate>
            </ItemTemplate>

        </asp:FormView>
    <br />

</asp:Content>

