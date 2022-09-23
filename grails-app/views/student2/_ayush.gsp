<div class="modal fade" id="modal-studentRecord" role="dialog" aria-hidden="true">
    <div class="modal-dialog">

        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal"></button>
                <h4 class="modal-title"></h4>
            </div>

            <div class="modal-body">

                <g:form controller="student2" action="create" method="post" enctype="multipart/form-data">
                    <div class="form-group">
                        <label for="rollNo"><g:message code="create.a.new.record"/></label>
                        <input type="text" class="form-control" id="rollNo" name="rollNo" value="${rollNo}">
                    </div>

                    <div class="form-group">
                        <label for="name"><g:message code="create.a.new.record"/></label>
                        <input type="text" class="form-control" id="name" name="name" value="${name}">
                    </div>

                    <div class="form-group">
                        <label for="phoneNo"><g:message code="create.a.new.record"/></label>
                        <input type="text" class="form-control" id="phoneNo" name="phoneNo" value="${phoneNo}">
                    </div>

                    <div class="form-group">
                        <label for="address"><g:message code="create.a.new.record"/></label>
                        <textarea type="text" class="form-control" id="address" name="address"
                                  value="${address}"></textarea>
                    </div>
                    <button type="button" onclick="createMe()">Submit</button>

                </g:form>
            </div>
        </div>
    </div>
</div>
<script>
    function createMe() {
        alert("Click Me");
        var name = $("#name").val();
        var phoneNo = $("#phoneNo").val();
        var address = $("#address").val();
        var rollNo = $("#rollNo").val();
        alert(name + "  " + phoneNo + "  " + address + "  " + rollNo);
        $.ajax({
            url: "${createLink(controller:'student2',action:'create')}",
            method: "POST",
            data: {name: name, rollNo: rollNo, address: address, phoneNo: phoneNo},
            success: function (data) {
                if (data.code == 200) {
                    alert("Success");
                    $("#formcontainer").html(data.template);

                } else {
                    // alert("Success");
                    $.notify("Error", "error");
                }
            }
        })
    }

</script>

