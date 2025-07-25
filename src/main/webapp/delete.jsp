<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Delete Product</title>
  <style>
   .delete-form {
      width: 500px;
      margin: auto;
      margin-top: 50px;
      background-color: #fff;
      border-radius: 10px;
      box-shadow: 0 6px 14px rgba(0, 0, 0, 0.1);
      overflow: hidden;
    }

    .form-header {
      background: linear-gradient(to right, #d32f2f, #e53935);
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
      color: #333;
    }

    .form-group input {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 6px;
    }

    .form-group input:focus {
      border-color: #e53935;
      box-shadow: 0 0 5px #f44336;
      outline: none;
    }

    .form-actions {
      text-align: right;
    }

    .form-actions button {
      background-color: #e53935;
      color: white;
      padding: 10px 20px;
      font-size: 16px;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      transition: background-color 0.3s ease;
    }

    .form-actions button:hover {
      background-color: #c62828;
    }
  </style>
</head>
<body onload='makeActive("delete")'>
  <div class="delete-form">
    <div class="form-header">
      &#128465;&#65039; Delete Product
    </div>
    <form action="confirm-delete.jsp" method="get">
      <div class="form-body">
        <div class="form-group">
          <label for="pid">Enter Product ID</label>
          <input type="text" id="pid" name="pid" required>
        </div>
        <div class="form-actions">
          <button type="submit">Delete Record</button>
        </div>
      </div>
    </form>
  </div>
</body>
</html>
