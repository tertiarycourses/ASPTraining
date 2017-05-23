<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Publishers.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Publisher List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css">
</head>
<body>
    <form id="form1" runat="server">
    <customControls:Header runat="server" heading="Publisher List" />
    <p>
        <asp:DataList ID="DataList1" runat="server" DataKeyField="pub_id" 
            DataSourceID="SqlDataSource1">
            <ItemTemplate>
                <asp:Label ID="pub_nameLabel" runat="server" 
                    Text='<%# Eval("pub_name") %>' />
                <br />
            </ItemTemplate>
        </asp:DataList>
    </p>
            
    <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString1 %>" 
            DeleteCommand="DELETE FROM [publishers] WHERE [pub_id] = @pub_id" 
            InsertCommand="INSERT INTO [publishers] ([pub_name]) VALUES (@pub_name)" 
            ProviderName="<%$ ConnectionStrings:mybookstoreConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [pub_id], [pub_name] FROM [publishers]" 
            UpdateCommand="UPDATE [publishers] SET [pub_name] = @pub_name WHERE [pub_id] = @pub_id">
            <DeleteParameters>
                <asp:Parameter Name="pub_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pub_name" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pub_name" Type="String" />
                <asp:Parameter Name="pub_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
            
    </form>
</body>
</html>
