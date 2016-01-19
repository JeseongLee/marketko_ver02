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
    
    
    
});//document.ready


















