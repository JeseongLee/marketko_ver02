<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<div class="container">
	<div class="row">
        <div class="col-lg-11 col-md-5 col-sm-8 col-xs-9 bhoechie-tab-container">
            <div class="col-lg-3 col-md-3 col-sm-3 col-xs-3 bhoechie-tab-menu">
              <div class="list-group">
                <a href="#" class="list-group-item active text-center">
                  <h4 class="glyphicon glyphicon-shopping-cart"></h4><br/>Flight
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-road"></h4><br/>Train
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-home"></h4><br/>Hotel
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-cutlery"></h4><br/>Restaurant
                </a>
                <a href="#" class="list-group-item text-center">
                  <h4 class="glyphicon glyphicon-cog"></h4>
				  <h5>Membership Infomation</h5>
                </a>
              </div>
            </div>
            <div class="col-lg-9 col-md-9 col-sm-9 col-xs-9 bhoechie-tab">
                <!-- flight section -->
                <div class="bhoechie-tab-content active">
                  
                      <h1 class="glyphicon glyphicon-shopping-cart" style="font-size:14em;color:#55518a"></h1>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Flight Reservation</h3>
                   
                </div>
                <!-- train section -->
                <div class="bhoechie-tab-content">
                
                      <h1 class="glyphicon glyphicon-road" style="font-size:12em;color:#55518a"></h1>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Train Reservation</h3>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>
                      <h3 style="margin-top: 0;color:#55518a">Guess Who I Saw Today</h3>

                </div>
    
                <!-- hotel search -->
                <div class="bhoechie-tab-content">

                      <h1 class="glyphicon glyphicon-home" style="font-size:12em;color:#55518a"></h1>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Hotel Directory</h3>

                </div>
                <div class="bhoechie-tab-content">

                      <h1 class="glyphicon glyphicon-cutlery" style="font-size:12em;color:#55518a"></h1>
                      <h2 style="margin-top: 0;color:#55518a">Cooming Soon</h2>
                      <h3 style="margin-top: 0;color:#55518a">Restaurant Diirectory</h3>

                </div>
                <div class="bhoechie-tab-content">

                      <h1 class="" style="font-size:12em;color:#55518a"></h1>
                      <!-- <h2 style="margin-top: 0;color:#55518a">회원정보를 수정하고 싶네요.</h2>
                      <h3 style="margin-top: 0;color:#55518a">그래요 수정해야죠.디자인이 구리네여.ㅎㅎㅎ호호</h3>
                      <hr> -->
              		  <c:set value="${requestScope.memberVOInfo}" var="memberVOInfo" />
                  <div class="row">
		          <div class="col-sm-6 col-md-12">
		          <div class = "col-md-5">
		          	<h4><li class="glyphicon glyphicon-heart-empty" style="color: #ff5a5a"></li>  ${memberVOInfo.memberNickName}</h4> 
		          	<h4><li class = "glyphicon glyphicon-usd" style="color: #85bb65;"></li>  ${memberVOInfo.memberCash } POINT</h4>
		          </div>
		          <div class = "col-md-7">
	                  <table class="table table-user-information">
	                    <tbody>
	                      <tr>
	                        <td><i class = "glyphicon glyphicon-user"></i></td>
	                        <td>${memberVOInfo.memberName}</td>
	                      </tr>
	                      <tr>
	                        <td><i class="glyphicon glyphicon-envelope"></i></td>
	                        <td>${memberVOInfo.memberEmail}</td>
	                      </tr>
	                      <tr>
	                        <td><i class="glyphicon glyphicon-gift"></i></td>
	                        <td>${memberVOInfo.memberBirth}</td>
	                      </tr>
	                      <tr>
	                        <td><i class="glyphicon glyphicon-phone"></i></td>
	                        <td>${memberVOInfo.memberPnumber}</td>
	                      </tr>
	                      <tr>
	                      	<td colspan="2">
	                     	<button type="button" class="btn btn-success btn-sm" aria-hidden="true" data-toggle="modal" data-target="#memberInfoUpdateModal" class="updateMemberInfo"><span class = "glyphicon glyphicon-cog"></span>회원정보수정</button>
							<button type="button" class="btn btn-warning" ><li class="glyphicon glyphicon-piggy-bank"></li>포인트충전하기</button>
	                      	</td>
	                      </tr>
	                    </tbody>
	                  </table>
                  </div>
              </div>
            </div>
				나 당신을 봤어요.
             </div>
                </div>
            </div>
        </div>
  </div>

