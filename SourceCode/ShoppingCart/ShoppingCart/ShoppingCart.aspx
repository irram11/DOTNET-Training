<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ShoppingCart.aspx.cs" Inherits="ShoppingCart.ShoppingCart" %>

<!DOCTYPE html>

 
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <link href="Content/cart.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div class="outer">
            <div class="header">
                <div class="logo">
                    <h3>Shopping Cart</h3>
                </div>
                <div class="login">
                           <asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
                    <asp:Button ID="btnLogout" runat="server" Text="Logout" OnClick="btnLogout_Click" />
                </div>
                <div class="menu">
                    <ul>
                        <li>
                            <a href="Home.aspx">Home</a>
                        </li>
                        <li>
                            <a href="ShoppingCart.aspx">Shopping Cart</a>
                        </li>
                    </ul>
                </div>
            </div>
            <div class="list">
                <div id="EmptyCart" runat="server">Cart Empty !</div>
                <div id="CartItems" runat="server">
                    <table class="cartlist" cellspacing="0">
                    <thead>
                        <tr>
                            <td>Image</td>
                            <td>Product</td>
                            <td>Price</td>
                            <td>Quantity</td>
                            <td>Total</td>
                        </tr>
                    </thead>
                    <tbody>
                        <asp:Repeater ID="cartlist" runat="server">
                            <ItemTemplate>
                                <tr>
                            <td>
                                <div class="p_img">
                                    <img src="<%# Eval("ProductImage") %>" />
                                </div>
                            </td>
                            <td>
                                <div class="p_name"><span><%# Eval("ProductName") %></span></div>
                            </td>
                            <td>
                                <div class="p_price"><%# Eval("ProductPrice") %> USD</div>
                            </td>
                            <td><%# Eval("Quantity") %>
                            </td>
                            <td><%# Eval("Total") %> USD
                            </td>
                        </tr>
                            </ItemTemplate>
                        </asp:Repeater>

                         
                    </tbody>
                </table>
                        <div class="p_cart">
                        <asp:Button ID="btnAddtoCart" OnClick="btnAddtoCart_Click" runat="server" Text="Checkout" />
                    </div>

                </div>
                
            
            </div>
        </div>
    </form>
</body>
</html>

