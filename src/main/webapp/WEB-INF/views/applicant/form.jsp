<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<html>
<head>
    <title>Applicant Form</title>
</head>
<body>

<div class="textCenter">
<form:form action="/applicants/form" modelAttribute="applicant" method="POST">
    <h3 class="textCenter">Profile details</h3>
    <form:hidden path="id"/>
    <label>First Name:</label><br>
    <form:input path="firstName"/><br>
    <label>Last Name:</label><br>
    <form:input path="lastName"/><br>
    <div class="form-group">
        <label>Date of birth:</label><br>
        <form:input path="dateOfBirth" type='date'/>
    </div>
    <label>Street:</label><br>
    <form:input path="street"/><br>
    <label>Street Number:</label><br>
    <form:input path="streetNumber"/><br>
    <label>Postal Code:</label><br>
    <form:input path="postalCode"/><br>
    <label>Phone number:</label><br>
    <form:input path="phoneNumber"/><br><br>
    <label><input type="submit" value="Save"></label>
</form:form>
</div>

</body>
</html>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>

<%--
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<form action='/order/add' method='post'>
    <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-label="Close"><span aria-hidden="true">&times;</span></button>
        <h4 class="modal-title">Dodaj Zlecenie:</h4>
        <div class="formValid editor-add"
             <c:if test='${fn:length(formInfoAdding) gt 0}'>data-is-valid="0"</c:if>
             <c:if test='${fn:length(formInfoAdding) gt 0}'>data-location="${previousServletPath}"</c:if>
        >
            <ul class="valid-messages" style="color:red">
                <c:forEach items="${formInfoAdding}" var="info">
                    <li>${info}</li>
                </c:forEach>
            </ul>
        </div>
    </div>
    <div class="modal-body">
        <div class="form-group">
            <label>Data przyjęcia do naprawy:</label>
            <input type='date' class="form-control" name='serviceAccept' value='${orderToAdd.serviceAccept}' required>
        </div>
        <div class="form-group">
            <label>Planowana data rozpoczęcia naprawy:</label>
            <input type='date' class="form-control" name='servicePlan' value='${orderToAdd.servicePlan}'>
        </div>
        <div class="form-group">
            <label>Dotyczy pojazdu:</label>
            <select name='vehicle' class="form-control vehicle-select" required>
                <option value="">Wybierz z listy:</option>
                <c:forEach items="${vehicles}" var="vehicle">
                    <option <c:if test="${vehicle.id == orderToAdd.vehicle.id}">selected</c:if> value="${vehicle.id}">
                            ${vehicle.model} ${vehicle.make} ${vehicle.registration}
                    </option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label>Właściciel pojazdu:</label>
            <input type='text' class="form-control vehicle-owner" readonly value='${orderToAdd.vehicle.client.firstName} ${orderToAdd.vehicle.client.lastName}'>
        </div>
        <div class="form-group">
            <label>Pracownik odpowiedzialny:</label>
            <select name='employee' class="form-control" id="employee" class="costs-counting">
                <option value="">Wybierz z listy:</option>
                <c:forEach items="${employees}" var="employee">
                    <option <c:if test="${employee.id == orderToAdd.employee.id}">selected</c:if> value="${employee.id}" data-hourly-rate="${employee.hourly_rate}">
                            ${employee.firstName} ${employee.lastName} (stawka: ${employee.hourly_rate} zł/h)
                    </option>
                </c:forEach>
            </select>
        </div>
        <div class="form-group">
            <label>Opis problemu:</label>
            <input type='text' class="form-control" name='issueDesc' value='${orderToAdd.issueDesc}' required>
        </div>
        <div class="form-group" style="display: none;">
            <input type='text' class="form-control" readonly name='orderIdEditing' value='${orderEditing.id}' required>
        </div>
    </div>
    <div class="modal-footer">
        <button type="button" class="btn btn-default" data-dismiss="modal">Anuluj</button>
        <button type="submit" class="btn btn-primary">Zapisz</button>
    </div>
</form>
--%>