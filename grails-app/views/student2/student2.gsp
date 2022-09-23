<%@ page contentType="text/html;charset=UTF-8" %>
<html xmlns="http://www.w3.org/1999/html">
<head>
    <title></title>
    <asset:stylesheet src="style.css"/>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery-modal/0.9.1/jquery.modal.min.js"></script>

    <link href="//fonts.googleapis.com/css?family=Open+Sans:400,600,700,300|Titillium+Web:200,300,400"
          rel="stylesheet"
          type="text/css">
    <asset:javascript src="application.js"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

    <style>
    .modal-header, h4, .close {
        background-color: darkblue;
        color: #ffffff !important;
        text-align: center;
        font-size: 25px;
        padding: 12px;
    }

    th {
        padding: 10px !important;
        background-color: darkblue;
        color: #ffffff;
    }

    td {
        padding: 2px !important;
    }

    </style>

</head>
<body>
<h1><g:message code="student.record.heading"/></h1>
<div class="formcontainer">

    <div class="container">
        <div align="right">
            <button type="button" data-toggle="modal"
                    data-target="#modal-studentRecord" onclick="resetFormFieldsData()"><g:message
                    code="Create New"/></button>
        </div>
        <div align="left" style="background-color: #dddddd">
            <h3 style="padding: 5px">Details</h3></div>
        <div id="studentTableRecord">
            <g:render template="/student2/studentNewListTemplate" model="[studentList: studentList]"/>
        </div>


    </div>
</div>



<g:render template="/student2/createStudentModal"/>

</body>
<script>
    function resetFormFieldsData() {
        $("#rollNo").val("")
        $("#name").val("")
        $("#phoneNo").val("")
        $("#address").val("")
    }

    function deleteMe(rollNo) {
        alert("Are You Sure?");
        $.ajax({
            url: "${createLink(controller:'student2',action:'delete')}",
            method: "POST",
            data: {'rollNo': rollNo},
            success: function (data) {
                // console.log(data)
                if (data.code == 200) {
                    alert("Success");
                    //console.log()
                    $("#studentTableRecord").html(data.template);

                    // notify('Success', 'success');
                    // } else {
                    // alert("Success");
                    //$.notify("Error", "error");
                }
            }
        })
    }

    function prefillStudentRecord(id) {
        //alert("Click Me");
        var name = $('#name_' + id).html();
        var phoneNo = $("#phone_no_" + id).html();
        var address = $("#address_" + id).html();
        var rollNo = $("#roll_no_" + id).html();
        $("#name").val(name);
        $("#phoneNo").val(phoneNo);
        $("#address").val(address);
        $("#rollNo").val(rollNo);
        $("#isUpdate").val(1);
        $("#id").val(id);
    }
</script>
</html>
