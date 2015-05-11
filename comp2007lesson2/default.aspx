<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="default.aspx.cs" Inherits="comp2007lesson2._default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Lesson 2 Home Page</title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
        <asp:Label ID="lblFirstName" runat="server"></asp:Label>
        <asp:Literal ID="ltlFirstName" runat="server"></asp:Literal>
        <asp:TextBox ID="txtFirstName" runat="server"></asp:TextBox>
        <asp:Button ID="btnSubmit" runat="server" Text="Click Me" OnClick="btnSubmit_Click" />
        <asp:Label ID="lblx" runat="server" Visible="false"></asp:Label>


    </div>
    <div>
        <asp:Literal ID="ltlToppings" runat="server"></asp:Literal>
        <asp:DropDownList ID="ddlCountry" runat="server">
            <asp:ListItem Value="1" Text="Canada"></asp:ListItem>
            <asp:ListItem Value="2" Text="Brazil"></asp:ListItem>
            <asp:ListItem Value="3" Text="India"></asp:ListItem>
        </asp:DropDownList>
        <asp:CheckBoxList runat="server" ID="cblToppings">
            <asp:ListItem Value="1" Text="Pepperoni"></asp:ListItem>
            <asp:ListItem Value="2" Text="Bacon"></asp:ListItem>
            <asp:ListItem Value="3" Text="Ham"></asp:ListItem>
        </asp:CheckBoxList>
        <asp:Button ID="btnSelections" runat="server" Text="Show Selections" OnClick="btnSelections_Click" />
    </div>
    </form>
</body>
</html>
