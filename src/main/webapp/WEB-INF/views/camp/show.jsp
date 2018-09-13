<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/fragments/header.jsp"/>

<html>
<head>
    <title>Camps</title>
</head>
<body>

<h1 class="textCenter">What can I expect to gain from working on a summer camp?</h1>
<h3>&nbsp;It's a very different kind of place to work! Working on an American summer camp offers so much more than just
    a job - it's an experience like no other and the benefits are endless...</h3>

<h1 class="textCenter">Camp Types</h1>
<h3>&nbsp;There isn't just one camp in America or Australia...there's hundreds spread all across these countries!
    So we can find you the perfect camp to work at, we've broken them down into different 'Camp Types'.
    This way you can tell us which you prefer. </h3>
<ul>
    <li>Christian  Camps</li>
    <li>Day Camps</li>
    <li>Girl Scout Camps</li>
    <li>Private Camps</li>
    <li>Residential Camps</li>
    <li>Single Gender Camps</li>
    <li>Special Needs Camps</li>
    <li>Underpriviledge Camps</li>
    <li>YMCA  Camps</li>
</ul>

<%--<ul class="textCenter">
    <h1>Camps</h1>
    <c:forEach var="camp" items="${camps}">
        <li>
            Name:       <c:out value="${camp.name}"/><br>
            Type:       <c:out value="${camp.type.name}"/><br>
            City:       <c:out value="${camp.city.name}"/><br>
            Country:    <c:out value="${camp.country.name}"/><br>
            Size:       <c:out value="${camp.size}"/><br>
            <a href="/camps/details/${camp.id}">Details</a>
            <hr>
        </li>
    </c:forEach>
    <a href="/camp/form">New</a>
</ul>--%>

<h1 class="textCenter">Camps</h1><br>
<table class="table table-striped table-hover" align="center">
<tr>
    <th>Name</th>
    <th>Type</th>
    <th>City</th>
    <th>Country</th>
    <th>Number of campers</th>
    <th> </th>
</tr>
<c:forEach var="camp" items="${camps}">
    <tr>
    <td>${camp.name}</td>
    <td>${camp.campType.name}</td>
    <td>${camp.city.name}</td>
    <td>${camp.country.name}</td>
    <td>${camp.size} per week</td>
    <td><a class="btn btn-default" href="/camps/show/${camp.id}"><i class="icon-info-circled-alt"></i> Details </a></td>
    <%--<td><a class="btn btn-primary" href="/updateVehicle?id=${camp.id}"><i class="icon-cog"></i> Update</a></td>--%>
    <%--<td><a class="btn btn-danger" href="/deleteVehicle?id=${camp.id}"><i class="icon-cancel-circled"></i> Delete</a></td>--%>
    </tr>
</c:forEach>
</table>


</body>
</html>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>