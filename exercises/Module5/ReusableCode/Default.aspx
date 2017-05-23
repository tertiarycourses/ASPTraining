<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Default.aspx.cs" Inherits="_Default" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Night Owl</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel runat="server">
        <img alt="The Night Owl" 
            src="Images/bookshelf.jpg" 
            width="800" height="110"/>
    </asp:Panel>
    <asp:Panel id="menuPanel" runat="server">
        <a href="Default.aspx">Home</a> |
        <a href="Titles.aspx">Titles</a> |
        <a href="Authors.aspx">Authors</a> |
        <a href="Publishers.aspx">Publishers</a>
    </asp:Panel>
    <h1><span lang="en-us">Home Page</span></h1>
    <asp:Panel runat="server">
        Welcome to The Night Owl, where all of 
        your technical needs are met!
    </asp:Panel>
    </form>
</body>
</html>
