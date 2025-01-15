<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserDashboard.aspx.cs" Inherits="cafe2.UserDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Dashboard</title>
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
        .dashboard-container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            margin: 30px auto;
            max-width: 1200px;
        }
        .card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.1);
            margin: 20px;
            padding: 25px;
            width: 280px;
            text-align: center;
            transition: transform 0.2s, box-shadow 0.2s;
            cursor: pointer;
        }
        .card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2);
        }
        .card img {
            margin-bottom: 15px;
        }
        .card h3 {
            margin: 15px 0;
            font-size: 20px;
            color: #333;
        }
        .logout {
            display: block;
            text-align: center;
            margin: 30px auto;
            padding: 10px 20px;
            width: 150px;
            text-decoration: none;
            color: white;
            background-color: #3498db;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .logout:hover {
            background-color: #2980b9;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">User Dashboard</div>
            <div class="dashboard-container">
                <!-- View Menu Card -->
                <div class="card" onclick="document.getElementById('<%= btnViewMenu.ClientID %>').click();">
                    <img src="Menu.jpeg" alt="Menu Items" />
                    <h3>View Menu</h3>
                    <asp:Button ID="btnViewMenu" runat="server" Text="View Menu" OnClick="btnViewMenu_Click" style="display: none;" />
                </div>
                <!-- My Orders Card -->
                <div class="card" onclick="alert('My Orders feature coming soon!')">
                    <img src="Images.jpeg" alt="Orders" />
                    <h3>My Orders</h3>
                </div>
                <!-- Feedback Card -->
                <div class="card" onclick="alert('Feedback feature coming soon!')">
                    <img src="feedback.jpg" alt="Feedback" />
                    <h3>Feedback</h3>
                </div>
            </div>
            <a href="Login.aspx" class="logout">Logout</a>
        </div>
    </form>
</body>
</html>
