<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="OrdersPage.aspx.cs" Inherits="cafe2.OrdersPage" %>

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
        .orders-container {
            margin: 30px auto;
            max-width: 800px;
            background-color: white;
            padding: 20px;
            border-radius: 10px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.1);
        }
        .order-item {
            border-bottom: 1px solid #ddd;
            padding: 15px 0;
        }
        .order-item:last-child {
            border-bottom: none;
        }
        .order-item h4 {
            margin: 0 0 5px;
            font-size: 18px;
        }
        .order-item p {
            margin: 0;
            color: #555;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
     
            <div>
            <div class="header">My Orders</div>
            <div class="orders-container">
                <div class="order-item">
                    <h4>Order #1</h4>
                    <p>Item: Coffee</p>
                    <p>Quantity: 2</p>
                    <p>Price: $10</p>
                </div>
                <div class="order-item">
                    <h4>Order #2</h4>
                    <p>Item: Sandwich</p>
                    <p>Quantity: 1</p>
                    <p>Price: $5</p>
                </div>
                <!-- Add more orders here -->
            </div>
        </div>
    </form>

        </div>
    </form>
</body>
</html>
