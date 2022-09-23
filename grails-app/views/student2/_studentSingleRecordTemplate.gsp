 <td name="rollNo" id="roll_no_${student?.id}">${student?.rollNo}</td>
 <td name="phoneNo" id="phone_no_${student?.id}">${student?.phoneNo}</td>
 <td name="name" id="name_${student?.id}">${student?.name}</td>
 <td name="address" id="address_${student?.id}">${student?.address}</td>
 <td><button type="button" id="studentForm" data-toggle="modal"
             data-target="#modal-studentRecord"
             onclick="prefillStudentRecord('${student?.id}')">Edit</button></td>
 <td><button type="button" id="red" onclick="deleteMe('${student?.rollNo}')">Delete</button></td>
