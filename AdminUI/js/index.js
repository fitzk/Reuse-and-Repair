//JS FOR ELEMENT INITIALIZATION
$(document).ready(function(){
  //ADDED BY PHILIP TAN CS 419 WINTER 2016 1/26 - HOLDS ROTATION ON CLICK
  //$('.btn-floating').active(function() {
  // $(this).toggleClass('active');
  //});
  //ADDED BY PHILIP TAN CS 419 WINTER 2016 1/29 - HOLDS ROTATION ON CLICK FOR SPECIFIED CARET
  var username = "";
  var password = "";
  var first_name = "";
  var last_name = "";
  var email = "";
  var admin_id = "";
  var role_id = "";
  var role_name = "";
  //var urlpath = "http://ec2-52-25-255-57.us-west-2.compute.amazonaws.com/Reuse-and-Repair/web/index.php"; //philip's url path
  var urlpath = "http://ec2-54-200-134-246.us-west-2.compute.amazonaws.com/Reuse-and-Repair/web/index.php"; //brian's url path
  
  function login() {
    $('#login-button').hide();
    $('#admin-menu-title').html(username + "<i class='material-icons right'>arrow_drop_down</i>");
    $('#admin-menu').show();
    $('#fab-business').show();
    $('#fab-admin').show();
    
  }
  
  function logout() {
    $('#login-button').show();
    $('#admin-menu').hide();
    $('#fab-business').hide();
    $('#fab-admin').hide();

    var username = "";
    var password = "";
    var first_name = "";
    var last_name = "";
    var email = "";
    var admin_id = "";
    var role_id = "";
    var role_name = "";
    
    popup("Logged out");
  }

  function popup(message){
  //Materialize.toast(message, 5000);
    $('#popup-message').html(message);
    $('#modal-popup').openModal();  
    $('#modal-popup').delay(5000).fadeOut(1000).closeModal();   
  }
  
	var somenumber = 0;
	$(".collapsible-header").click(function() {
		somenumber++;
		//console.log(somenumber);
	    if ($(this).hasClass("firstbox")) {
		    if ($(".arrowtate.firstbox").hasClass("active")) {
		    	$(".arrowtate.firstbox").removeClass("active");
		   	} else {
		   		$(".arrowtate.firstbox").toggleClass("active");

		   		//LOGIC TO PULL IN DATABASE ENTRIES AND DISPLAY THEM
		   		if (somenumber <= 1) {
		   			var firstletterct = 0;
		   			var firstletter;
		   			var prevletter;
		   			var letterholder;
					$.getJSON(urlpath + "/businesses", function(obj) {
						$.each(obj, function(key, value) {
							prevletter = firstletter;
							console.log(prevletter);
							firstletter = value.name.substring(0,1).toUpperCase();
							//console.log(firstletter):
							if (firstletter == prevletter) {
								firstletterct++;
							}
							else {
								firstletterct = 0;
							}
							if (firstletterct == 0) {
								letterholder = firstletter;
							}
							else if (firstletterct > 0) {
								letterholder = " ";
							}
							$(".allbizlist").append("<tr>" + "<td class='alphaheader'>" + letterholder + "</td>" + "<td>" + value.name + "</td>" + "<td>" + 
								value.address.street_number + " " + value.address.street_name + "<br>" + value.address.city + " " + value.address.state + 
								", " + value.address.zip + "</td>" + "<td>" + "(503)-123-4567" + "</td>" + "<td><a href=" + value.website + " target='_blank'>" + value.website + 
								"</a></td>" + "<td>" + value.category.name + "</td>" + 
								"<td><i class='material-icons arrowtate'>keyboard_arrow_right</i></td>" + "</tr>");
						});
					})

		   		}
		   		else if (somenumber > 1) {

		   		};
		    	$(".arrowtate.secondbox").removeClass("active");
		    	$(".arrowtate.thirdbox").removeClass("active");
		    	$(".arrowtate.fourthbox").removeClass("active");
		   	}
	    }
	    else if ($(this).hasClass("secondbox")) {
		   	if ($(".arrowtate.secondbox").hasClass("active")) {
		    	$(".arrowtate.secondbox").removeClass("active");
		   	} else {
		   		$(".arrowtate.secondbox").toggleClass("active");
		    	$(".arrowtate.firstbox").removeClass("active");
		    	$(".arrowtate.thirdbox").removeClass("active");
		    	$(".arrowtate.fourthbox").removeClass("active");
		   	}
		}
	    else if ($(this).hasClass("thirdbox")) {
		   	if ($(".arrowtate.thirdbox").hasClass("active")) {
		    	$(".arrowtate.thirdbox").removeClass("active");
		   	} else {
		   		$(".arrowtate.thirdbox").toggleClass("active");
		    	$(".arrowtate.firstbox").removeClass("active");
		    	$(".arrowtate.secondbox").removeClass("active");
		    	$(".arrowtate.fourthbox").removeClass("active");
		   	}
		}
	    else if ($(this).hasClass("fourthbox")) {
		   	if ($(".arrowtate.fourthbox").hasClass("active")) {
		   	$(".arrowtate.fourthbox").removeClass("active");
		   	} else {
		   		$(".arrowtate.fourthbox").toggleClass("active");
		    	$(".arrowtate.firstbox").removeClass("active");
		    	$(".arrowtate.secondbox").removeClass("active");
		    	$(".arrowtate.thirdbox").removeClass("active");
		   	}
	    }
	});
	// the "href" attribute of .modal-trigger must specify the modal ID that wants to be triggered

	//------------------------MODAL INITIALIZATIONS------------------------//
	//--------------MODAL CODE FOR ADMIN LOGIN--------------//
	//Initialize login button at top right corner
	$('.loginbutton').leanModal({
      dismissible: true, // Modal can be dismissed by clicking outside of the modal
      opacity: .5, // Opacity of modal background
      in_duration: 300, // Transition in duration
      out_duration: 200, // Transition out duration
      complete: function() {
        //Clear input
        $("#login-username").val("");
        $("#login-password").val("");
        $("#login-error").html("");
      }
    });
    
  //Successful login response, delay then fade out and close modal if user doesn't dismiss
	$('#login-submit').click(function() {
    username = $("#login-username").val();
    password = $("#login-password").val();
    
    if(username == "" || password == "")
      $("#login-error").html("Please enter username and password");
    else
    {
      $.ajax
      ({    
        type: "GET",
        url: urlpath + "/adminlogin",
        dataType: 'json',
        async: false,
        beforeSend: function (xhr) {
            xhr.setRequestHeader ("Authorization", "Basic " + btoa(username + ":" + password));
        },
        success: function (data){
        
          first_name = data[0].first_name;
          last_name = data[0].last_name;
          email = data[0].email;
          admin_id = data[0].admin_id;
          role_id = data[0].role.role_id;
          role_name = data[0].role.role_name;
      
          var welcome_message;
          
          if(first_name == null)
            welcome_message = "Welcome Admin";
          else
            welcome_message = "Welcome " + first_name;
      
          //Clear input
          $("#login-username").val("");
          $("#login-password").val("");
          $("#login-error").html("");
          
          $("#modal-login").closeModal();
          
          popup(welcome_message);
          login();
        },
        error: function (){
          $("#login-error").html("Unauthorized");
        }
      });
    }
	});
 
	//Close modal if dismiss is clicked
	$('.modal.popup .dismissit').click(function() {			
		$('#modal-popup').closeModal({
	      out_duration: 800,
		});
	});

  $('#logout-button').click(function() {
    logout();
  });

  //--------------MODAL CODE FOR ACCOUNT--------------//
	$('.accountbutton').leanModal({
    dismissible: true, // Modal can be dismissed by clicking outside of the modal
    opacity: .5, // Opacity of modal background
    in_duration: 300, // Transition in duration
    out_duration: 200, // Transition out duration
    ready: function() {
      $("#account-username").val(username);
      $("#account-adminrole").val(role_name);
      $("#account-firstname").val(first_name);
      $("#account-lastname").val(last_name);
      $("#account-email").val(email);
      Materialize.updateTextFields();
    },
    complete: function() {
      $("#account-firstname").val("");
      $("#account-lastname").val("");
      $("#account-email").val("");
    }
  });

  $('#update-account-submit').click(function() {
    var newfirstname = $("#account-firstname").val();
    var newlastname = $("#account-lastname").val();
    var newemail = $("#account-email").val();

    $.ajax
    ({    
      type: "POST",
      url: urlpath + "/admin/" + admin_id,
      data: {
        'first_name' : newfirstname,
        'last_name' : newlastname,
        'email' : newemail
      },
      async: false,
      beforeSend: function (xhr) {
          xhr.setRequestHeader ("Authorization", "Basic " + btoa(username + ":" + password));
      },
      success: function (){
        //Successful account update
        //Clear input
        $("#account-firstname").val("");
        $("#account-lastname").val("");
        $("#account-email").val("");
        
        first_name = newfirstname;
        last_name = newlastname;
        email = newemail;
        
        $("#modal-account").closeModal();

        popup("Account updated");
      }
    });   
  });

  //Close account modal form with click of X icon
	$('.modal.accountmodal .modalclosex').click(function() {
		$('.modal.accountmodal').closeModal({
	      out_duration: 200,
		});
    $("#account-firstname").val("");
    $("#account-lastname").val("");
    $("#account-email").val("");
	});
 
  //--------------MODAL CODE FOR CHANGE PASSWORD--------------//
 	$('.changepasswordbutton').leanModal({
    dismissible: true, // Modal can be dismissed by clicking outside of the modal
    opacity: .5, // Opacity of modal background
    in_duration: 300, // Transition in duration
    out_duration: 200, // Transition out duration
    complete: function() {
      $("#pwchange-password").val("");
      $("#pwchange-newpassword1").val("");
      $("#pwchange-newpassword2").val("");
      $("#change-password-error").html("");
    }
  });
  
  $('#change-password-submit').click(function() {

    var oldpassword = $("#pwchange-password").val();
    var newpassword1 = $("#pwchange-newpassword1").val();
    var newpassword2 = $("#pwchange-newpassword2").val();
    
    if(oldpassword == "" || newpassword1 == "" || newpassword2 == "")
      $("#change-password-error").html("Please enter fields");
    else if(password != oldpassword)
      $("#change-password-error").html("Invalid password");
    else if(newpassword1 != newpassword2)
      $("#change-password-error").html("Passwords do not match");
    else
    { 
      $.ajax
      ({    
        type: "POST",
        url: urlpath + "/admin/" + admin_id + "/password",
        data: {'password' : newpassword1},
        async: false,
        beforeSend: function (xhr) {
            xhr.setRequestHeader ("Authorization", "Basic " + btoa(username + ":" + password));
        },
        success: function (){
          //Successful password update
          //Clear input
          $("#pwchange-password").val("");
          $("#pwchange-newpassword1").val("");
          $("#pwchange-newpassword2").val("");
          $("#change-password-error").html("");
          password = newpassword1;
          
          $("#modal-change-password").closeModal();

          popup("Password updated");
        },
        error: function (){
          $("#change-password-error").html("Error: Password not updated");
        }
      });
    }
  });

  //Close account modal form with click of X icon
	$('.modal.changepasswordmodal .modalclosex').click(function() {
		$('.modal.changepasswordmodal').closeModal({
	      out_duration: 200,
		});
    $("#pwchange-password").val("");
    $("#pwchange-newpassword1").val("");
    $("#pwchange-newpassword2").val("");
    $("#change-password-error").html("");
	});

	//--------------MODAL CODE FOR ADDING BUSINESS--------------//
	$('.addbusiness').leanModal({
      dismissible: false,
      opacity: .5,
      in_duration: 300,
      out_duration: 300,
    });
    //Close add business modal form with click of X icon
	$('.modal.businessmodal .modalclosex').click(function() {
		$('.modal.businessmodal').closeModal({
	      out_duration: 200,
		});
	});
    //This controls the submit button, DO ONLY IF SUBMIT IS SUCCESSFUL
	$('.addsubmit').leanModal({
	  dismissible: false,
      in_duration: 800, 
      opacity: 0,
    });
    //Successful submit response, delay then fade out and close modal if user doesn't dismiss
	$('.addsubmit').click(function() {
		$('.modal.addbussuccess').delay(6000).fadeOut(1000).closeModal();
	});
	//Close modal if dismiss is clicked
	$('.modal.addbussuccess .dismissit').click(function() {			
		$('.modal.addbussuccess').closeModal({
	      out_duration: 800,
		});
	});

	//--------------MODAL CODE FOR ADDING CATEGORY--------------//

	//--------------MODAL CODE FOR ADDING ADMIN--------------//



	//------------------------SELECT MENU INITIALIZATIONS------------------------//
	//$('.select').material_select();



	/*$('.firstbox').click(function() {
		
		$.ajax({ 
			url: "http://ec2-52-25-255-57.us-west-2.compute.amazonaws.com/Reuse-and-Repair/web/index.php/businesses", 
			dataType: "jsonp",
			success: function(result) {
				var pdata = jQuery.parseJSON(result);
				var htmldata = "";
				$.each(pdata, function(i, serverData) {
					htmldata = htmldata + '-' + serverData.id + '<br>';
				})
				$('#dispfirstbox').html(htmldata);
				//var id = result['id'];
				//document.getElementById("dispfirstbox").innerHTML = id;
			}
		});

	});*/

});