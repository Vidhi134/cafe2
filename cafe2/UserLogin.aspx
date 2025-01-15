<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="UserLogin.aspx.cs" Inherits="cafe2.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>User Login</title>
    <style>
        body {
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            background: linear-gradient(to bottom, #4CAF50, #2E7D32);
            margin: 0;
            padding: 0;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            color: #fff;
        }
        .login-container {
            background: #ffffff;
            border-radius: 10px;
            padding: 30px 40px;
            width: 350px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.2);
            text-align: center;
            color: #333;
        }
        .login-container h2 {
            margin-bottom: 20px;
            color: #4CAF50;
        }
        .input-group {
            margin-bottom: 20px;
            text-align: left;
        }
        .input-group label {
            display: block;
            margin-bottom: 5px;
            font-weight: bold;
        }
        .input-group input {
            width: 100%;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
            font-size: 16px;
        }
        .login-btn {
            background-color: #4CAF50;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-size: 18px;
            font-weight: bold;
        }
        .login-btn:hover {
            background-color: #2E7D32;
        }
        .forgot-password {
            margin-top: 10px;
            display: block;
            font-size: 14px;
            color: #4CAF50;
            text-decoration: none;
        }
        .forgot-password:hover {
            text-decoration: underline;
        }
    </style>

</head>
<body>
    <form id="form1" runat="server">
       <div class="login-container">
        <h2>User Login</h2>
            <div class="input-group">
                <label for="username">Username</label>
                <asp:TextBox ID="txtUsername" runat="server" CssClass="form-input" Placeholder="Enter your username"></asp:TextBox>
            </div>
            <div class="input-group">
                <label for="password">Password</label>
                <asp:TextBox ID="txtPassword" runat="server" CssClass="form-input" TextMode="Password" Placeholder="Enter your password"></asp:TextBox>
            </div>
            <asp:Button ID="btnLogin" runat="server" Text="Login" CssClass="login-btn" OnClick="btnLogin_Click" />
            <a href="#" class="forgot-password">Forgot your password?</a><br />
           <asp:Label ID="Label1" runat="server"></asp:Label>
&nbsp;</div>
        </form>
</body>
</html>
