<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="TitleInsert.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head id="Head1" runat="server">
    <title>The Night Owl - Insert Title</title>
    <link href="styles.css" rel="Stylesheet" type="text/css"/>
</head>
<body>
    <form id="form1" runat="server">
    <customControls:Header runat="server" heading="Insert Title"/>    
    <p>
        <asp:DetailsView ID="DetailsView1" runat="server" AutoGenerateRows="False" 
            DataKeyNames="title_id" DataSourceID="SqlDataSource1" Height="50px" 
            Width="170px" DefaultMode="Insert" CellPadding="4" ForeColor="#333333" 
            GridLines="None">
            <FooterStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <CommandRowStyle BackColor="#C5BBAF" Font-Bold="True" />
            <RowStyle BackColor="#E3EAEB" />
            <FieldHeaderStyle BackColor="#D0D0D0" Font-Bold="True" />
            <PagerStyle BackColor="#666666" ForeColor="White" HorizontalAlign="Center" />
            <Fields>
                <asp:BoundField DataField="title" HeaderText="Title" SortExpression="title" />
                <asp:TemplateField HeaderText="Price">
                    <EditItemTemplate>
                        <asp:TextBox ID="price" runat="server"
                            Text="<%# Bind('price') %>" />
                        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" 
                            ControlToValidate="price" ErrorMessage="Price is required"
                            Display="None"
                            CssClass="validationError"></asp:RequiredFieldValidator>
                        <asp:RangeValidator ID="RangeValidator1" runat="server" 
                            ControlToValidate="price" ErrorMessage="Price must be between 1 and 100" 
                            MaximumValue="100" MinimumValue="1" Type="Double"
                            Display="None"
                            CssClass="validationError"></asp:RangeValidator>
                    </EditItemTemplate>
                </asp:TemplateField>
                <asp:TemplateField HeaderText="PubDate">
                    <EditItemTemplate>
                        <asp:TextBox ID="pubdate" runat="server"
                            Text="<%# Bind('pubdate') %>" />
                        <asp:RangeValidator ID="RangeValidator2" runat="server" 
                            ControlToValidate="pubdate" ErrorMessage="Please enter a valid date" 
                            MaximumValue="12/31/2100" MinimumValue="1/1/1900" Type="Date"
                            Display="None"
                            CssClass="validationError"></asp:RangeValidator>
                     </EditItemTemplate>                
                </asp:TemplateField>
                <asp:BoundField DataField="notes" HeaderText="Notes" SortExpression="notes" />
                <asp:CommandField ShowInsertButton="True" />
            </Fields>
            <HeaderStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
            <EditRowStyle BackColor="#7C6F57" />
            <AlternatingRowStyle BackColor="White" />
        </asp:DetailsView>
    </p>
    <asp:ValidationSummary ID="ValidationSummary1" runat="server" />
    <p>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" 
            ConnectionString="<%$ ConnectionStrings:mybookstoreConnectionString1 %>" 
            DeleteCommand="DELETE FROM [titles] WHERE [title_id] = @title_id" 
            InsertCommand="INSERT INTO [titles] ([pub_id], [au_id], [title], [price], [pubdate], [notes]) VALUES (@pub_id, @au_id, @title, @price, @pubdate, @notes)" 
            ProviderName="<%$ ConnectionStrings:mybookstoreConnectionString1.ProviderName %>" 
            SelectCommand="SELECT [title_id], [pub_id], [au_id], [title], [price], [pubdate], [notes] FROM [titles]" 
            UpdateCommand="UPDATE [titles] SET [pub_id] = @pub_id, [au_id] = @au_id, [title] = @title, [price] = @price, [pubdate] = @pubdate, [notes] = @notes WHERE [title_id] = @title_id">
            <DeleteParameters>
                <asp:Parameter Name="title_id" Type="Int32" />
            </DeleteParameters>
            <InsertParameters>
                <asp:Parameter Name="pub_id" Type="Int32" />
                <asp:Parameter Name="au_id" Type="Int32" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="pubdate" Type="DateTime" />
                <asp:Parameter Name="notes" Type="String" />
            </InsertParameters>
            <UpdateParameters>
                <asp:Parameter Name="pub_id" Type="Int32" />
                <asp:Parameter Name="au_id" Type="Int32" />
                <asp:Parameter Name="title" Type="String" />
                <asp:Parameter Name="price" Type="Decimal" />
                <asp:Parameter Name="pubdate" Type="DateTime" />
                <asp:Parameter Name="notes" Type="String" />
                <asp:Parameter Name="title_id" Type="Int32" />
            </UpdateParameters>
        </asp:SqlDataSource>
    </p>
    </form>
</body>
</html>
