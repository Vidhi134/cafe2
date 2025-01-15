<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Reports.aspx.cs" Inherits="cafe2.Report" %>

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
            background-color: #4CAF50;
            color: white;
            text-align: center;
            padding: 15px;
            font-size: 24px;
        }

        .container {
            max-width: 1200px;
            margin: 20px auto;
            padding: 15px;
        }

        .report-grid {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
        }

        .report-card {
            background-color: #fff;
            border-radius: 10px;
            box-shadow: 0 6px 10px rgba(0, 0, 0, 0.1);
            margin: 20px;
            padding: 20px;
            transition: transform 0.2s, box-shadow 0.2s;
            width: 100%;
            max-width: 400px;
        }

        .report-card:hover {
            transform: translateY(-5px);
            box-shadow: 0 12px 20px rgba(0, 0, 0, 0.2);
        }

        .report-card h3 {
            margin-bottom: 15px;
            font-size: 20px;
            color: #333;
        }

        .report-card .button-group {
            display: flex;
            justify-content: space-between;
            margin-top: 15px;
        }

        .button-group button {
            padding: 10px 15px;
            border: none;
            border-radius: 5px;
            color: white;
            cursor: pointer;
            transition: background-color 0.2s ease;
        }

        .btn-add {
            background-color: #28a745;
        }

        .btn-add:hover {
            background-color: #218838;
        }

        .btn-edit {
            background-color: #007bff;
        }

        .btn-edit:hover {
            background-color: #0056b3;
        }

        .btn-delete {
            background-color: #dc3545;
        }

        .btn-delete:hover {
            background-color: #c82333;
        }

        @media (max-width: 768px) {
            .report-card {
                width: 90%;
            }
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             </div>
        <div class="container">
            <h2>Available Reports</h2>
            <div class="report-grid">
                <!-- Report 1 -->
                <div class="report-card">
                    <h3>Sales Report</h3>
                    <div class="button-group">
                        <button class="btn-add" onclick="addReport('Sales Report'); return false;">Add</button>
                        <button class="btn-edit" onclick="editReport('Sales Report'); return false;">Edit</button>
                        <button class="btn-delete" onclick="deleteReport('Sales Report'); return false;">Delete</button>
                    </div>
                </div>
                <!-- Report 2 -->
                <div class="report-card">
                    <h3>Inventory Report</h3>
                    <div class="button-group">
                        <button class="btn-add" onclick="addReport('Inventory Report'); return false;">Add</button>
                        <button class="btn-edit" onclick="editReport('Inventory Report'); return false;">Edit</button>
                        <button class="btn-delete" onclick="deleteReport('Inventory Report'); return false;">Delete</button>
                    </div>
                </div>
                <!-- Report 3 -->
                <div class="report-card">
                    <h3>User Activity Report</h3>
                    <div class="button-group">
                        <button class="btn-add" onclick="addReport('User Activity Report'); return false;">Add</button>
                        <button class="btn-edit" onclick="editReport('User Activity Report'); return false;">Edit</button>
                        <button class="btn-delete" onclick="deleteReport('User Activity Report'); return false;">Delete</button>
                    </div>
                </div>
            </div>
        </div>

         <script>
        // Add Report Functionality
        function addReport(reportType) {
            alert("Add functionality for: " + reportType);
            // Use AJAX or backend postback logic for adding the report.
        }

        // Edit Report Functionality
        function editReport(reportType) {
            alert("Edit functionality for: " + reportType);
            // Use AJAX or backend postback logic for editing the report.
        }

        // Delete Report Functionality
        function deleteReport(reportType) {
            if (confirm("Are you sure you want to delete the " + reportType + "?")) {
                alert("Delete functionality for: " + reportType);
                // Use AJAX or backend postback logic for deleting the report.
            }
        }
    </script>
    </form>
</body>
</html>
