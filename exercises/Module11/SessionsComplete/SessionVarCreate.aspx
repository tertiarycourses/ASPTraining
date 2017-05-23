<%@ Page Language="C#" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">

    protected void Button1_Click(object sender, EventArgs e)
    {
        Session["mySessionVar"] = TextBox1.Text;
        Response.Redirect("SessionVarRead.aspx");
    }
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Create Session Variable</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <h1>Create Variable</h1>
        <p>
            &nbsp;</p>
        <p>
            <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
            <span lang="en-us">&nbsp;<asp:Button ID="Button1" runat="server" onclick="Button1_Click" 
                Text="Set Variable" />
            </span>
        </p>
    </div>
    </form>
</body>
</html>
