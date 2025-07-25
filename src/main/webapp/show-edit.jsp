<%@ page import="java.sql.*" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Edit Product</title>
  <style>
    .taf {
      margin: 50px auto;
      border-collapse: collapse;
      width: 500px;
      box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
      font-family: 'Segoe UI', sans-serif;
    }
    .taf th {
      background: linear-gradient(to right, #43cea2, #185a9d);
      color: white;
      padding: 15px;
      font-size: 22px;
    }
    .taf td {
      padding: 12px 15px;
      font-size: 16px;
    }
    .tb {
      width: 100%;
      padding: 10px;
      font-size: 16px;
      border: 1px solid #ccc;
      border-radius: 5px;
    }
    .bt {
      padding: 10px 18px;
      font-size: 16px;
      margin-left: 8px;
      border: none;
      border-radius: 5px;
      cursor: pointer;
      background-color: #4CAF50;
      color: white;
      transition: 0.3s ease;
    }
    .bt:hover {
      background-color: #388e3c;
    }
    .bt.cancel {
      background-color: #f44336;
    }
    .bt.cancel:hover {
      background-color: #d32f2f;
    }
    .dvv {
      text-align: center;
      margin-top: 30px;
    }
  </style>
</head>
<body onload='makeActive("edit")'>
<%
  String pid = request.getParameter("pid");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp12", "root", "mysql");
  PreparedStatement ps = cn.prepareStatement("select * from productinfo where pid=?");
  ps.setString(1, pid);
  ResultSet rst = ps.executeQuery();
  if (rst.next()) {
%>
 <%@ include file="menu.jsp" %>
  <form action="update-record.jsp" method="post">
    <table class="taf">
      <tr>
        <th colspan="2">&#9881;&#65039; Update Product</th>
      </tr>
      <tr>
        <td>Product ID</td>
        <td><input type="text" name="pid" class="tb" value="<%= pid %>" readonly></td>
      </tr>
      <tr>
        <td>Edit Product Name</td>
        <td><input type="text" name="name" class="tb" value="<%= rst.getString(2) %>" required></td>
      </tr>
      <tr>
        <td>Edit Product Brand</td>
        <td><input type="text" name="brand" class="tb" value="<%= rst.getString(3) %>" required></td>
      </tr>
      <tr>
        <td>Edit Product Price</td>
        <td><input type="text" name="price" class="tb" value="<%= rst.getString(4) %>" required></td>
      </tr>
      <tr>
        <td colspan="2" align="right">
          <button class="bt">Update</button>
          <button type="button" class="bt cancel" onclick="history.back()">Cancel</button>
        </td>
      </tr>
    </table>
  </form>
<%
  } else {
%>
  <jsp:include page="edit-form.jsp" />
  <div class="dvv">
    <h3 style="color:red;">Product record with ID <%= pid %> does not exist</h3>
  </div>
<%
  }
%>
</body>
</html>
