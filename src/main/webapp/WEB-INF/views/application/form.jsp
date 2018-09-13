<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/fmt" prefix = "fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>


<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<html>
<head>
    <title>Application Form</title>
</head>
<body>

<div class="textCenter">
    <form:form action="/applications/form" modelAttribute="application" method="POST">
        <h3 class="textCenter">Application details</h3>
        <form:hidden path="id"/>
        <label> Name:</label><br>
        <form:input path="name"/><br>
        <label> Applicant:</label><br>
        <form:input path="applicant"/><br>
        <label> Program:</label><br>
        <form:input path="program"/><br>
        <label> Camp:</label><br>
        <form:input path="camp"/><br>

        <label><input type="submit" value="Save"></label>
    </form:form>
</div>

</body>
</html>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>

