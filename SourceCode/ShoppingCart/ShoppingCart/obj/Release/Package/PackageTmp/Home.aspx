<%@ Page Language="C#" AutoEventWireup="true" EnableEventValidation="false" CodeBehind="Home.aspx.cs" Inherits="ShoppingCart.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Home</title>
<link rel="stylesheet" href="Content/StyleTwo.css" />
</head>
<body>
  <form id="form1" runat="server">
        <div class="outer">
            <div class="header">
                <div id="logo_text">
                    <h1>Shopping cart</h1>
                </div>
            
          <div class="navbar">
  <a href="#home">Home</a>
  <a href="#news">News</a>
              <a href="ShoppingCart.aspx">Shopping Cart</a>
  <div class="dropdown">
    <button class="dropbtn">Model 
      <i class="fa fa-caret-down"></i>
    </button>
    <div class="dropdown-content">
      <a href="#">DW</a>
      <a href="#">Frogman</a>
      <a href="#">Rangeman</a>
    </div>
  </div> 
    <div class="search-container">
    <form action="/action_page.php">
        <input type="text" placeholder="Search.." name="search">
      <button type="submit">Submit</button>
    </form>
  </div>
</div>
                <div>
                  
                <div class="content">
                    <asp:Repeater ID="productContent" runat="server">
                        <ItemTemplate>
                            <div class="product">                                                    

                                <div id="p_img">
                                    <img src='<%#Eval("ProductImage") %>' />
                                </div>

                                <div class="description">
                                    <div class="P_name"><span><%#Eval("ProductName") %></span></div>
                                    <div class="price"><%#Eval("ProductPrice") %></div>
                                    <div class="cart">
                                        <asp:Button ID="btnAddtoCart" runat="server" Text="Add to cart" OnCommand="btnAddtoCart_Command" CommandArgument='<%#Eval("Productid") %>' />
                                    </div>
                                </div>


                            </div>

                        </ItemTemplate>
                    </asp:Repeater>
                </div>




            </div>
        </div>

    </form>
</body>
</html>
