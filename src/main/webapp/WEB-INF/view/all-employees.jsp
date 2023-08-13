<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
<title>All employees</title>

<link href="<c:url value='/resources/css/home.css' />" rel="stylesheet">

</head>
<body>

<h2>All employees</h2>
<br>
<br>

<table class="center-table">
    <tr>
        <th>Name</th>
        <th>Surname</th>
        <th>Department</th>
        <th>Salary</th>
        <th>Operations</th>
    </tr>

    <c:forEach var="emp" items="${allEmps}">


        <c:url var="updateButton" value="/updateInfo">
            <c:param name="empId" value="${emp.id}"/>

        </c:url>

        <c:url var="deleteButton" value="/deleteEmployee">
            <c:param name="empId" value="${emp.id}"/>

        </c:url>

        <tr>
            <td>${emp.name}</td>
            <td>${emp.surname}</td>
            <td>${emp.department}</td>
            <td>${emp.salary}</td>
            <td>
                <input type="button" value="Update" onClick="window.location.href='${updateButton}'"/>
                <input type="button" value="Delete" onClick="window.location.href='${deleteButton}'"/>
            </td>
        </tr>

    </c:forEach>

</table>


<br>
<div class="center-element">
<input type="button" value="Add new employee"
    onClick="window.location.href='addNewEmployee'"/>
</div>

</body>
</html>