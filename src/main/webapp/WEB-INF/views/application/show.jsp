<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<html>
<head>
    <title>Application Show</title>
</head>


<ul class="textCenter">
    <h3>Application details</h3>
    <label> Name:</label>     <c:out value="${application.name}"/><br>
    <label> Applicant:</label>      <c:out value="${application.lastName}"/><br>
    <label> Program:</label>  <c:out value="${application.dateOfBirth}"/><br>
    <label> Camp:</label>         <c:out value="${application.street}"/><br>
    <label><a class="btn btn-primary" href="/applications/edit/<c:out value="${application.id}"/>"><i class="icon-cog"></i>Edit Application</a></label>

    <hr>
</ul>

<%--
<label> Name:</label><br>
        <form:input path="name"/><br>
        <label> Applicant:</label><br>
        <form:input path="program"/><br>
        <label> Program:</label><br>
        <form:input path="street"/><br>
        <label> Camp:</label><br>
        <form:input path="camp"/><br>
--%>

</body>
</html>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>