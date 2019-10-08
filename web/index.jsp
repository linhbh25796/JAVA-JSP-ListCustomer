<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="model.Customer" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>List customer</title>
</head>
<body>
<%
    ArrayList<Customer> list = new ArrayList<>();
    Customer cus_1 = new Customer("Nene", "1996" ,"Hanoi","image1.jpg");
    Customer cus_2 = new Customer("Nene pro", "1995", "Hai Phong", "image2.png");
    Customer cus_3 = new Customer("Anh","1999" , "Quang Ninh", "image3.jpg");
    list.add(cus_1);
    list.add(cus_2);
    list.add(cus_3);
    pageContext.setAttribute("list", list);
%>
<table border="1px">
<tr>
    <td>Name</td>
    <td>Age</td>
    <td>Address</td>
    <td>Image</td>
</tr>
    <c:forEach var="customer" items="#{list}">
        <tr>
            <td><c:out value="${customer.getName()}"></c:out></td>
            <td><c:out value="${customer.getBirth()}"></c:out></td>
            <td><c:out value="${customer.getAddress()}"></c:out></td>
            <td><img width="150px"  height="150px" src="Image/<c:out value="${customer.getImage()}"/>"></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>