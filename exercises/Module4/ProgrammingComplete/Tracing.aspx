<%@ Page Language="C#" Trace="true"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<script runat="server">
    protected void output(String value)
    {
        outputText.Text += value + Environment.NewLine;
    }

    protected void runButton_Click(object sender, EventArgs e)
    {
        int counter;
        for (counter = 1; counter < 3; counter++)
        {
            output("The value of counter is " + counter);
            Trace.Write("The value of counter is " + counter);   
        }
        
    }

    protected void clearButton_Click(object sender, EventArgs e)
    {
        outputText.Text = "";
    }

</script>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Programming in C#</title>
</head>
<body>
    <h1>Programming in C#</h1>
    <form id="form1" runat="server">
        <asp:Panel runat="server">
            <asp:TextBox ID="outputText" runat="server" 
                TextMode="MultiLine"
                Height="175px" Width="400px"/>
        </asp:Panel>
        <asp:Panel runat="server">
            <asp:Button ID="runButton" runat="server" 
                Text="Run Code" 
                Width="95px" onclick="runButton_Click"/>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:Button ID="clearButton" runat="server" 
                Text="Clear Console" onclick="clearButton_Click"/>
        </asp:Panel>
    </form>
</body>
</html>
