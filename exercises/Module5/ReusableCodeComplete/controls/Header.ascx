﻿<%@ Control Language="C#" ClassName="Header" %>

<script runat="server">

</script>

<asp:Panel ID="Panel1" runat="server">
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