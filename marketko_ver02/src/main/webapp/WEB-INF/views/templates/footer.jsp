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
								<form id="register-form" action="http://phpoll.com/register/process" method="post" role="form" style="display: none;">
									<div class="form-group">
										<input type="text" name="username" id="username" tabindex="1" class="form-control" placeholder="Username" value="">
									</div>
									<div class="form-group">
										<input type="email" name="email" id="email" tabindex="1" class="form-control" placeholder="Email Address" value="">
									</div>
									<div class="form-group">
										<input type="password" name="password" id="password" tabindex="2" class="form-control" placeholder="Password">
									</div>
									<div class="form-group">
										<input type="password" name="confirm-password" id="confirm-password" tabindex="2" class="form-control" placeholder="Confirm Password">
									</div>
									<div class="form-group">
										<div class="row">
											<div class="col-sm-6 col-sm-offset-3">
												<input type="submit" name="register-submit" id="register-submit" tabindex="4" class="form-control btn btn-register" value="Register Now">
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