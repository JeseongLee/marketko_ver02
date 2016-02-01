<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<!-- Footer -->
    <footer class="text-center">
        <div class="footer-above">
            <div class="container">
                <div class="row">
                    <div class="footer-col col-md-4">
                        <h3>Location</h3>
                        <p>경기도 성남시 분당구 삼평동 696-1 유스페이스2 B동 8층 한국소프트웨어진흥협회</p>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Around the Web</h3>
                        <ul class="list-inline">
                            <li>
                                <a href="http://www.facebook.com" class="btn-social btn-outline"><i class="fa fa-fw fa-facebook"></i></a>
                            </li>
                            <li>
                                <a href="http://google.co.kr" class="btn-social btn-outline"><i class="fa fa-fw fa-google-plus"></i></a>
                            </li>
                            <li>
                                <a href="http://twitter.com" class="btn-social btn-outline"><i class="fa fa-fw fa-twitter"></i></a>
                            </li>
                            <li>
                                <a href="http://instagram.com" class="btn-social btn-outline"><i class="fa fa-fw fa-instagram"></i></a>
                            </li>
                        </ul>
                    </div>
                    <div class="footer-col col-md-4">
                        <h3>Created By</h3>
                        <p>PM : &nbsp;&nbsp;&nbsp;PL : &nbsp;&nbsp;&nbsp;PE : &nbsp;&nbsp;&nbsp;</p>
                        <p>PE : &nbsp;&nbsp;&nbsp;PS : &nbsp;&nbsp;&nbsp;PA : </p>
                    </div>
                </div>
            </div>
        </div>
        <div class="footer-below">
            <div class="container">
                <div class="row">
                    <div class="col-lg-12">
                    <c:choose>
                       <c:when test="${not empty sessionScope.pnvo}">
                          Copyright &copy; <a href="${initParam.root}login_home.do">www.MarketKO.co.kr</a> 2016
                       </c:when>
                       <c:otherwise>
                           Copyright &copy; <a href="${initParam.root}home.do">www.MarketKO.co.kr</a> 2016                   
                       </c:otherwise>
                    </c:choose>
                    </div>
                </div>
            </div>
        </div>
    </footer>



<!-- Modal  -->

<!-- 로그인 폼 출력되는 모달 창 -->
<!-- Modal -->

<div class="modal fade" id="loginModal">
	<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row text-center">
							<div class="col-xs-6 ">
								<a href="javascript:;" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="javascript:;" class="active" id="register-form-link">Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="login-form" action="memberLogin.mako" method="post" role="form" style="display: block;">
									<div class="form-group">
										<input type="email" name="memberEmail" tabindex="1" class="form-control" placeholder="Email Address" required maxlength="33">
									</div>
									<div class="form-group">
										<input type="password" name="memberPassword" tabindex="2" class="form-control" placeholder="Password">
									</div>
									<div class="form-group text-center">
										<input type="checkbox" tabindex="3" class="" name="remember" id="remember">
										<label for="remember">Remember Me</label>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="login-submit" id="login-submit" tabindex="4" class="form-control btn btn-login" value="Log In">
											</div>
										</div>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-lg-12">
												<div class="text-center">
													<a href="http://phpoll.com/recover" tabindex="5" class="forgot-password">Forgot Password?</a>
												</div>
											</div>
										</div>
									</div>
								</form>
								<form id="register-form" action="${initParam.root }registerMember.mako" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="email" name="memberEmail" id="memberEmail" tabindex="1" class="form-control" placeholder="Email Address" value="" required="required">
										<span id="checkEmail"></span>
									</div>
									<div class="form-group">
										<input type="text" name="memberNickName" id="memberNickName" tabindex="2" class="form-control" placeholder="NickName" value="" required="required">
										<span id="checkNickName"></span>
									</div>
									<div class="form-group">
										<input type="text" name="memberName" id="memberName" tabindex="3" class="form-control" placeholder="Name" value="" required="required">
										<span id="checkName"></span>
									</div>
									
									<div class="form-group">
										<input type="password" name="memberPassword" id="memberPassword" tabindex="4" class="form-control" placeholder="Password" required="required">
										<span id="checkMemberPassword"></span>
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password" id="confirmPassword" tabindex="4" class="form-control" placeholder="Confirm Password" required="required">
										<span id="checkConfirm-password"></span>
									</div>
									<div class="form-group">
										<input type="date" name="memberBirth" id="memberBirth" tabindex="5" class="form-control" placeholder="생년월일을 선택하세요." value="" required="required">
										<span id="checkMemberBirth"></span>
									</div>
									<div class="form-group">
										<input type="tel" name="memberPnumber" id="memberPnumber" tabindex="6" class="form-control" placeholder="PhoneNumber -없이 입력하세요." value="" required="required">
										<span id="checkMemberPnumber"></span>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="8" class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--로그인모달창 끝 -->

