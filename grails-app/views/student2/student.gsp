<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title>StudentForm</title>
    %{-- <asset:stylesheet src="application.css"/>--}%
    <asset:stylesheet src="custome_paginate"/>
    <asset:stylesheet src="font-awesome.min.css"/>
    <asset:stylesheet src="style.css"/>

    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400"
          rel="stylesheet"
          type="text/css">
    <asset:javascript src="application.js"/>
    <asset:javascript src="notify.min.js"/>
    <asset:javascript src="jquery-ui.min.js"/>
    <asset:stylesheet src="jquery-ui.css"/>
    <asset:stylesheet src="chosen.css"/>
    <asset:javascript src="chosen.jquery.min.js"/>
    <asset:javascript src="chosen.proto.min.js"/>

</head>

<body>
%{--<form id="studentForm" controller="Student2" action="create" method="post">--}%
<div id="studentFormDivId">
    <form id="studentForm" method="post">
        <h1><g:message code="student.form.heading"/></h1>

        <div id="formcontainer">
            <hr/>

            <div class="container">
                <label><strong>Roll NO</strong></label>
                <input type="number" name="rollNo" id="rollNo" value="${rollNO}">

                <label><strong>Student Name</strong></label>
                <input type="text" size="40" name="name" id="name" value="${name}">
                <label><strong>Phone No</strong></label>
                <input type="text" size="10" name="phoneNo" id="phoneNo" value="${phoneNo}">

                <label><strong>Address</strong></label>
                <input type="hidden" name="isUpdate" id="isUpdate" value="${0}">
                <input type="hidden" name="id" id="id" value="${0}">

                <textarea type="text" name="address" id="address" rows="4" cols="20">
                    ${address}
                </textarea>

            </div>
            <button type="button" onclick="clickMe()">Submit</button>

        </div>

    </form>
</div>


<div id="">
    <g:render template="/student2/studentList"
              model="[studentList: studentList]"/>
</div>

</body>
<script>
    function clickMe() {
        alert("Click Me");
        var name = $("#name").val();
        var phoneNo = $("#phoneNo").val();
        var address = $("#address").val();
        var rollNo = $("#rollNo").val();
        var isUpdate = $("#isUpdate").val();
        alert(name + "  " + phoneNo + "  " + address + "  " + rollNo);

        if (isUpdate == 0) {
            $.ajax({
                url: "${createLink(controller:'student2',action:'create')}",
                method: "POST",
                data: {name: name, rollNo: rollNo, address: address, phoneNo: phoneNo},
                success: function (data) {
                    if (data.code == 200) {
                        alert("Success");
                        $("#formcontainer").html("<b>Successfully Registered !!!</b>");
                        // notify('Success', 'success');
                    } else {
                        // alert("Success");
                        $.notify("Error", "error");
                    }
                }
            });

        } else {
            alert("update")
            var id = $("#id").val();
            $.ajax({
                url: "${createLink(controller:'student2',action:'update')}",
                method: "POST",
                data: {id: id, name: name, rollNo: rollNo, address: address, phoneNo: phoneNo},
                success: function (data) {
                    if (data.code == 200) {
                        alert("Success");
                        $("#formcontainer").html("<b>Successfully Registered !!!</b>");
                        // notify('Success', 'success');
                    } else {
                        // alert("Success");
                        $.notify("Error", "error");
                    }
                }
            });
        }
    }

</script>
</html>