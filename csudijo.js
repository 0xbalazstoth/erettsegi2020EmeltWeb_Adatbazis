$(document).ready(function(){
    //GET metódus
    $.get("/api/legnepszerubb", function(data, status){
        var legnepszerubbEtel = $.parseJSON(data);
        $("#legnepszerubb").text(legnepszerubbEtel.etelNev);
    });

    //POST metódus klikk hatására
    $("button").click(function(){
        var getBejegyzes = $("#bejegyzes").val();
        $.ajax({
            type: "POST",
            url: "/api/vendegkonyv",
            dataType: "json",
            data: JSON.stringify({"bejegyzes": getBejegyzes}),
            contentType: "application/json",
            success: function() {
                $("#bejegyzes").val("");
                alert("Köszönjük a bejegyzést!");
            }
        });
    });
});