<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="MenuPage.aspx.cs" Inherits="cafe2.Menu_page" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
     <style>
        body {
            font-family: 'Roboto', Arial, sans-serif;
            background-color: #f4f6f9;
            margin: 0;
            padding: 0;
        }
        .header {
            background-color: #3498db;
            color: white;
            padding: 15px;
            text-align: center;
            font-size: 24px;
        }
        .menu-container {
            max-width: 1200px;
            margin: 20px auto;
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }
        .menu-item {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.1);
            margin: 15px;
            width: 250px;
            text-align: center;
            padding: 20px;
            transition: transform 0.2s, box-shadow 0.2s;
        }
        .menu-item:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2);
        }
        .menu-item img {
            width: 100%;
            height: 150px;
            border-radius: 10px;
        }
        .menu-item h3 {
            margin: 10px 0;
            font-size: 18px;
            color: #333;
        }
        .menu-item span {
            display: block;
            margin-bottom: 10px;
            font-size: 16px;
        }
        .menu-item .availability {
            font-weight: bold;
        }
        .available {
            color: green;
        }
        .out-of-stock {
            color: red;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <div class="header">
            <h1>Cafe Menu</h1>
        </div>
        <div class="menu-container">
            <asp:Repeater ID="rptMenuItems" runat="server" OnItemCommand="rptMenuItems_ItemCommand">
                <ItemTemplate>
                    <div class="menu-item">
                        <img src='<%# Eval("ImageUrl") %>' alt='<%# Eval("Name") %>' />
                        <h3><%# Eval("Name") %></h3>
                        <span>Price: $<%# Eval("Price") %></span><span class="availability <%# (bool)Eval("IsAvailable") ? "available" : "out-of-stock" %>"><%# (bool)Eval("IsAvailable") ? "Available" : "Out of Stock" %></span></div>
                </ItemTemplate>
            </asp:Repeater>
        </div>
   
        </div>
    </form>
</body>
</html>
