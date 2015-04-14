/**
 * Created by jbsimoes on 13/04/15.
 */

var row_id = 0;

/* Menu controller */
$("#meal_standard").click(function()
{
    $("#meal_personal").removeClass("active");
    $("#meal_background").removeClass("active");
    $("#meal_standard").addClass("active");

    var html = '';

    $.get("meal_standard.jsp", function(data)
    {
        $("#form_container").html(data);
    });

});

$("#meal_personal").click(function()
{
    $("#meal_standard").removeClass("active");
    $("#meal_background").removeClass("active");
    $("#meal_personal").addClass("active");

    $.get("meal_personal.jsp", function(data)
    {
        $("#form_container").html(data);
    });
});

$("#meal_background").click(function()
{
    $("#meal_standard").removeClass("active");
    $("#meal_personal").removeClass("active");
    $("#meal_background").addClass("active");

    $.get("background.jsp", function(data)
    {
        $("#form_container").html(data);
    });
});




function verify_fill()
{
    if($("#total_carbo_meal").val() != "" &&
        $("#sensitivity").val() != "" &&
    $("#actual_sugar_level").val() != "" &&
    $("#target_sugal_level").val() != "" &&
    $("#total_carbo_processed").val() != "")
    {
        $("#calculate_insuline_dose").prop('disabled', false);
    }
    else
    {
        $("#calculate_insuline_dose").prop('disabled', true);
    }
}

function add_row()
{
    str = "";
    ++row_id;
    str += "<tr id='row_"+row_id+"'>";
    str +=      "<td style='vertical-align: middle;'>";
    str +=        "<div class='form-group' style='width: 210px; margin-bottom: 0px; padding-left: 0px;'>";
    str +=          "<input class='form-control' id='physical_"+row_id+"' placeholder='''>";
    str +=        "</div>";
    str +=      "</td>";
    str +=      "<td style='vertical-align: middle;'>";
    str +=        "<div class='form-group' style=' width: 370px; margin-bottom: 0px;'>";
    str +=          "<input class='form-control' id='sugar_"+row_id+"' placeholder=''>";
    str +=        "</div>";
    str +=      "</td>";
    str +=      "<td style='width: 100%; vertical-align: middle;'>";
    str +=      "  <center><span><a href='#' onclick='return removeRow(\"row_"+row_id+"\");' style='text-decoration: none; color: black;'><i class='fa fa-times'></i></a></span></center>";
    str +=      "</td>";
    str +=    "</tr>";

    $("#regression_data").append(str);

    return false;
}
function removeRow(rowID) {
    var row = document.getElementById(rowID);
    row.parentNode.removeChild(row);
    return false;
}
