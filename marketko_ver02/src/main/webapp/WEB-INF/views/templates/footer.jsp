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
								<a href="#" id="login-form-link">Login</a>
							</div>
							<div class="col-xs-6">
								<a href="#" class="active" id="register-form-link">Register</a>
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