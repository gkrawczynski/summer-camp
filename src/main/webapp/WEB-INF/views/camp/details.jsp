<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<html>
<head>
    <title>Camp Details</title>
</head>
<body>

<ul class="textCenter">
    <h3>Camp details</h3>
    Name:           <c:out value="${camp.name}"/><br>
    Type:           <c:out value="${camp.campType.name}"/><br>
    Size:           <c:out value="${camp.size}"/><br>
    Country:        <c:out value="${camp.country.name}"/><br>
    State:          <c:out value="${camp.state}"/><br>
    City:           <c:out value="${camp.city.name}"/><br>
    Street:         <c:out value="${camp.street}"/><br>
    Postal code:    <c:out value="${camp.postalCode}"/><br>
    Email:          <c:out value="${camp.email}"/><br>
    Phone number:   <c:out value="${camp.phoneNumber}"/><br>
    Description:   <c:out value="${camp.description}"/><br><br>
    <hr>
</ul>

</body>
</html>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
