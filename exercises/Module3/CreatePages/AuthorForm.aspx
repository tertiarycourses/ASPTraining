<%@ Page Language="C#" AutoEventWireup="true" CodeFile="AuthorForm.aspx.cs" Inherits="Default2" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Author Data</title>
    <style type="text/css">
        .labelcolumn
        {
            width: 130px;
            font-weight:bold;
            text-align:right;
        }
        .controlcolumn
        {
            width: 500px;
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
                &nbsp;</td>
        </tr>
        <tr>
            <td class="labelcolumn">
                Last Name:</td>
            <td class="controlcolumn">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="labelcolumn">
                Date of Birth:</td>
            <td class="controlcolumn">
                &nbsp;</td>
        </tr>
        <tr>
            <td class="labelcolumn">
                &nbsp;</td>
            <td class="controlcolumn">
                &nbsp;</td>
        </tr>
        </table>
    <br />
    </form>
    </body>
</html>
