<h1><g:message code="student.record.heading"/></h1>
%{--}<td><button type="button" id="colour" onclick="openStudentFormModal()">create</button> </td>--}%


<div class="formcontainer">
    <hr/>



    <div class="container">

        <table class="responsive-table" >
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
        <td><button type="button" id="red"  onclick="deleteMe('${student?.rollNo}')">delete</button></td>
    </tr>
</g:each>

</tbody>
</table>
</div>
</div>




