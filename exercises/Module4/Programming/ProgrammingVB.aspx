<%@ Page Language="VB" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    Protected Sub output(ByVal value As String)
        outputText.Text += value + Environment.NewLine
    End Sub

    Protected Sub runButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        output("Hello world")
    End Sub

    Protected Sub clearButton_Click(ByVal sender As Object, ByVal e As System.EventArgs)
        outputText.Text = ""
    End Sub
</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Programming in VB</title>
</head>
<body>
    <h1>Programming in VB</h1>
    <form id="form1" runat="server">
        <asp:Panel ID="Panel1" runat="server">
            <asp:TextBox ID="outputText" runat="server" 
                TextMode="MultiLine"
                Height="175px" Width="400px"/>
        </asp:Panel>
        <asp:Panel ID="Panel2" runat="server">
            <asp:Button ID="runButton" runat="server" 
                Text="Run Code" 
                Width="95px"  
                OnClick="runButton_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="clearButton" runat="server" 
                Text="Clear Console" 
                onclick="clearButton_Click"/>
        </asp:Panel>
    </form>
</body>
</html>
