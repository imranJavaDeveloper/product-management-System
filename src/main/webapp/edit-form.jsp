<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Search Product</title>
  <link rel="stylesheet" href="CSS/form.css"> <!-- Shared form styles -->
  <style>
    .search-container {
      width: 500px;
      margin: 60px auto;
      background-color: #fff;
      border-radius: 12px;
      box-shadow: 0 6px 14px rgba(0, 0, 0, 0.1);
      overflow: hidden;
      font-family: 'Segoe UI', sans-serif;
    }

    .form-header {
      background: linear-gradient(to right, #f57c00, #fb8c00);
      color: white;
      font-size: 22px;
      text-align: center;
      padding: 8px;
    }

    .form-body {
      padding: 24px;
    }

    .form-group {
      margin-bottom: 18px;
    }

    .form-group label {
      display: block;
      font-weight: 500;
      margin-bottom: 6px;
      color: #34495e;
    }

    .form-group input {
      width: 100%;
      padding: 10px;
      border: 1px solid #ccc;
      border-radius: 6px;
      font-size: 16px;
    }

    .form-group input:focus {
      border-color: #1abc9c;
      box-shadow: 0 0 4px #1abc9c;
      outline: none;
    }

    .form-actions {
      text-align: right;
    }

    .form-actions button {
      background-color: orange;
      color: white;
      padding: 10px 20px;
      font-size: 16px;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      transition: background 0.3s ease;
    }

    .form-actions button:hover {
      background-color: #1e6391;
    }
  </style>
</head>
<body onload='makeActive("edit")'>
  <div class="search-container">
    <div class="form-header">
      &#9998; Edit Product
    </div>
    <form action="show-edit-record.jsp" method="get">
      <div class="form-body">
        <div class="form-group">
          <label for="pid">Enter Product ID</label>
          <input type="text" id="pid" name="pid" required>
        </div>
        <div class="form-actions">
          <button type="submit">Show Record</button>
        </div>
      </div>
    </form>
  </div>
</body>
</html>
