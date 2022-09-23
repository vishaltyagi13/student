<%--
  Created by IntelliJ IDEA.
  User: vishal
  Date: 21/9/22
  Time: 3:03 PM
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
</head>

<body>
<div id="employeeId">
    <g:form controller="student2" action="abc" id="" method="post" enctype="multipart/form-data">
        <h1><g:message code="employee.form.heading"/></h1>
        <label><strong>employeeName</strong></label>
        <input type="text" size="40" name="name" id="name" value="${name}">
        <label><strong>Phone No</strong></label>
        <input type="text" size="10" name="phoneNo" id="phoneNo" value="${phoneNo}">

        <button type="submit" >Submit</button>
    </g:form>
</div>
</body>
</html>

