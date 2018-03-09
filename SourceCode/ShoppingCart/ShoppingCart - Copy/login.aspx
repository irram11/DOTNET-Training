<%@ Page Language="vb" AutoEventWireup="false" CodeBehind="login.aspx.vb" Inherits="ShoppingCart.login1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
                <asp:Button ID="Button1" runat="server" Text="Login" />

               
            </div>
        </div>
    </form>
</body>
</html>
