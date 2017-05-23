<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="AuthorInsert.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Author Detail</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <customControls:Header runat="server" heading="Insert Author"/>    
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            CellPadding="4" DataKeyNames="au_id" DataSourceID="SqlDataSource1" 
            ForeColor="#333333" GridLines="None" Height="50px" Width="170px" 
            DefaultMode="Insert"
            OnItemInserted="DetailView_ItemInsert"
            OnItemCommand="DetailView_ItemCommand">
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <RowStyle BackColor="#E3EAEB" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="au_id" HeaderText="Author ID" InsertVisible="False" 
                    ReadOnly="True" SortExpression="au_id" >
                <HeaderStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="au_lname" HeaderText="Last Name" 
                    SortExpression="au_lname" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="au_fname" HeaderText="First Name" 
                    SortExpression="au_fname" >
                <HeaderStyle Wrap="False" />
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="phone" HeaderText="Phone" SortExpression="phone" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="address" HeaderText="Address" 
                    SortExpression="address" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="city" HeaderText="City" SortExpression="city" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="state" HeaderText="State" SortExpression="state" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:BoundField DataField="zip" HeaderText="Zip" SortExpression="zip" >
                <ItemStyle Wrap="False" />
                </asp:BoundField>
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <AlternatingRowStyle BackColor="White" />
        </asp:DetailsView>
    </p>
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString1 %>" 
            DeleteCommand="DELETE FROM [authors] WHERE [au_id] = @au_id" 
            InsertCommand="INSERT INTO [authors] ([au_lname], [au_fname], [phone], [address], [city], [state], [zip]) VALUES (@au_lname, @au_fname, @phone, @address, @city, @state, @zip)" 
            ProviderName="<%$ ConnectionStrings:mybookstoreConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [au_id], [au_lname], [au_fname], [phone], [address], [city], [state], [zip] FROM [authors]" 
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
