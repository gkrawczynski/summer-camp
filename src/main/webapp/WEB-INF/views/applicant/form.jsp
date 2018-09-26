<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<title>Applicant Form</title>
<div class="textCenter">
<form:form action="/applicants/form" modelAttribute="applicant" method="POST">
    <h3 class="textCenter">Profile details</h3>
    <form:hidden path="id"/>
    <label>First Name:</label><br>
    <form:input path="firstName" placeholder="First name"/><br>
    <label>Last Name:</label><br>
    <form:input path="lastName" placeholder="Last name"/><br>
    <div class="form-group">
        <label>Date of birth:</label><br>
        <form:input path="dateOfBirth" type="date"/><br>
        <%--type='date'--%>
    </div>
    <label>Street:</label><br>
    <form:input path="street" placeholder="Street"/><br>
    <label>Postal Code:</label><br>
    <form:input path="postalCode" placeholder="Postal code"/><br>
    <label>Phone number:</label><br>
    <form:input path="phoneNumber" placeholder="Phone number"/><br><br>
    <label><input type="submit" value="Save"></label>
</form:form>
</div>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
