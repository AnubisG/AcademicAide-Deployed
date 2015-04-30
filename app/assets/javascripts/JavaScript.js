//$('#learn').on({'mouseenter':function(){$('#hidden_learn').fadeIn();},'mouseleave':function(){$('#hidden_learn').fadeOut();}
//			});

$(document).ready(function(){
		$("#learn").hover(function(){
			$("#hidden_learn").slideToggle("fast");
		});
		$("#create").hover(function(){
			$("#hidden_create").slideToggle("fast");
		});
		$("#share").hover(function(){
			$("#hidden_share").slideToggle("fast");
		});
});