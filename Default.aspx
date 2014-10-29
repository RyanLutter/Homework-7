<%@ Page Language="VB" AutoEventWireup="false" CodeFile="Default.aspx.vb" Inherits="_Default" %>

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
        <asp:GridView ID="gv_data" runat="server" AutoGenerateColumns="False" DataKeyNames="playerID" DataSourceID="sql_data">
            <Columns>
                <asp:BoundField DataField="First Name" HeaderText="First Name" SortExpression="First Name" />
                <asp:BoundField DataField="Last Name" HeaderText="Last Name" SortExpression="Last Name" />
                <asp:HyperLinkField HeaderText="Select Player" Text="Select" />
            </Columns>
        </asp:GridView>
    </form>
</body>
</html>
