<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<style>
h2{text-align: center;
color: #FFFFFF;
font-size: 40px;}
body {
  background-image: url('pictures/g.jpg');
}
table {
  border-collapse: collapse;
  width: 85%;
}

th, td {
  padding: 8px;
  text-align: center;
  border-bottom: 1px solid #DDD;
  font-size: 17px;
  font-family: Bahnschrift SemiBold;
}
table.center {
  margin-left: auto; 
  margin-right: auto;
}
a {
font-size: 20px;
text-align: right;
font-family: Bahnschrift SemiBold;
color: #FFFFFF;
}
tr:hover {background-color: #000000;

}
</style>
</head>
<body>

<h2><p style = "font-family:Bahnschrift SemiBold">ORDER SUMMARY</p></h2>


${table}
<br>
<br>
<div style="text-align:center">
<a href = "site.jsp">RETURN</a>
</div>

</body>
</html>