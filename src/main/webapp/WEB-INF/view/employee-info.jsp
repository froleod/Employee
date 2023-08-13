<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>

<!DOCTYPE html>
<html>

<head>
<title>Employee-info</title>


<style type="text/css">
body
{
background-color:#DCDCDC;
font-family: 'Bebas Neue', sans-serif;
}

button, input[type="button"] {
  font-family: 'Bebas Neue', sans-serif;
}

h2
{
text-align:center;
}
.center-form {
  display: flex;
  flex-direction: column; /* Выравнивание по вертикали */
  justify-content: center; /* Выравнивание по горизонтали */
  align-items: center; /* Выравнивание по горизонтали */
  height: 50vh;
}



</style>

</head>
<body>

<h2>Employee info</h2>
<br>
<br>


<form:form action="saveEmployee" modelAttribute="employee" class="center-form">

    <form:hidden path="id"/>

    Name <form:input path="name"/>
    <br><br>
    Surname <form:input path="surname"/>
    <br><br>
    Department <form:input path="department"/>
    <br><br>
    Salary <form:input path="salary"/>
    <br><br>
    <input type="submit" value="OK"/>
</form:form>



</body>
</html>