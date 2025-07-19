<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Product Management System | Product Insert</title>
  <style>
    .success-container {
      width: 500px;
      margin: 50px auto;
      background-color: #f0f8ff;
      border-radius: 10px;
      padding: 25px;
      text-align: center;
      box-shadow: 0 6px 14px rgba(0, 0, 0, 0.1);
    }

    .success-message {
      color: #388e3c;
      font-size: 24px;
      margin-bottom: 15px;
    }

    .btn {
      padding: 12px 20px;
      font-size: 16px;
      background-color: #388e3c;
      color: white;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      text-decoration: none;
      transition: background-color 0.3s;
    }

    .btn:hover {
      background-color: #2c6b2f;
    }
  </style>
</head>
<body onload="makeActive('insert')">
  <%
  //Statement to insert product details into table
   Class.forName("com.mysql.cj.jdbc.Driver");
   Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp12","root","mysql");
   PreparedStatement ps=cn.prepareStatement("insert into productinfo values(?,?,?,?)");
   ps.setString(1,request.getParameter("pid"));
   ps.setString(2,request.getParameter("name"));
   ps.setString(3,request.getParameter("brand"));
   ps.setString(4,request.getParameter("price"));
   ps.executeUpdate();
  %>
  <div class="success-container">
    <h2 class="success-message">Product record has been inserted successfully!</h2>
    <a href="product-list.jsp" class="btn">Back to Product List</a>
  </div>
</body>
</html>
