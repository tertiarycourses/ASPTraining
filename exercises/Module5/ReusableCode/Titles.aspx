<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Titles.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Title List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <img alt="The Night Owl" 
            src="Images/bookshelf.jpg" 
            width="800" height="110"/>
    </div>
    <asp:Panel id="menuPanel" runat="server">
        <a href="Default.aspx">Home</a> |
        <a href="Titles.aspx">Titles</a> |
        <a href="Authors.aspx">Authors</a> |
        <a href="Publishers.aspx">Publishers</a>
    </asp:Panel>
    <h1>Title List</h1>
    <p><span lang="en-us">This page will show a list of Titles.</span></p>
    </form>
</body>
</html>
