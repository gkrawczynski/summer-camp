<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>


<jsp:include page="/WEB-INF/fragments/header.jsp"/>
<title>Application Form</title>
<div class="textCenter">
    <h3 class="textCenter">Application details</h3>
    <form:form modelAttribute="myapp" method="post">
        <form:hidden path="id"/>
        <form:hidden path="name"/>
            <div class="form-group">
                <label>Applicant: </label><br>
                <%--<td><form:select path="applicant" items="${applicants}" itemLabel="lastName" itemValue="id"/></td>--%>
                <select>
                <c:forEach items="${applicants}" var="camp">
                    <option value=${camp.id}>${camp.firstName} ${camp.lastName}</option>
                </c:forEach>
                </select>
                 <form:errors path="applicant"/>
            </div>
            <div class="form-group">
                <label>Program: </label><br>
                <form:select path="program" items="${programs}" itemLabel="name" itemValue="id"/>
                <form:errors path="program"/>
            </div>
            <div class="form-group">
                <label>Camp: </label><br>
                <form:select path="camp" items="${camps}" itemLabel="name" itemValue="id"/>
                <form:errors path="camp"/>
            </div>
            <div class="form-group">
            <label>Skills: </label><br>
                <select multiple>
                <c:forEach items="${skills}" var="skill">
                    <option value=${skill.id}>${skill.name}</option>
                </c:forEach>
                </select>
                <%--
                <form:select path="skill" items="${skills}" itemLabel="name" itemValue="id"/>
                <form:errors path="skill"/>
                --%>
            </div>

        <label><input type="submit" value="Save"></label>
    </form:form>
</div>
<jsp:include page="/WEB-INF/fragments/footer.jsp"/>

