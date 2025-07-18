<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Delete Success</title>
  <style>
   
    .success-box {
      width: 500px;
      margin: auto;
      margin-top: 20px;
      background-color: #fff;
      border-left: 6px solid #d32f2f;
      border-radius: 8px;
      box-shadow: 0 6px 14px rgba(0,0,0,0.1);
      padding: 25px;
      text-align: center;
    }

    .success-box h2 {
      color: #d32f2f;
      margin-bottom: 15px;
    }

    .btn {
      background-color: #d32f2f;
      color: white;
      padding: 10px 20px;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      font-size: 15px;
      transition: background-color 0.3s;
      margin-top: 20px;
    }

    .btn:hover {
      background-color: #b71c1c;
    }

    .icon {
      font-size: 40px;
      color: #d32f2f;
      margin-bottom: 10px;
    }
  </style>
</head>
<body onload='makeActive("delete")'>

<%
  String pid = request.getParameter("pid");
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp12", "root", "mysql");
  PreparedStatement ps = cn.prepareStatement("delete from productinfo where pid=?");
  ps.setString(1, pid);
  ps.executeUpdate();
%>

<div class="success-box">
  <div class="icon">🗑️</div>
  <h2>Product Deleted Successfully</h2>
  <p>Product with ID <strong><%= pid %></strong> has been removed from the system.</p>
  <form action="product-list.jsp">
    <button class="btn">Back to Product List</button>
  </form>
</div>
</body>
</html>
