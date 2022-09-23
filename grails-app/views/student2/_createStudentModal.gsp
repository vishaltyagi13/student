<div class="modal fade" id="modal-studentRecord" role="dialog">
    <div class="modal-dialog">

        <div class="modal-content">

            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal">&times;</button>
                <h4 class="modal-title">Student Details</h4>
            </div>

            <div class="modal-body">
                <div id="studentFormRecord222">

                    <g:form controller="student2" action="create" id="studentFormRecord" method="post"
                            enctype="multipart/form-data">
                        <div class="form-group">
                            <label for="rollNo"><g:message code="rollNO"/></label>
                            <input type="text" class="form-control" id="rollNo" name="rollNo" value="${rollNo}">
                        </div>

                        <div class="form-group">
                            <label for="name"><g:message code="name"/></label>
                            <input type="text" class="form-control" id="name" name="name" value="${name}">
                        </div>

                        <div class="form-group">
                            <label for="phoneNo"><g:message code="phoneNo"/></label>
                            <input type="text" class="form-control" id="phoneNo" name="phoneNo" value="${phoneNo}">
                        </div>

                        <div class="form-group">
                            <label for="address"><g:message code="address"/></label>

                            <input type="hidden" name="isUpdate" id="isUpdate" value="${0}">


                            <textarea type="text" class="form-control" id="address" name="address"
                                      value="${address}"></textarea>
                        </div>
                        <button type="button" onclick="clickMe()" data-dismiss="modal">Submit</button>
                        <button type="button" data-dismiss="modal">Close</button>
                    </g:form>
                </div>
            </div>
        </div>
    </div>
</div>
</div>

<script>
    function clickMe() {
        // alert("Click Me");
        var name = $("#name").val();
        var phoneNo = $("#phoneNo").val();
        var address = $("#address").val();
        var rollNo = $("#rollNo").val();
        var isUpdate = $("#isUpdate").val();
        // alert(name + "  " + phoneNo + "  " + address + "  " + rollNo);

        if (isUpdate == 0) {
            $.ajax({
                url: "${createLink(controller:'student2',action:'create')}",
                method: "POST",
                data: {name: name, rollNo: rollNo, address: address, phoneNo: phoneNo},


                success: function (data) {

                    if (data.code == 200) {
                        alert("Success");
                        $("#studentTableRecord").html(data.template);

                        // notify('Success', 'success');
                    } else {
                        // alert("Success");
                        $.notify("Error", "error");
                    }

                }
            });

        } else {

            var id = $("#id").val();
            $.ajax({
                url: "${createLink(controller:'student2',action:'update')}",
                method: "POST",
                data: {id: id, name: name, rollNo: rollNo, address: address, phoneNo: phoneNo},
                success: function (data) {
                    if (data.code == 200) {
                        $("#myDiv_" + data.id).html(data.template);
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


