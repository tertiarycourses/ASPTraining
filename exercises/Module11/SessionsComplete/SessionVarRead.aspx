<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        OutputLabel.Text = (String)Session["mySessionVar"];
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Read Session Variable</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1><span lang="en-us">Read</span> Session Variable</h1>
        <p>
            <asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Read Variable" />
        </p>
        <p>
            <asp:Label ID="OutputLabel" runat="server" Text="Label"></asp:Label>
        </p>
    </div>
    </form>
</body>
</html>
