<%@ Page Language="C#" AutoEventWireup="true"  CodeFile="Signup.aspx.cs" Inherits="_Default" %>
<%@ Register src="controls/Header.ascx" tagname="Header" tagprefix="uc1" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>The Night Owl</title>
    <link href="styles.css" rel="stylesheet" type="text/css" />
</head>
<body>
    <form id="form1" runat="server">
    <asp:Panel ID="Panel1" runat="server">
        <img alt="The Night Owl" 
            src="Images/bookshelf.jpg" 
            width="800" height="110"/>
        </asp:Panel>
    <p>
                <asp:CreateUserWizard ID="CreateUserWizard1" runat="server" BackColor="#E3EAEB" 
            BorderColor="#E6E2D8" BorderStyle="Solid" BorderWidth="1px" 
            Font-Names="Verdana" Font-Size="0.8em" ContinueDestinationPageUrl="~/Login.aspx">
                    <SideBarStyle BackColor="#1C5E55" Font-Size="0.9em" VerticalAlign="Top" />
                    <SideBarButtonStyle ForeColor="White" />
                    <ContinueButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#1C5E55" />
                    <NavigationButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#1C5E55" />
                    <HeaderStyle BackColor="#666666" BorderColor="#E6E2D8" BorderStyle="Solid" 
                BorderWidth="2px" Font-Bold="True" Font-Size="0.9em" ForeColor="White" 
                HorizontalAlign="Center" />
                    <CreateUserButtonStyle BackColor="White" BorderColor="#C5BBAF" 
                BorderStyle="Solid" BorderWidth="1px" Font-Names="Verdana" 
                ForeColor="#1C5E55" />
                    <TitleTextStyle BackColor="#1C5E55" Font-Bold="True" ForeColor="White" />
                    <StepStyle BorderWidth="0px" />
                    <WizardSteps>
                        <asp:CreateUserWizardStep runat="server" />
                        <asp:CompleteWizardStep runat="server" />
                    </WizardSteps>
                </asp:CreateUserWizard>
    </p>
    </form>
</body>
</html>
