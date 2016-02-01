$(document).ready(function(){ //DOM이 준비되고

	/**
	 * 헤더 호버 효과
	 * @author JeSeong Lee
	 */
    $(".dropdown").hover(            
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideDown("400");
            $(this).toggleClass('open');        
        },
        function() {
            $('.dropdown-menu', this).not('.in .dropdown-menu').stop(true,true).slideUp("400");
            $(this).toggleClass('open');       
        }
    );
	
    /**
     * main 슬라이드
     * @author Jeseong Lee
     */
    //Events that reset and restart the timer animation when the slides change
    $("#transition-timer-carousel").on("slide.bs.carousel", function(event) {
        //The animate class gets removed so that it jumps straight back to 0%
        $(".transition-timer-carousel-progress-bar", this)
            .removeClass("animate").css("width", "0%");
    }).on("slid.bs.carousel", function(event) {
        //The slide transition finished, so re-add the animate class so that
        //the timer bar takes time to fill up
        $(".transition-timer-carousel-progress-bar", this)
            .addClass("animate").css("width", "100%");
    });
    
    //Kick off the initial slide animation when the document is ready
    $(".transition-timer-carousel-progress-bar", "#transition-timer-carousel")
        .css("width", "100%");
	
    
    
    /**
     * 회원가입 / 로그인 모달창 및 내부 Tab
     * @author Jeseong Lee
     */
    
	$('.memberRegister').click(function(){
		$('#loginModal').modal({
			//취소버튼으로만 창을 끌 수 있도록 지정
			backdrop: 'static',
			keyboard: false
		});
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
		//다시 모달창을 열었을 대 첫 화면 띄움
	});
	
	$('.memberLogin').click(function(){
		$('#loginModal').modal({
			//취소버튼으로만 창을 끌 수 있도록 지정
			backdrop: 'static',
			keyboard: false
		});
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
		//다시 모달창을 열었을 대 첫 화면 띄움
	});
    
    $('#login-form-link').click(function(e) {
		$("#login-form").delay(100).fadeIn(100);
 		$("#register-form").fadeOut(100);
		$('#register-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
    
	$('#register-form-link').click(function(e) {
		$("#register-form").delay(100).fadeIn(100);
 		$("#login-form").fadeOut(100);
		$('#login-form-link').removeClass('active');
		$(this).addClass('active');
		e.preventDefault();
	});
    
	/**
	 * 상품 보기 모달
	 * @author Jeseong Lee
	 */
	$('.detailProductViewModal').click(function(){
		$('#detailProductViewModal').modal({
			keyboard: true
		});
		e.preventDefault();
		//다시 모달창을 열었을 대 첫 화면 띄움
	});

    /**
     * 회원가입 유효성 검사
     * @author YuJeong Kim
     */
	
	$("#register-form").validate({
		//규칙
		rules:{
			memberEmail :{
				required : true,
				email : true,
				normalizer : function(value){
					return $.trim(value);
				},
				remote : "checkEmail.mako"
			},
			memberNickName :{
				required : true,
				minlength : 3,
				remote : "checkNickName.mako"
			},
			memberName :{
				required : true,
				minlenth : 1
			},
			memberPassword :{
				required : true,
				minlength : 3
			},
			confirmPassword :{
				required : true,
				minlength : 3,
				equalTo : memberPassword
			},
			memberBirth :{
				required : true,
				date : true
			},
			memberPnumber :{
				required : true,
				digits : true,
				minlength: 10,
				maxlength: 12
			}
		
		},
		messages :{
			memberEmail :{
				required : "이메일을 입력하세요.",
				email : "올바른 이메일 형식이 아닙니다.",
				remote : "이미 존재하는 이메일 입니다.",
			},
			memberNickName :{
				required : "닉네임을 입력하세요.",
				minlength : "최소 {0}글자 이상이어야 합니다. ",
				remote : "이미 존재하는 닉네임 입니다."
			},
			memberName :{
				required : "이름을 입력하세요.",
				minlength : "최소 {0}글자 이상이어야 합니다."
			},
			memberPassword :{
				required : "비밀번호를 입력하세요.",
				minlength : "최소 {0}글자 이상이어야 합니다."
			},
			confirmPassword :{
				required : "비밀번호 확인란을 입력하세요.",
				minlength : "최소 {0}글자 이상이어야 합니다.",
				equalTo : "비밀번호와 일치하지 않습니다."
			},
			memberBirth :{
				required : "생일을 선택하세요.",
				date : "올바른 날짜가 아닙니다."
			},
			memberPnumber :{
				required : "전화번호를 입력하세요.",
				digits : "숫자만 입력하세요.",
				minlength: "최소 {0}글자 이상이어야 합니다.",
				maxlength: "최대 {0}글자 이상이어야 합니다."
			}
		}
	});
	
	
	
	/**
     * 판매자 회원가입 유효성 검사
     * @author YuJeong Kim
     */
	
	$("#dealerRegister-form").validate({
		submit: function(){
			var f = confirm("회원가입을 완료하시겠습니까?");
			if(f){
				return true;
			}else{
				onsubmit : false
				return false;
			}	
		},
		//규칙
		rules:{
			memberEmail :{
				required : true,
				email : true,
				remote : "checkEmail.mako"
			},
			memberNickName :{
				required : true,
				minlength : 3,
				remote : "checkNickName.mako"
			},
			memberName :{
				required : true,
				minlenth : 1
			},
			memberPassword :{
				required : true,
				minlength : 3
			},
			confirmPassword :{
				required : true,
				minlength : 3,
				equalTo : memberPassword
			},
			memberBirth :{
				required : true,
				date : true
			},
			memberPnumber :{
				required : true,
				digits : true,
				minlength: 10,
				maxlength: 12
			},
			permitNumber:{
				required : true,
				digits : true,
				minlength: 10,
				maxlength: 10
			}
		
		},
		messages :{
			memberEmail :{
				required : "이메일을 입력하세요.",
				email : "올바른 이메일 형식이 아닙니다.",
				remote : "이미 존재하는 이메일 입니다.",
				onsubmit : false
			},
			memberNickName :{
				required : "닉네임을 입력하세요.",
				minlength : "최소 {0}글자 이상이어야 합니다. ",
				remote : "이미 존재하는 닉네임 입니다."
			},
			memberName :{
				required : "이름을 입력하세요.",
				minlength : "최소 {0}글자 이상이어야 합니다."
			},
			memberPassword :{
				required : "비밀번호를 입력하세요.",
				minlength : "최소 {0}글자 이상이어야 합니다."
			},
			confirmPassword :{
				required : "비밀번호 확인란을 입력하세요.",
				minlength : "최소 {0}글자 이상이어야 합니다.",
				equalTo : "비밀번호와 일치하지 않습니다."
			},
			memberBirth :{
				required : "생일을 선택하세요.",
				date : "올바른 날짜가 아닙니다."
			},
			memberPnumber :{
				required : "전화번호를 입력하세요.",
				digits : "숫자만 입력하세요.",
				minlength: "최소 {0}글자 이상이어야 합니다.",
				maxlength: "최대 {0}글자 이상이어야 합니다."
			},
			permitNumber :{
				required : "사업자등록번호를 입력하세요.",
				digits : "숫자만 입력하세요.",
				minlength: "최소 {0}글자 이상이어야 합니다.",
				maxlength: "최대 {0}글자 이하이어야 합니다."
			}
		}
	});

	/**
	 * 판매자 회원가입 모달
	 * @author YuJeong Kim
	 */
	$('.dealerRegister').click(function(){
		$('#dealerRegisterModal').modal({
			//취소버튼으로만 창을 끌 수 있도록 지정
			backdrop: 'static',
			keyboard: false
		});
		$("#dealerRegister-form").delay(100).fadeIn(100);
		$(this).addClass('active');
		e.preventDefault();
		//다시 모달창을 열었을 때 첫 화면 띄움
	});//click
	
	/**
	 * 판매자 인증 모달
	 * @author YuJeong Kim
	 */
	$('.dealerCertify').click(function(){
		$('#dealerCertifyModal').modal({
			//취소버튼으로만 창을 끌 수 있도록 지정
			backdrop: 'static',
			keyboard: false
		});
		$("#dealerCertify-form").delay(100).fadeIn(100);
		$(this).addClass('active');
		e.preventDefault();
		//다시 모달창을 열었을 때 첫 화면 띄움
	});//click

	/**
	 * 판매자 인증 유효성검사
	 * @author YuJeong Kim
	 */
	var dealerPermitNumberFlag_c = false;
	$("#dealerPermitNumber-certify").keyup(function(){
		 var regExp = /[\{\}\[\]\/?.,;:|\)*~`!^\-_+<>@\#$%&\\\=\(\'\"]/gi;
		var permitNumber = $(this).val();
		if(permitNumber.trim()==""){
			$("#checkDealerPermitNumber-certify").html("사업자번호를 입력해주세요.").css("color","pink");
			dealerPermitNumberFlag_c = false;
			return false;
		}
		if(isNaN($(this).val())==false){
			if(permitNumber.trim().length!=10){
			$("#checkDealerPermitNumber-certify").html("사업자번호 10자리를 정확하게 입력해주세요.").css("color","pink");
			dealerPermitNumberFlag_c = false;
				return false;
			}else{
				$.ajax({
					url:"checkPermitNumber.mako",
					method:"post",
					data:"permitNumber="+permitNumber,
					success:function(res){
						if(res=="F"){
							$("#checkDealerPermitNumber-certify").html("존재하는 사업자 번호입니다.").css("color","pink");
							dealerPermitNumberFlag_c = false;
							return false;
						}else{
							$("#checkDealerPermitNumber-certify").html("true").css("color","#CEF279");
							dealerPermitNumberFlag_c = true;
						}
					}
				});//ajax
			}
			
		}else{
			$("#checkDealerPermitNumber-certify").html("숫자로 입력해주세요.").css("color","pink");
			dealerPermitNumberFlag_c = false;
			return false;
		}
	});//dealerPermitNumber keyup
	
	$("#dealerCertify-form").submit(function(){
		if(dealerPermitNumberFlag_c){
			return true;
		}else{
			alert("양식을 확인해주세요.");
			return false;
		}
	});//register-form submit
	
	/*myPage에서 탭 관리하는 부분*/
	  $("div.bhoechie-tab-menu>div.list-group>a").click(function(e) {
	        e.preventDefault();
	        $(this).siblings('a.active').removeClass("active");
	        $(this).addClass("active");
	        var index = $(this).index();
	        $("div.bhoechie-tab>div.bhoechie-tab-content").removeClass("active");
	        $("div.bhoechie-tab>div.bhoechie-tab-content").eq(index).addClass("active");
	    });
	
	  $("#dealerCertify-form").validate({
		  
	  });
	 
	  
	 /**
	  * 판매자 인증 모달
	  * @author YuJeong Kim
	  */
	  $('.updateMemberInfo').click(function(){
		$('#memberInfoUpdateModal').modal({
			//취소버튼으로만 창을 끌 수 있도록 지정
			backdrop: 'static',
			keyboard: false
		});
		$("#memberInfoUpdate-form").delay(100).fadeIn(100);
		$(this).addClass('active');
		e.preventDefault();
		//다시 모달창을 열었을 때 첫 화면 띄움
	  });//click
	  
});//document.ready


















