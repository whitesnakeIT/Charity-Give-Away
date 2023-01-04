<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page contentType="text/html;charset=UTF-8" %>

<jsp:include page="fragments/headers/formHeader.jsp"/>
<title>Donation form</title>

<form:form method="post" modelAttribute="donation">
    <form:checkboxes path="categories"
                     items="${categories}" itemLabel="name" itemValue="id"/><br>
    <form:errors path="categories"/>

    <form:select path="institution" items="${institutions}" itemLabel="name" itemValue="id"/><br>
    <form:errors path="institution"/>

    <form:input path="zipCode"/><br>
    <form:errors path="zipCode"/>

    <form:input path="street"/><br>
    <form:errors path="street"/>

    <form:input path="city"/><br>
    <form:errors path="city"/>

    <form:input path="quantity"/><br>
    <form:errors path="quantity"/>

    <form:textarea path="pickUpComment"/><br>
    <form:errors path="pickUpComment"/>

    <form:input type="date" path="pickUpDate"/><br>
    <form:errors path="pickUpDate"/>

    <form:input type="time" path="pickUpTime"/><br>
    <form:errors path="pickUpTime"/>

    <form:button type="submit"/><br>
</form:form>
<jsp:include page="fragments/footer.jsp"/>