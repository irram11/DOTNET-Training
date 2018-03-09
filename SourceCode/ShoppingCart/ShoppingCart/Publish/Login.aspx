<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="ShoppingCart.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>login</title>
    <link rel="stylesheet" href="Content/Style.css" />
</head>
<body>
        <form id="form1" runat="server">
        <div class="Login">
            <h3>Shopping Cart</h3>
            
                <div>
                <asp:Label ID="Label1" runat="server" Text="Username"></asp:Label>
                <asp:TextBox ID="TextUserName" runat="server"></asp:TextBox>

            </div>
            <div><p>
                <asp:Label ID="Label2" runat="server" Text="Password"></asp:Label>
                <asp:TextBox ID="TextPassword" runat="server"></asp:TextBox>

            </p></div>
            <div class="Outer">
                <asp:Button ID="Button1" runat="server" Text="Login" OnClick="Button1_Click" />

               
            </div>
        </div>
    </form>
</body>
</html>
