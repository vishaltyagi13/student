<table>
    <thead>
    <tr>
        <th style="text-align: center">Roll No.</th>
        <th style="text-align: center">Phone No.</th>
        <th style="text-align: center">Name</th>
        <th style="text-align: center">Address</th>
        <th colspan="2" style="text-align: center">Action</th>
    </tr>
    </thead>
    <tbody>
    <g:each in="${studentList}" var="student">

        <tr id="myDiv_${student?.id}">

            <td name="rollNo" id="roll_no_${student?.id}">${student?.rollNo}</td>
            <td name="phoneNo" id="phone_no_${student?.id}">${student?.phoneNo}</td>
            <td name="name" id="name_${student?.id}">${student?.name}</td>
            <td name="address" id="address_${student?.id}">${student?.address}</td>

            <td><button type="button" id="studentForm" data-toggle="modal"
                        data-target="#modal-studentRecord"
                        onclick="prefillStudentRecord('${student?.id}')">Edit</button></td>
            <td><button type="button" id="red" onclick="deleteMe('${student?.rollNo}')">Delete</button></td>
        </tr>
    </g:each>

    </tbody>
</table>