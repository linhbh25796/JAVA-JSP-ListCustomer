<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.Date" %>
<%@ page import="model.Customer" %>
<%@ page import="java.text.SimpleDateFormat" %>
<%@ page import="java.text.ParseException" %>
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
//    SimpleDateFormat simpleDateFormat = new SimpleDateFormat("dd/MM/YYYY");
    String sDate1, sDate2, sDate3;
    sDate1 = "31/12/1998";
    sDate2 = "30/10/1997";
    sDate3 = "02/02/1996";

//
//        date = new SimpleDateFormat("dd/MM/yyyy").parse(sDate1);
//        date1 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate2);
//        date2 = new SimpleDateFormat("dd/MM/yyyy").parse(sDate3);
//
    System.out.println(">>> "+new Date());
    Customer cus_1 = new Customer("Nene", sDate1, "Hanoi", "image1.jpg");
    Customer cus_2 = new Customer("Nene pro", sDate2, "Hai Phong", "image2.png");
    Customer cus_3 = new Customer("Anh", sDate3, "Quang Ninh", "image3.jpg");
    list.add(cus_1);
    list.add(cus_2);
    list.add(cus_3);
    pageContext.setAttribute("list1", list);
%>
<table border="1px">
    <tr>
        <td>Name</td>
        <td>Birthday</td>
        <td>Address</td>
        <td>Image</td>
    </tr>
    <c:forEach var="customer" items="#{list1}">
        <tr>
            <td><c:out value="${customer.getName()}"></c:out></td>
            <td><c:out value="${customer.getBirth()}"></c:out></td>
            <td><c:out value="${customer.getAddress()}"></c:out></td>
            <td><img width="150px" height="150px" src="Image/<c:out value="${customer.getImage()}"/>"></td>
        </tr>
    </c:forEach>
</table>

</body>
</html>