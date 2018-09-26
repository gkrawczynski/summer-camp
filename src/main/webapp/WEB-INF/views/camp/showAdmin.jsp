<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<title>Camps Admin</title>
<h1 class="textCenter">Camps Admin</h1><br>
<table class="table table-striped table-hover" align="center">
    <tr>
        <th>Name</th>
        <th>Type</th>
        <th>City</th>
        <th>Country</th>
        <th>Kids</th>
        <th>Details</th>
        <th>Edit</th>
        <th>Remove</th>
    </tr>
    <c:forEach var="camp" items="${camps}">
        <tr>
            <td>${camp.name}</td>
            <td>${camp.campType.name}</td>
            <td>${camp.city.name}</td>
            <td>${camp.country.name}</td>
            <td>${camp.size} per week</td>
            <td><a class="btn btn-default" href="/camps/show/${camp.id}"><i class="icon-info-circled-alt"></i> More </a></td>
            <td><a class="btn btn-primary" href="/camps/edit/${camp.id}"><i class="icon-cog"></i> Update</a></td>
            <td><a class="btn btn-danger" href="/camps/delete/${camp.id}"><i class="icon-cancel-circled"></i> Delete</a></td>
        </tr>
    </c:forEach>
</table>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>