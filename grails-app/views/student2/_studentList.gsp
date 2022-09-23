%{--<form id="studentForm" controller="Student2" action="create1" method="post">--}%
<h1><g:message code="student.list.heading"/></h1>


<div class="formcontainer">
    <hr/>
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
                                onclick="prefillStudentRecord('${student?.id}')">edit </button></td>
                    <td><button type="button" id="a"  onclick="deleteMe('${student?.rollNo}')">delete</button></td>
                </tr>
            </g:each>

            </tbody>
        </table>
    </div>
</div>

<div id="studentDetails"></div>




</body>
<script>
    function prefillStudentRecord(id) {
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



<script>
function deleteMe(rollNo) {
    alert("Click Me");
    $.ajax({
        url: "${createLink(controller:'student2',action:'delete')}",
        method: "POST",
        data: {rollNo:rollNo},
        success: function (data) {
            if (data.code == 200) {
                alert("Success");
                $("#studentDetails").html(data.template);
                // notify('Success', 'success');
            } else {
                // alert("Success");
                //$.notify("Error", "error");
            }
        }
    })
}
</script>