<!-- 상품 보기 모달창 시작 -->
<div class="modal fade" id="detailProductViewModal">
	<div class="vertical-alignment-helper">
		<div class="modal-dialog vertical-align-center">
			<div class="modal-content">
				<div class="container detailProductView">
					<div class="modal-header productDetailViewHeader">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">×</span>
							<span class="sr-only">Close</span>
						</button>
						<h6 class="modal-title" id="myModalLabel">상품 간편 보기</h6>
					</div>
					<div class="modal-body">
						<div class="row">
							<!-- 상품 보기 좌측 시작 -->
							<div class="col-md-6 productDetailLeft">
								<div class="productDetailViewImgBox">
									<h5 class="text-left"><span class="label label-warning">[카테고리]</span>상품명입니다</h5>
									<img src="http://shop2.phinf.naver.net/20151214_44/deming_1450019940311yTYHR_JPEG/56640932808510727_760136195.jpg?type=m180" class="productDetailViewImg">
								</div>
							</div>
							<!-- 상품 보기 좌측 끝 -->
							<!-- 상품 보기 우측 시작 -->
							<div class="col-md-6 productDetailRight">
								<!-- 가격 정보 -->
								<div class="price">
									<div>
										판매가<span class="rightTab"><span class="orginal"><strong>34,900</strong></span><span class="won">원</span></span>
									</div>
									<div>
										할인가<span class="rightTab"><span class="discount"><strong>18,900</strong></span><span class="disWon">원</span></span>
										<span class="disValue">(16,000원 할인)</span>
									</div>
								</div>
								<hr class="seperation">
								<!-- 구매 혜택 -->
								<div class="benefit">
									<div>
										구매혜택<span class="rightTab4Char">무이자 할부</span>
									</div>
									<div>
										구매평작성<span class="rightTab5Char">추가 150p</span>
									</div>
								</div>
								<hr class="seperation">
								<!-- 배송 정보 -->
								<div class="delivery">
									<div>
										배송방법<span class="rightTab4Char">택배</span>
									</div>
									<div>
										배송비<span class="rightTab3Char">2,500원
										&nbsp;&nbsp;<span id="deliveryPolicy">(50,000원 이상 구매시 무료 /</span><br>
										<span id="deliveryPolicy2">제주 외 도서 산간 지역 추가 5,000원 추가)</span></span>
									</div>
								</div>
								<hr class="seperation"><br>
								<!-- 상품 만족도 결과 -->
								<div class="evaluate">
									<div>
										상품만족도<span class="rightTab5Char"><span class="result">87%</span></span>
										<span class="rightTab5Char">구매평<span class="rightTab5Char"><span class="result">145</span></span></span>
									</div>
								</div>
								<br>
								<!-- 구매평 보기 -->
								<div class="evaluateList">
									<div class="listHeader">
										<span class="col-xs-10 menu">
											<strong>구매평(14건)</strong>
										</span>
										<span class="col-xs-2">
											<a href="javascript:;"><i class="fa fa-caret-square-o-left"></i></a>
											<a href="javascript:;"><i class="fa fa-caret-square-o-right"></i></a>
										</span>
									</div>
								<br><br>
									<div class="listInfo">
										<span class="col-mld-4">쓰레기를 샀어요^^</span>
										<span class="col-mld-3">닉네임</span>
										<span class="col-mld-3">작성일</span>
										<span class="col-mld-2">5점</span>
									</div>
									<div class="listInfo">
										<span class="col-mld-4">쓰레기를 샀어요^^</span>
										<span class="col-mld-3">닉네임</span>
										<span class="col-mld-3">작성일</span>
										<span class="col-mld-2">5점</span>
									</div>
									<div class="listInfo">
										<span class="col-mld-4">쓰레기를 샀어요^^</span>
										<span class="col-mld-3">닉네임</span>
										<span class="col-mld-3">작성일</span>
										<span class="col-mld-2">5점</span>
									</div>
								</div>
							</div>
							<!-- 상품 보기 우측 끝 -->
						</div>
					</div>
					<div class="modal-footer productDetailViewFooter">
					<center>
						<a class="btn btn-default detailViewBtn" href="javascript:;" role="button">상세보기</a>
						<a class="btn btn-default closeBtn" href="javascript:;" role="button" data-dismiss="modal">Close</a>
					</center>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- 상품 보기 모달창 끝 -->

