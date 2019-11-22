/* Start Pop Up Proses */

$(document).ready(function() {
    setTimeout(popup, 3000);

    function popup() {
        $("#logindiv").css("display", "block");
    }
  
    $("#onclick").click(function() {
        $("#contactdiv").css("display", "block");
    });
    $("#contact #cancel").click(function() {
        $(this).parent().parent().hide();
    });
    // Contact form popup send-button click event.
    $("#send").click(function() {
        var name = $("#name").val();
      	var address = $("#address").val();
      	var education = $("#education").val();
      	var rateQuality = $("#rateQuality").val();
      	var rateFresh = $("#rateFresh").val();
      	var ratePerform = $("#ratePerform").val();
      	var ratePageCorresponding = $("#ratePageCorresponding").val();
      	var note = $("#note").val();
        if (name == "" || address == "" || education == "" || rateQuality == "" || rateFresh == "" || ratePerform == "" || ratePageCorresponding == "" || note == "") {
            alert("Please Fill All Fields");
        }
        else
        {
        	var data = $("#contact").serialize();
			$.ajax({
			         data: data,
			         type: "post",
			         url: "func/func.php",
			         success: function(data){
			              alert("Data Save: " + data);

			              if(data=="Sukses")
			              {
			              	$('#contact #cancel').trigger('click');	
			              }
			         }
			});
        } 
    });

});


/* End Pop Up Proses */
