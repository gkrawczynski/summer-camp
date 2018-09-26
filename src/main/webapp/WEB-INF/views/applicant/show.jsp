<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<html>
<head>
    <title>ApplicantShow</title>
</head>


<ul class="textCenter">
    <h3>Profile details</h3>
    <label>First Name:</label>     <c:out value="${applicant.firstName}"/><br>
    <label>Last Name:</label>      <c:out value="${applicant.lastName}"/><br>
    <label>Date of birth:</label>  <c:out value="${applicant.dateOfBirth}"/><br>
    <label>Street:</label>         <c:out value="${applicant.street}"/><br>
    <label>Postal code:</label>    <c:out value="${applicant.postalCode}"/><br>
    <label>Phone number:</label>   <c:out value="${applicant.phoneNumber}"/><br><br>
    <label><a class="btn btn-primary" href="/applicants/edit/<c:out value="${applicant.id}"/>"><i class="icon-cog"></i>Edit Profile</a></label>
    <%--<hr>--%>
</ul>

<%--<input type="submit" value="Edit Profile">--%>
<%--<p><a href="/applicants/edit/${applicant.id}">Edit Profile</a></p>--%>

</body>
</html>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>
