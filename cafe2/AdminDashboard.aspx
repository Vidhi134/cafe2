<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="AdminDashboard.aspx.cs" Inherits="cafe2.AdminDashboard" %>

<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Admin Dashboard</title>
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
            width: 80px;
            margin-bottom: 15px;
        }
        .card h3 {
            margin: 15px 0;
            font-size: 20px;
            color: #333;
        }
        .content-section {
            display: none;
        }
        .content-section.active {
            display: block;
            margin: 20px;
        }
        .logout {
            display: block;
            text-align: center;
            margin: 30px auto;
            padding: 10px 20px;
            width: 150px;
            text-decoration: none;
            color: white;
            background-color: #4CAF50;
            border-radius: 5px;
            font-weight: bold;
            transition: background-color 0.3s;
        }
        .logout:hover {
            background-color: #45a049;
        }
        .menu-form, .inventory-form {
            display: flex;
            flex-direction: column;
            max-width: 500px;
            margin: auto;
        }
        .menu-form input, .inventory-form input {
            margin-bottom: 10px;
            padding: 10px;
            border: 1px solid #ccc;
            border-radius: 5px;
        }
        .menu-form button, .inventory-form button {
            padding: 10px;
            background-color: #4CAF50;
            color: white;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        .menu-form button:hover, .inventory-form button:hover {
            background-color: #45a049;
        }
        .item-list {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 10px;
            border-bottom: 1px solid #ccc;
        }
        .item-list button {
            background-color: transparent;
            border: none;
            cursor: pointer;
            color: #4CAF50;
        }
        .item-list button:hover {
            color: #45a049;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <div class="header">
                <h1>Admin Dashboard</h1>
            </div>
            <div class="dashboard-container">
                <!-- Menu Items -->
                <div class="card" onclick="showSection('menuItemsSection')">
                    <img src="menu.png" alt="Menu Items">
                    <h3>Menu Items</h3>
                </div>
                <!-- Manage Users -->
                <div class="card" onclick="showSection('usersSection')">
                    <img src="users.png" alt="Users">
                    <h3>Manage Users</h3>
                </div>
                <!-- Manage Inventory -->
                <div class="card" onclick="showSection('inventorySection')">
                    <img src="inventory.png" alt="Inventory">
                    <h3>Manage Inventory</h3>
                </div>
                <!-- View Sales -->
                <div class="card" onclick="showSection('salesSection')">
                    <img src="sales.png" alt="Sales">
                    <h3>View Sales</h3>
                </div>
            </div>
            <div class="content-section" id="menuItemsSection">
                <h2>Menu Items</h2>
                <div id="menuItemsList">
                    <div class="item-list" data-id="1">
                        <span>Coffee - $5.00</span>
                        <div>
                            <button type="button" onclick="editMenuItem(this)">Edit</button>
                            <button type="button" onclick="deleteMenuItem(this)">Delete</button>
                        </div>
                    </div>
                </div>
                <h3>Add / Update Menu Item</h3>
                <div class="menu-form">
                    <input type="hidden" id="menuItemId" value="">
                    <input type="text" id="menuItemName" placeholder="Item Name">
                    <input type="number" id="menuItemPrice" placeholder="Item Price">
                    <button type="button" onclick="addOrUpdateMenuItem()">Save</button>
                </div>
            </div>
            <div class="content-section" id="usersSection">
                <h2>Manage Users</h2>
                <p>Details about user management...</p>
            </div>
            <div class="content-section" id="inventorySection">
                <h2>Manage Inventory</h2>
                <div id="inventoryItemsList">
                    <div class="item-list" data-id="1">
                        <span>Milk - 20 units</span>
                        <div>
                            <button type="button" onclick="editInventoryItem(this)">Edit</button>
                            <button type="button" onclick="deleteInventoryItem(this)">Delete</button>
                        </div>
                    </div>
                </div>
                <h3>Add / Update Inventory Item</h3>
                <div class="inventory-form">
                    <input type="hidden" id="inventoryItemId" value="">
                    <input type="text" id="inventoryItemName" placeholder="Item Name">
                    <input type="number" id="inventoryItemQuantity" placeholder="Item Quantity">
                    <button type="button" onclick="addOrUpdateInventoryItem()">Save</button>
                </div>
            </div>
            <div class="content-section" id="salesSection">
                <h2>View Sales</h2>
                <p>Details about sales...</p>
            </div>
            <a href="Login.aspx" class="logout">Logout</a>
        </div>
    </form>
    <script>
        function showSection(sectionId) {
            document.querySelectorAll('.content-section').forEach(section => {
                section.classList.remove('active');
            });
            document.getElementById(sectionId).classList.add('active');
        }

        function addOrUpdateMenuItem() {
            const id = document.getElementById('menuItemId').value;
            const name = document.getElementById('menuItemName').value;
            const price = document.getElementById('menuItemPrice').value;

            if (!name || !price) {
                alert('Please fill in all fields');
                return;
            }

            if (id) {
                // Update existing item
                const itemDiv = document.querySelector(`.item-list[data-id='${id}']`);
                itemDiv.querySelector('span').innerText = `${name} - $${price}`;
            } else {
                // Add new item
                const newItemId = Date.now().toString();
                const newItem = document.createElement('div');
                newItem.className = 'item-list';
                newItem.setAttribute('data-id', newItemId);
                newItem.innerHTML = `<span>${name} - $${price}</span>
                                     <div>
                                         <button type="button" onclick="editMenuItem(this)">Edit</button>
                                         <button type="button" onclick="deleteMenuItem(this)">Delete</button>
                                     </div>`;
                document.getElementById('menuItemsList').appendChild(newItem);
            }

            // Reset form
            document.getElementById('menuItemId').value = '';
            document.getElementById('menuItemName').value = '';
            document.getElementById('menuItemPrice').value = '';
        }

        function editMenuItem(button) {
            const itemDiv = button.parentElement.parentElement;
            const [name, price] = itemDiv.querySelector('span').innerText.split(' - $');
            document.getElementById('menuItemId').value = itemDiv.getAttribute('data-id');
            document.getElementById('menuItemName').value = name;
            document.getElementById('menuItemPrice').value;
            // Update the input fields
        }

        function deleteMenuItem(button) {
            if (confirm('Are you sure you want to delete this item?')) {
                button.parentElement.parentElement.remove();
            }
        }

        function addOrUpdateInventoryItem() {
            const id = document.getElementById('inventoryItemId').value;
            const name = document.getElementById('inventoryItemName').value;
            const quantity = document.getElementById('inventoryItemQuantity').value;

            if (!name || !quantity) {
                alert('Please fill in all fields');
                return;
            }

            if (id) {
                // Update existing item
                const itemDiv = document.querySelector(`.item-list[data-id='${id}']`);
                itemDiv.querySelector('span').innerText = `${name} - ${quantity} units`;
            } else {
                // Add new item
                const newItemId = Date.now().toString();
                const newItem = document.createElement('div');
                newItem.className = 'item-list';
                newItem.setAttribute('data-id', newItemId);
                newItem.innerHTML = `<span>${name} - ${quantity} units</span>
                                     <div>
                                         <button type="button" onclick="editInventoryItem(this)">Edit</button>
                                         <button type="button" onclick="deleteInventoryItem(this)">Delete</button>
                                     </div>`;
                document.getElementById('inventoryItemsList').appendChild(newItem);
            }

            // Reset form
            document.getElementById('inventoryItemId').value = '';
            document.getElementById('inventoryItemName').value = '';
            document.getElementById('inventoryItemQuantity').value = '';
        }

        function editInventoryItem(button) {
            const itemDiv = button.parentElement.parentElement;
            const [name, quantity] = itemDiv.querySelector('span').innerText.split(' - ');
            document.getElementById('inventoryItemId').value = itemDiv.getAttribute('data-id');
            document.getElementById('inventoryItemName').value = name;
            document.getElementById('inventoryItemQuantity').value = quantity.split(' ')[0];
        }

        function deleteInventoryItem(button) {
            if (confirm('Are you sure you want to delete this item?')) {
                button.parentElement.parentElement.remove();
            }
        }
    </script>
</body>
</html>
