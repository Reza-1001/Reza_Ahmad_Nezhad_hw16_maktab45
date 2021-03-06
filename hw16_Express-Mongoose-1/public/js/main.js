$("document").ready(function () {
  $("td").hover(function () {
    $(".edit_panel").css("display", "block");
  });
  $("#btn_edit").click(function () {
    var currentTD = $(this).parents("tr").find("td");

    if ($(this).attr('id') == "btn_edit") {
      $.each(currentTD, function () {
        $(this).prop("contenteditable", true);
      });
    } else {
      $.each(currentTD, function () {
        $(this).prop("contenteditable", false);
      });
      let headerList = [];
    let rowData = [];
    let data={};
    for (let i = 1; i < currentTD.length - 1; i++) {
        data[$("thead").find("th")[i].innerText]=currentTD[i].innerText;
      rowData.push(currentTD[i].innerText);
      headerList.push($("thead").find("th")[i].innerText);
    }
    console.log(headerList);
    console.log(rowData);
    console.log(data);
    let id = $(this).parent().parent().parent().get(0).id;
    $.ajax({
      url: `http://localhost:5000/companies/update/${id}`,
      method: "PUT",
      contentType: "application/json",
      dataType: "text",
      data: JSON.stringify(data),
    });
    }
    $(this).val($(this).val() == "Edit" ? "Save" : "Edit");
    $(this).attr('id',$(this).attr('id') == "btn_edit" ? "btn_save" : "btn_edit");
  });
    
  
});
