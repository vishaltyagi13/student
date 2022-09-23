<%@ page contentType="text/html;charset=UTF-8" %>

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

                <textarea type="text" name="address" id="address" rows="4" cols="20">
                    ${address}
                </textarea>

            </div>
            <button type="button" onclick="clickMe()">Submit</button>

        </div>

    </form>
</div>



%{--}<div id="">
    <g:render template="/student2/studentList"
              model="[studentList: studentList]"/>
</div>--}%




%{--}<script>
    function updateMe() {
        //alert("Click Me");
        var formData= $("#studentForm").serialize();
        //alert(formData);

        $.ajax({
            url: "${createLink(controller:'student2',action:'update')}",
            method : "POST",
            data: formData,
            success: function (data) {
                //console.log(formData)
                if (data.code == 200) {

                    alert("Success");
                    $("#formcontainer").html("<b>Successfully Registered !!!</b>");
                    // notify('Success', 'success');
                } else {
                    // alert("Success");
                    $.notify("Error","error");
                }
            }
        });
    }
</script>
