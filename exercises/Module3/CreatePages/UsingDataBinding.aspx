<%@ Page Language="C#" AutoEventWireup="true" CodeFile="UsingDataBinding.aspx.cs" Inherits="UsingDataBinding" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">

        .controlcolumn
        {
            width: 500px;
        }
        .labelcolumn
        {
            width: 130px;
            font-weight:bold;
            text-align:right;
        }
        </style>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    <h1>Author Data</h1>
    </div>
    <table class="controlcolumn">
        <tr>
            <td class="labelcolumn">
                First Name:</td>
            <td class="controlcolumn">
                <asp:TextBox ID="fnameInput" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="labelcolumn">
                Last Name:</td>
            <td class="controlcolumn">
                <asp:TextBox ID="lnameInput" runat="server" Width="200px"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="labelcolumn">
                Date of Birth:</td>
            <td class="controlcolumn">
                <asp:TextBox ID="dobInput" runat="server"></asp:TextBox>
            </td>
        </tr>
        <tr>
            <td class="labelcolumn">
                &nbsp;</td>
            <td class="controlcolumn">
                <asp:Button ID="Button1" runat="server" Text="Submit" />
            </td>
        </tr>
        </table>
    <br />
    <asp:Panel ID="Panel1" runat="server">
        <strong>First Name:</strong>
        <asp:Label ID="fnameLabel" runat="server" 
            Text=""></asp:Label>
        <br />
        <strong>Last Name:</strong>
        <asp:Label ID="lnameLabel" runat="server" 
            Text=""></asp:Label>
        <br />
        <strong>Date of Birth:</strong>
        <asp:Label ID="dobLabel" runat="server" 
            Text=""></asp:Label>
    </asp:Panel>
    </form>
    </body>
</html>
