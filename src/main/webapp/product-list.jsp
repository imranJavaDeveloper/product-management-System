<%@ include file="menu.jsp" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <title>Product Table</title>
  <style>
    table {
      border-collapse: collapse;
      margin: auto;
      width: 80%;
      background-color: white;
      box-shadow: 0 4px 12px rgba(0,0,0,0.1);
      margin-top: 20px;
    }

    th, td {
      padding: 14px 20px;
      text-align: center;
      border-bottom: 1px solid #ddd;
    }

    th {
      background: linear-gradient(to bottom, #1abc9c, #16a085);
      color: white;
      cursor: pointer;
      user-select: none;
    }

    tr:hover {
      background-color: #f1f1f1;
    }

    tr:nth-child(even) td {
      background-color: #f9f9f9;
    }
  </style>
</head>
<body onload="makeActive('list')">
  <%
  Class.forName("com.mysql.cj.jdbc.Driver");
  Connection cn=DriverManager.getConnection("jdbc:mysql://localhost:3306/jsp12","root","mysql");
  Statement st=cn.createStatement();
  ResultSet rst=st.executeQuery("select * from productinfo");
  %>
  <table id="productTable">
    <thead>
      <tr>
        <th>Product Id</th>
        <th>Product Name</th>
        <th>Product Brand</th>
        <th>Product Price</th>
      </tr>
    </thead>
    <tbody>
      <% 
      while(rst.next())
      { %>
         <tr>
            <td><%=rst.getString(1)%></td>
            <td><%=rst.getString(2)%></td>
            <td><%=rst.getString(3)%></td>
            <td><%=rst.getString(4)%></td>
         </tr>
      <%}%>
    </tbody>
  </table>
</body>
</html>
