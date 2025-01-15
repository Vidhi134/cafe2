<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="cafe2.Login1" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Cafe Management System</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            margin: 0;
            padding: 0;
            background: linear-gradient(to bottom, #66bb6a, #388e3c);
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }
        .container {
            background: #ffffff;
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 5px 15px rgba(0, 0, 0, 0.2);
            text-align: center;
            width: 350px;
            color: #388e3c;
        }
        .container h3 {
            margin-bottom: 30px;
            font-size: 24px;
            font-weight: bold;
        }
        .btn {
            display: inline-block;
            width: 100%;
            padding: 15px;
            margin: 10px 0;
            font-size: 18px;
            font-weight: bold;
            border: none;
            border-radius: 8px;
            color: #fff;
            cursor: pointer;
            transition: background-color 0.3s ease-in-out;
        }
        .btn-user {
            background-color: #66bb6a;
        }
        .btn-user:hover {
            background-color: #388e3c;
        }
        .btn-admin {
            background-color: #43a047;
        }
        .btn-admin:hover {
            background-color: #2e7d32;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div class="container">
            <h3>Choose Login Type</h3>
            <asp:Button ID="btnUserLogin" runat="server" CssClass="btn btn-user" Text="User Login" OnClick="btnUserLogin_Click" />
            <br /><br />
            <asp:Button ID="btnAdminLogin" runat="server" CssClass="btn btn-admin" Text="Admin Login" OnClick="btnAdminLogin_Click" />
        </div>
    </form>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>