<!-- 판매자 등록 폼 출력되는 모달 창 -->
<div class="modal fade" id="dealerRegisterModal">
	<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row text-center">
							
							<div class="col-xs-12">
								<a href="#" class="active" id="register-form-link">Buyer Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="dealerRegister-form" action="${initParam.root }registerDealer.mako" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="email" name="memberEmail" id="dealerEmail" tabindex="1" class="form-control" placeholder="Email Address" value="" required="required">
										<span id="checkDealerEmail"></span>
									</div>
									<div class="form-group">
										<input type="text" name="memberNickName" id="dealerNickName" tabindex="2" class="form-control" placeholder="NickName" value="" required="required">
										<span id="checkDealerNickName"></span>
									</div>
									<div class="form-group">
										<input type="text" name="memberName" id="dealerName" tabindex="3" class="form-control" placeholder="Name" value="" required="required">
										<span id="checkDealerName"></span>
									</div>
									
									<div class="form-group">
										<input type="password" name="memberPassword" id="dealerPassword" tabindex="4" class="form-control" placeholder="Password" required="required">
										<span id="checkDealerPassword"></span>
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password" id="dealerConfirm-Password" tabindex="4" class="form-control" placeholder="Confirm Password" required="required">
										<span id="checkDealerConfirm-password"></span>
									</div>
									<div class="form-group">
										<input type="date" name="memberBirth" id="dealerBirth" tabindex="5" class="form-control" placeholder="생년월일을 선택하세요." value="" required="required">
										<span id="checkDealerBirth"></span>
									</div>
									<div class="form-group">
										<input type="tel" name="memberPnumber" id="dealerPnumber" tabindex="6" class="form-control" placeholder="PhoneNumber -없이 입력하세요." value="" required="required">
										<span id="checkDealerPnumber"></span>
									</div>
									<hr>
									<div class="form-group">
										<input type="text" name="permitNumber" id="dealerPermitNumber" tabindex="7" class="form-control" placeholder="사업자번호 -없이 입력하세요." value="" required="required">
										<span id="checkDealerPermitNumber"></span>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="dealerRegister-submit" id="register-submit" tabindex="9" class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
<!--판매자등록 모달창 끝 -->

<!-- 판매자 인증 폼 출력되는 모달 창 -->
<div class="modal fade" id="dealerCertifyModal">
	<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row text-center">
							
							<div class="col-xs-12">
								<a href="#" class="active" id="register-form-link">Buyer Register</a>
							</div>
						</div>
						<hr>
					</div>
					<div class="panel-body">
						<div class="row">
							<div class="col-lg-12">
								<form id="dealerCertify-form" action="${initParam.root }auth_certifyDealer.mako" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="hidden" name = "memberVO.memberEmail" value="${sessionScope.memberVO.memberEmail }">
										<input type="text" name="permitNumber" id="dealerPermitNumber-certify" tabindex="7" class="form-control" placeholder="사업자번호 -없이 입력하세요." value="" required="required">
										<span id="checkDealerPermitNumber-certify"></span>
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="dealerCertify-submit" id="register-submit" tabindex="9" class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form>
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
		</div>
	</div>
<!--판매자등록 모달창 끝 -->

