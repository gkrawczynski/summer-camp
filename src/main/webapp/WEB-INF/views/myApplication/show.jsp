<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<title>Application Show</title>
<ul class="textCenter">
    <h3>Application details</h3>
    <label> Applicant: </label>   <c:out value="${myApplication.applicant.name}"/><br>
    <label> Program: </label>     <c:out value="${myApplication.program.name}"/><br>
    <label> Camp: </label>        <c:out value="${myApplication.camp.name}"/><br>
    <label><a class="btn btn-primary" href="/applications/edit/<c:out value="${myApplication.id}"/>"><i class="icon-cog"></i>Edit Application</a></label>
    <br>
    <hr>
</ul>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>