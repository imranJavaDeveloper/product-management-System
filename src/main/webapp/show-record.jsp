<%@ page contentType="text/html;charset=UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Product Search Result</title>
  <style>
   .product-card {
      width: 500px;
      margin: auto;
      margin-top:50px;
      background: #fff;
      border-radius: 10px;
      box-shadow: 0 6px 14px rgba(0, 0, 0, 0.1);
      overflow: hidden;
    }

    .product-card h2 {
      margin: 0;
      padding: 8px;
      background: linear-gradient(to right, #ff8c00, #ffa500);
      color: white;
      font-size: 24px;
      text-align: center;
    }

    table {
      width: 100%;
      border-collapse: collapse;
    }

    th, td {
      padding: 12px 18px;
      text-align: left;
      border-bottom: 1px solid #eaeaea;
    }

    tr:hover td {
      background-color: #f5f5f5;
    }

    .not-found {
      max-width:500px;
      margin: 40px auto;
      background-color: #ffeaea;
      color: #d32f2f;
      border: 1px solid #f5c2c7;
      padding: 20px;
      border-radius: 8px;
      text-align: center;
    }
  </style>
</head>
<body onload='makeActive("search")'>

<%
String pid=request.getParameter("pid");
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp12", "root", "mysql");
PreparedStatement ps = cn.prepareStatement("select * from productinfo where pid=?");
ps.setString(1, pid);
ResultSet rst = ps.executeQuery();
if (rst.next()) 
{
%>
  <%@ include file="menu.jsp" %>
  <div class="product-card">
    <h2>Product Details</h2>
    <table>
      <tr>
        <th>Product Id</th>
        <td><%= pid %></td>
      </tr>
      <tr>
        <th>Product Name</th>
        <td><%= rst.getString(2) %></td>
      </tr>
      <tr>
        <th>Product Brand</th>
        <td><%= rst.getString(3) %></td>
      </tr>
      <tr>
        <th>Product Price</th>
        <td>&#8377;<%= rst.getString(4) %></td>
      </tr>
    </table>
  </div>
<%
} else {
%>
  <jsp:include page="search-form.jsp" />
  <div class="not-found">
    <h4>❌ Product with ID <strong><%= pid %></strong> not found.</h4>
  </div>
<%
}
%>

</body>
</html>