<!-- 상품 보기 모달창 시작 -->
<div class="modal fade" id="detailProductViewModal">
<div class="vertical-alignment-helper">
  <div class="modal-dialog vertical-align-center">
  <div class="modal-content">
	<div class="container detailProductView">
          <div class="modal-header">
              <button type="button" class="close" data-dismiss="modal"><span aria-hidden="true">×</span><span class="sr-only">Close</span></button>
              <h4 class="modal-title" id="myModalLabel">Login to site.com</h4>
          </div>
          <div class="modal-body">
              <div class="row">
                  <div class="col-md-6">
                  	<div class="thumbnail" >
					<h4 class="text-center"><span class="label label-info">Samsung</span></h4>
					<img src="http://placehold.it/650x450&text=Galaxy S5" class="img-responsive">
					<div class="caption">
						<div class="row">
							<div class="col-md-6 col-xs-6">
								<h3>Galaxy S5</h3>
							</div>
							<div class="col-md-6 col-xs-6 price">
								<h3>
								<label>$649.99</label></h3>
							</div>
						</div>
						<p>32GB, 2GB Ram, 1080HD, 5.1 inches, Android</p>
						<div class="row">
							<div class="col-md-6">
								<a class="btn btn-primary btn-product"><span class="glyphicon glyphicon-thumbs-up"></span> Like</a> 
							</div>
							<div class="col-md-6">
								<a href="#" class="btn btn-success btn-product"><span class="glyphicon glyphicon-shopping-cart"></span> Buy</a></div>
						</div>

						<p> </p>
					</div>
				</div>
                  
                  </div>
                  <div class="col-md-6">
                      <p class="lead">Register now for <span class="text-success">FREE</span></p>
                      <ul class="list-unstyled" style="line-height: 2">
                          <li><span class="fa fa-check text-success"></span> See all your orders</li>
                          <li><span class="fa fa-check text-success"></span> Fast re-order</li>
                          <li><span class="fa fa-check text-success"></span> Save your favorites</li>
                          <li><span class="fa fa-check text-success"></span> Fast checkout</li>
                          <li><span class="fa fa-check text-success"></span> Get a gift <small>(only new customers)</small></li>
                          <li><a href="/read-more/"><u>Read more</u></a></li>
                      </ul>
                      <p><a href="/new-customer/" class="btn btn-info btn-block">Yes please, register now!</a></p>
                  </div>
              </div>
          </div>
      </div>
     </div>
     </div>
  </div>
</div>
  <!-- 상품 보기 모달창 끝 -->
  
  

<!-- 판매자 인증 폼 출력되는 모달 창 -->
<div class="modal fade" id="memberInfoUpdateModal" >
	<div class="container">
    	<div class="row">
			<div class="col-md-6 col-md-offset-3">
				<div class="panel panel-login">
					<div class="panel-heading">
						<div class="row text-center">
							
							<div class="col-xs-12">
								<a href="#" class="active" id="register-form-link">회원정보수정</a>
								
							</div>
						</div>
						<hr>
						<form id="memberInfoUpdate-form" action="" method="post" role="form">
									<div class="form-group">
										<input type="email" name="memberEmail" id="dealerEmail" tabindex="1" class="form-control" placeholder="Email Address" value="${memberVOInfo.memberEmail}" readonly="readonly" >
										<span id="checkDealerEmail"></span>
									</div>
									<div class="form-group">
										<input type="text" name="memberNickName" id="dealerNickName" tabindex="2" class="form-control" placeholder="NickName" value="${memberVOInfo.memberNickName}" required="required">
										<span id="checkDealerNickName"></span>
									</div>
									<div class="form-group">
										<input type="text" name="memberName" id="dealerName" tabindex="3" class="form-control" placeholder="Name" value="${memberVOInfo.memberName }" readonly="readonly">
										<span id="checkDealerName"></span>
									</div>
									
									<div class="form-group">
										<input type="password" name="memberPassword" id="dealerPassword" tabindex="4" class="form-control" placeholder="Password" value="${memberVOInfo.memberPassword }"  required="required">
										<span id="checkDealerPassword"></span>
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password" id="dealerConfirm-Password" tabindex="4" class="form-control" placeholder="Confirm Password" required="required">
										<span id="checkDealerConfirm-password"></span>
									</div>
									<div class="form-group">
										<input type="date" name="memberBirth" id="dealerBirth" tabindex="5" class="form-control" placeholder="생년월일을 선택하세요." value="${memberVOInfo.memberBirth }" readonly="readonly">
										<span id="checkDealerBirth"></span>
									</div>
									<div class="form-group">
										<input type="tel" name="memberPnumber" id="dealerPnumber" tabindex="6" class="form-control" placeholder="PhoneNumber -없이 입력하세요." value="${memberVOInfo.memberPnumber }" required="required">
										<span id="checkDealerPnumber"></span>
									</div>
									<hr>
				
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="dealerRegister-submit" id="register-submit" tabindex="9" class="form-control btn btn-register" value="Register Now">
											</div>
										</div>
									</div>
								</form>
					</div>
					<!-- <div class="modal-body"> -->
						<div class="row">
							<div class="col-lg-12">
								
								<div class="modal-footer">
									<button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
								</div>
							</div>
						</div>
					<!-- </div> -->
				</div>
			</div>
		</div>
		</div>
	</div>
<!--판매자등록 모달창 끝 -->