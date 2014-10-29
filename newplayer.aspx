<%@ Page Language="VB" AutoEventWireup="false" CodeFile="newplayer.aspx.vb" Inherits="newplayer" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="StyleSheet.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <div>

        <asp:SqlDataSource ID="sql_data" runat="server" ConnectionString="<%$ ConnectionStrings:rlutter.HW7 %>" SelectCommand="SELECT * FROM [rlutter.HW7]"></asp:SqlDataSource>
        <br />
    
    </div>
        <asp:FormView ID="FormView1" runat="server" DataKeyNames="playerID" DataSourceID="sql_data">
            <EditItemTemplate>
                Team:
                <asp:TextBox ID="TeamTextBox" runat="server" Text='<%# Bind("Team") %>' />
                <br />
                First Name:
                <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("[First Name]") %>' />
                <br />
                Last Name:
                <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("[Last Name]") %>' />
                <br />
                Age:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />
                Position:
                <asp:TextBox ID="PositionTextBox" runat="server" Text='<%# Bind("Position") %>' />
                <br />
                Hometown:
                <asp:TextBox ID="HometownTextBox" runat="server" Text='<%# Bind("Hometown") %>' />
                <br />
                College:
                <asp:TextBox ID="CollegeTextBox" runat="server" Text='<%# Bind("College") %>' />
                <br />
                Salary:
                <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                <br />
                <asp:LinkButton ID="UpdateButton" runat="server" CausesValidation="True" CommandName="Update" Text="Update" />
                &nbsp;<asp:LinkButton ID="UpdateCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </EditItemTemplate>
            <InsertItemTemplate>
                Team:
                <asp:TextBox ID="TeamTextBox" runat="server" Text='<%# Bind("Team") %>' />
                <br />
                First Name:
                <asp:TextBox ID="First_NameTextBox" runat="server" Text='<%# Bind("[First Name]") %>' />
                <br />
                Last Name:
                <asp:TextBox ID="Last_NameTextBox" runat="server" Text='<%# Bind("[Last Name]") %>' />
                <br />
                Age:
                <asp:TextBox ID="AgeTextBox" runat="server" Text='<%# Bind("Age") %>' />
                <br />
                Position:
                <asp:TextBox ID="PositionTextBox" runat="server" Text='<%# Bind("Position") %>' />
                <br />
                Hometown:
                <asp:TextBox ID="HometownTextBox" runat="server" Text='<%# Bind("Hometown") %>' />
                <br />
                College:
                <asp:TextBox ID="CollegeTextBox" runat="server" Text='<%# Bind("College") %>' />
                <br />
                Salary:
                <asp:TextBox ID="SalaryTextBox" runat="server" Text='<%# Bind("Salary") %>' />
                <br />
                <asp:LinkButton ID="InsertButton" runat="server" CausesValidation="True" CommandName="Insert" Text="Insert" />
                &nbsp;<asp:LinkButton ID="InsertCancelButton" runat="server" CausesValidation="False" CommandName="Cancel" Text="Cancel" />
            </InsertItemTemplate>
            <ItemTemplate>
                Team:
                <asp:Label ID="TeamLabel" runat="server" Text='<%# Bind("Team") %>' />
                <br />
                First Name:
                <asp:Label ID="First_NameLabel" runat="server" Text='<%# Bind("[First Name]") %>' />
                <br />
                Last Name:
                <asp:Label ID="Last_NameLabel" runat="server" Text='<%# Bind("[Last Name]") %>' />
                <br />
                Age:
                <asp:Label ID="AgeLabel" runat="server" Text='<%# Bind("Age") %>' />
                <br />
                Position:
                <asp:Label ID="PositionLabel" runat="server" Text='<%# Bind("Position") %>' />
                <br />
                Hometown:
                <asp:Label ID="HometownLabel" runat="server" Text='<%# Bind("Hometown") %>' />
                <br />
                College:
                <asp:Label ID="CollegeLabel" runat="server" Text='<%# Bind("College") %>' />
                <br />
                Salary:
                <asp:Label ID="SalaryLabel" runat="server" Text='<%# Bind("Salary") %>' />
                <br />

            </ItemTemplate>
        </asp:FormView>
    </form>
    <p>
        &nbsp;</p>
</body>
</html>
