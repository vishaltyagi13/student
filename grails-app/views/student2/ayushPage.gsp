<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title></title>
%{--    <asset:stylesheet src="custome_paginate"/>--}%
%{--    <asset:stylesheet src="font-awesome.min.css"/>--}%
    <asset:stylesheet src="style.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.css" />

    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400"
          rel="stylesheet"
          type="text/css">
    <asset:javascript src="application.js"/>
    <asset:javascript src="application.css"/>
%{--    <asset:javascript src="notify.min.js"/>--}%
%{--    <asset:javascript src="jquery-ui.min.js"/>--}%
%{--    <asset:stylesheet src="jquery-ui.css"/>--}%
%{--    <asset:stylesheet src="chosen.css"/>--}%
%{--    <asset:javascript src="chosen.jquery.min.js"/>--}%
%{--    <asset:javascript src="chosen.proto.min.js"/>--}%
%{--    <asset:javascript src="bootstrap.min.css"/>--}%
%{--    <asset:javascript src="bootstrap.min.js"/>--}%
    <asset:javascript src="jquery-2.1.3.js"/>

%{--    <meta name="viewport" content="width=device-width, initial-scale=1">--}%
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
%{--    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>--}%
%{--    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>--}%
</head>

<body>
<h1><g:message code="student.record.heading"/></h1>


<div class="container">

    <table class="responsive-table">
        <thead>
        <tr>
            <th>Roll No</th>
            <th>Phone</th>
            <th>Name</th>
            <th>Address</th>
            <th>Action</th>
        </tr>
        </thead>
        <tbody>
        <g:each in="${studentList}" var="student">
            <tr>
                <td name="rollNo" id="roll_no_${student?.id}">${student?.rollNo}</td>
                <td name="phoneNo" id="phone_no_${student?.id}">${student?.phoneNo}</td>
                <td name="name" id="name_${student?.id}">${student?.name}</td>
                <td name="address" id="address_${student?.id}">${student?.address}</td>

                <td><button type="button" id="studentForm"
                            onclick="prefillStudentRecord('${student?.id}')">edit</button></td>
                <td><button type="button" id="red" onclick="deleteMe('${student?.rollNo}')">delete</button></td>
            </tr>
        </g:each>
        </tbody>
    </table>

    <button type="button" class="btn btn-sm btn-primary" data-toggle="modal"
            data-target="#modal-studentRecord" data-backdrop="static"><g:message code="create a new record"/></button>
</div>

<g:render template="/student2/ayush"/>

<script>
    function deleteMe(rollNo) {
    }

    function createMe() {
    }

</script>

</body>
</html>
