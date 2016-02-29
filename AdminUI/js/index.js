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
    $('.card-admin-info').show();
        
    switch(role_id) {
      case "1":
        $('#fab-business').show();
        $('#fab-admin').show();
        $('#admin-content .card').addClass('medium');
        $('#admin-content .card').removeClass('small');  
        $('.card-admin-action').show();
        $('.deleteadminbutton').show();
        $('.changerolebutton').show();
        break;
      case "2":
        $('#fab-business').show();
        $('#fab-admin').hide();
        $('#admin-content .card').addClass('small');
        $('#admin-content .card').removeClass('medium');
        $('.card-admin-action').hide();
        $('.deleteadminbutton').hide();
        $('.changerolebutton').hide();
        break;
      case "3":
        $('#fab-business').show();
        $('#fab-admin').hide();
        $('#admin-content .card').addClass('small');
        $('#admin-content .card').removeClass('medium');
        $('.card-admin-action').hide();
        $('.deleteadminbutton').hide();
        $('.changerolebutton').hide();
        break;
      default:
        $('#fab-business').hide();
        $('#fab-admin').hide();
        $('#admin-content .card').addClass('small');
        $('#admin-content .card').removeClass('medium');
        $('.card-admin-action').hide();
        $('.deleteadminbutton').hide();
        $('.changerolebutton').hide();
        break;
    }
  }
  
  function logout() {
    $('#login-button').show();
    $('#admin-menu').hide();
    $('#fab-business').hide();
    $('#fab-admin').hide();

    $('#admin-content .card').addClass('small');
    $('#admin-content .card').removeClass('medium');
    $('.card-admin-info').hide();
    $('.card-admin-action').hide();
    $('.deleteadminbutton').hide();
    $('.changerolebutton').hide();
    
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

	//--------------CODE FOR ADMINS PAGE--------------//
  //Add card to page
  function addAdminCard(card_admin_id, card_username, card_rolename, card_firstname, card_lastname, card_email) {
    if(card_firstname == null)
      card_firstname = "";
    if(card_lastname == null)
      card_lastname = "";
    if(card_email == null)
      card_email = ""; 
  
    var cardhtml = "<div id='card_admin_id_" + card_admin_id + "' class='col s12 m6 l4'><div class='card small'><div class='card-image waves-effect waves-block waves-light'><img class='activator' src='../AdminUI/background4.jpg'><span class='card-title'>" + card_firstname + " " + card_lastname + "</span></div><div class='card-content'><span class='hidden card-admin-info'>Username: " + card_username + "<br>Role: <span id='card_admin_role_" + card_admin_id + "'>" + card_rolename + "</span><br></span>";
  
    if(card_email != "")
      cardhtml += "Email: " + card_email;
    
    cardhtml += "</div><div class='card-action card-admin-action hidden'><button value='" + card_admin_id + "' class='hidden changerolebutton waves-effect waves-teal btn-flat teal-text text-darken-2'>Change Role</button><button value='" + card_admin_id + "' class='hidden deleteadminbutton waves-effect waves-teal btn-flat teal-text text-darken-2'>Delete</button></div></div></div>"
  
    $("#admin-content").append(cardhtml);
  }
  
  function populateAdmins(reset){
    if(reset == true)
      $("#admin-content").empty();
    
    //Get list of admin users and add admin cards
    $.ajax
    ({    
      type: "GET",
      url: urlpath + "/admin",
      dataType: 'json',
      async: true,
      success: function (data){
        for (var i = 0; i < data.length; i++) {
          addAdminCard(data[i].admin_id, data[i].username, data[i].role.role_name, data[i].first_name, data[i].last_name, data[i].email);
        }

        if(reset == true)
          login();
      }
    });
  }
  
  populateAdmins();
  
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
 
	//--------------MODAL CODE FOR CHANGING USER ROLE--------------//
  
  var selected_admin_id;
  
  $("#admin-content").on("click", ".changerolebutton", function(){
    selected_admin_id = $(this).val();
    
    $('#modal-change-role').openModal({
      complete: function() {
        $('input[name="role-group"]').filter("[value='"+1+"']").prop('checked', true);
      }
    });
  });
 
  $('#change-role-submit').click(function() {
    var selected_role_id = $('input[name = "role-group"]:checked').val();
    
    $.ajax
    ({    
      type: "POST",
      url: urlpath + "/admin/" + selected_admin_id +  "/role",
      data: {'role_id' : selected_role_id},
      async: false,
      beforeSend: function (xhr) {
          xhr.setRequestHeader ("Authorization", "Basic " + btoa(username + ":" + password));
      },
      success: function (){
        //Successful role update
        var card_admin_role = "card_admin_role_" + selected_admin_id;
        var card_role_name;
        
        switch(selected_role_id) {
          case "1":
            card_role_name = "Master admin";
            break;
          case "2":
            card_role_name = "Content management admin";
            break;
          case "3":
            card_role_name = "Business admin";
            break;
          case "4":
            card_role_name = "Read-only admin";
            break;
        }
        
        document.getElementById(card_admin_role).innerHTML = card_role_name;
        
        if(selected_admin_id == admin_id)
        {
          role_id = selected_role_id;
          login();
        }
        
        $('input[name="role-group"]').filter("[value='"+1+"']").prop('checked', true);
        
        $("#modal-change-role").closeModal();
        
        popup("Role updated");
      }
    });
  });
 
  //Close add change role modal form with click of X icon
  $('.modal.changerolemodal .modalclosex').click(function() {
  	$('.modal.changerolemodal').closeModal({
        out_duration: 200,
  	});
    $('input[name="role-group"]').filter("[value='"+1+"']").prop('checked', true);
  });
 
 	//--------------MODAL CODE FOR DELETING USER--------------//

  $("#admin-content").on("click", ".deleteadminbutton", function(){
    selected_admin_id = $(this).val();
      
    $('#modal-delete-user').openModal();
  });

  $('#delete-user-submit').click(function() {
  
    $.ajax
    ({    
      type: "DELETE",
      url: urlpath + "/admin/" + selected_admin_id,
      async: false,
      beforeSend: function (xhr) {
          xhr.setRequestHeader ("Authorization", "Basic " + btoa(username + ":" + password));
      },
      success: function (){
        //Successful delete
        var card_admin_id = "card_admin_id_" + selected_admin_id;
       
        document.getElementById(card_admin_id).style.display = "none";
        
        if(selected_admin_id == admin_id)
          logout();
            
        $("#modal-delete-user").closeModal();
        
        popup("Admin deleted");
      }
    });
  });

  $('#delete-user-cancel').click(function() {
  	$('#modal-delete-user').closeModal({
        out_duration: 200,
  	});
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
