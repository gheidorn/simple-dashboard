$(document).ready(function(){
	$(".resource-status").click(function () {
		//$("#" + this.id + "-button").toggle();
		$("#" + this.id).toggle(); // hide span
		$("#" + this.id + "-form").toggle(); // show input field
		//$(this).toggleClass("active");
		$(this).next().find(".resource-status-form-txt").select();
	});

	// status update save buttons
	$("button.save").click(function () {
		var status = $(this).parent().parent().prev().find("span");			// get status span
		var newStatus = $(this).parent().find("input").val();				// store new status locally
		status.html(newStatus);  											// update span with new status
		
		status.after("&nbsp;&nbsp;<img src=\"img/ajax-loader.gif\" />");	// insert spinner
		
		var tagline = $(this).parent().parent().next().find("span");		// get tagline span
		var newTagline = "monkey @ " + $.PHPDate("n/d/Y g:i:sa", new Date());	// build new tagline
		tagline.html(newTagline);  											// update tagline with new user/time
		
		var resId = $(this).parent().parent().parent().parent().get(0).id;	// determine resource id
		$.ajax({ 
			type: "POST", url: "updateStatus.php", 							// set http request type, uri
			data: ({ 
				resourceId: resId, userId: "monkey", msg: newStatus 		// set data for update call
			}),
		  	success: function(msg){
		  		status.next().remove();										// remove spinner
		  		var statusLog = $("#" + resId + "-log");
				statusLog.load("getLastFiveStatuses.php", "resourceId="+resId+"&time="+(new Date().getTime()), function () {
			    	$("#" + resId + "-status").find("span").effect("highlight", {}, 3000, function () {});
			    	statusLog.find(".recent").effect("bounce", {}, 500, function () {});
			    });
		  	}
		});
		// return status to original state
		$(this).parent().parent().prev().toggle();
		$(this).parent().parent().toggle();
	});
	
	// status update cancel buttons
	$("button.cancel").click(function () {
		//$("#" + this.id + "-button").toggle();
		$(this).parent().parent().prev().toggle();
		$(this).parent().parent().toggle();
	});
});