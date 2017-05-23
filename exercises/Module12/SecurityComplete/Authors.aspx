<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Authors.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Author List</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <customControls:Header runat="server" heading="Author List"/>    
    <p>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" 
            DataKeyNames="au_id" DataSourceID="SqlDataSource1" 
            EmptyDataText="There are no data records to display." Width="595px" 
            AllowPaging="True" CellPadding="4" ForeColor="#333333" GridLines="None" 
            PageSize="5">
            <PagerSettings Mode="NumericFirstLast" />
            <RowStyle BackColor="#E3EAEB" />
            <Columns>
                <asp:BoundField DataField="au_lname" HeaderText="Last Name" 
                    SortExpression="au_lname" />
                <asp:BoundField DataField="au_fname" HeaderText="First Name" 
                    SortExpression="au_fname" />
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" />
                <asp:HyperLinkField DataNavigateUrlFields="au_id"
                    DataNavigateUrlFormatString="~/AuthorUpdate.aspx?au_id={0}" Text="Edit" />
                <asp:CommandField ShowDeleteButton="True" />
            </Columns>
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <SelectedRowStyle BackColor="#C5BBAF" Font-Bold="True" ForeColor="#333333" />
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <AlternatingRowStyle BackColor="White" />
        </asp:GridView>
    </p>
    <p>
        <asp:HyperLink ID="HyperLink1" runat="server" NavigateUrl="~/AuthorInsert.aspx">Add New Author</asp:HyperLink>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString1 %>" 
            DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @au_id" 
            InsertCommand="INSERT INTO [authors] ([au_lname], [au_fname], [phone], [address], [city], [state], [zip]) VALUES (@au_lname, @au_fname, @phone, @address, @city, @state, @zip)" 
            ProviderName="<%$ ConnectionStrings:mybookstoreConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip] FROM [authors] ORDER BY [au_lname]" 
            UpdateCommand="UPDATE [authors] SET [au_lname] = @au_lname, [au_fname] = @au_fname, [phone] = @phone, [address] = @address, [city] = @city, [state] = @state, [zip] = @zip WHERE [au_id] = @au_id">
            <DeleteParameters>
                <asp:Parameter Name="au_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="au_lname" Type="String" />
                <asp:Parameter Name="au_fname" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="zip" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="au_lname" Type="String" />
                <asp:Parameter Name="au_fname" Type="String" />
                <asp:Parameter Name="phone" Type="String" />
                <asp:Parameter Name="address" Type="String" />
                <asp:Parameter Name="city" Type="String" />
                <asp:Parameter Name="state" Type="String" />
                <asp:Parameter Name="zip" Type="String" />
                <asp:Parameter Name="au_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </form>
</body>
</html>
