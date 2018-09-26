<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<title>Applicants Admin</title>
<h1 class="textCenter">Applicants Admin</h1><br>
<table class="table table-striped table-hover" align="center">
    <tr>
        <th>First Name</th>
        <th>Last Name</th>
        <th>Date of birth</th>
        <th>Street</th>
        <th>Postal code</th>
        <th>Phone number</th>
        <th>Details</th>
        <th>Edit</th>
        <th>Remove</th>
    </tr>
    <c:forEach var="camp" items="${applicants}">
        <tr>
            <td>${camp.firstName}</td>
            <td>${camp.lastName}</td>
            <td>${camp.dateOfBirth}</td>
            <td>${camp.street}</td>
            <td>${camp.postalCode}</td>
            <td>${camp.phoneNumber}</td>
            <td><a class="btn btn-default" href="/applicants/show/${camp.id}"><i class="icon-info-circled-alt"></i> More </a></td>
            <td><a class="btn btn-primary" href="/applicants/edit/${camp.id}"><i class="icon-cog"></i> Update</a></td>
            <td><a class="btn btn-danger" href="/applicants/delete/${camp.id}"><i class="icon-cancel-circled"></i> Delete</a></td>
        </tr>
    </c:forEach>
</table>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>