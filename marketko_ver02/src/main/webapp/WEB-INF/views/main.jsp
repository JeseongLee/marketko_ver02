<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>


<!-- 슬라이드 시작 -->
<div class="container">
    <div class="row">
        <!-- The carousel -->
        <div id="transition-timer-carousel" class="carousel slide transition-timer-carousel" data-ride="carousel">
			<!-- Indicators -->
			<ol class="carousel-indicators">
				<li data-target="#transition-timer-carousel" data-slide-to="0" class="active"></li>
				<li data-target="#transition-timer-carousel" data-slide-to="1"></li>
				<li data-target="#transition-timer-carousel" data-slide-to="2"></li>
			</ol>

			<!-- Wrapper for slides -->
			<div class="carousel-inner">
				<div class="item active">
                    <img src="http://placehold.it/1200x400" />
                    <div class="carousel-caption">
                        <h1 class="carousel-caption-header">Slide 1</h1>
                        <p class="carousel-caption-text hidden-sm hidden-xs">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dignissim aliquet rutrum. Praesent vitae ante in nisi condimentum egestas. Aliquam.
                        </p>
                    </div>
                </div>
                
                <div class="item">
                    <img src="http://placehold.it/1200x400/AAAAAA/888888" />
                    <div class="carousel-caption">
                        <h1 class="carousel-caption-header">Slide 2</h1>
                        <p class="carousel-caption-text hidden-sm hidden-xs">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dignissim aliquet rutrum. Praesent vitae ante in nisi condimentum egestas. Aliquam.
                        </p>
                    </div>
                </div>
                
                <div class="item">
                    <img src="http://placehold.it/1200x400/888888/555555" />
                    <div class="carousel-caption">
                        <h1 class="carousel-caption-header">Slide 3</h1>
                        <p class="carousel-caption-text hidden-sm hidden-xs">
                            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Suspendisse dignissim aliquet rutrum. Praesent vitae ante in nisi condimentum egestas. Aliquam.
                        </p>
                    </div>
                </div>
            </div>

			<!-- Controls -->
			<a class="left carousel-control" href="#transition-timer-carousel" data-slide="prev">
				<span class="glyphicon glyphicon-chevron-left"></span>
			</a>
			<a class="right carousel-control" href="#transition-timer-carousel" data-slide="next">
				<span class="glyphicon glyphicon-chevron-right"></span>
			</a>
            
            <!-- Timer "progress bar" -->
            <hr class="transition-timer-carousel-progress-bar animate" />
		</div>
    </div>
</div>
	<!-- 슬라이드 끝 -->

<!-- 	카드 -->
<div class="container">
	<div class="row">
		<!-- 상품카드 내용 시작 -->
		<div class="col-sm-12 col-xs-12 col-md-3 col-lg-3">
			<div class="thumbnail bootsnipp-thumb">
				<div>
					<div>
						<p class="lead snipp-title">
							<a href="">상품명</a>
						</p>
					</div>
					<p class="pull-right view-counts hidden-md">
						<a href="#" class="tip" data-toggle="tooltip" title="Viewed">조회수 500 <i class="icon-eye-open"></i></a> 
						<a href="#" class="tip" data-toggle="tooltip" title="Favorited">구매자수 150<i class="icon-thumbs-up"></i></a> 
					</p>
				</div>
				<img src="http://cfile1.uf.tistory.com/image/21227E405501882C278195" alt="">
					<div class="caption">
						가격 : 500원
					</div>
				<div class="caption">
					설명 : 죽음의 전재영 신발
				</div>
			</div>
		</div>
		<!-- 상품카드 내용 끝 -->
		
		<!-- 상품카드 내용 시작 -->
		<div class="col-sm-12 col-xs-12 col-md-3 col-lg-3">
			<div class="thumbnail bootsnipp-thumb">
				<div>
					<div>
						<p class="lead snipp-title">
							<a href="">상품명</a>
						</p>
					</div>
					<p class="pull-right view-counts hidden-md">
						<a href="#" class="tip" data-toggle="tooltip" title="Viewed">조회수 500 <i class="icon-eye-open"></i></a> 
						<a href="#" class="tip" data-toggle="tooltip" title="Favorited">구매자수 150<i class="icon-thumbs-up"></i></a> 
					</p>
				</div>
				<img src="http://cfile1.uf.tistory.com/image/21227E405501882C278195" alt="">
					<div class="caption">
						가격 : 500원
					</div>
				<div class="caption">
					설명 : 죽음의 전재영 신발
				</div>
			</div>
		</div>
		<!-- 상품카드 내용 끝 -->

		<!-- 상품카드 내용 시작 -->
		<div class="col-sm-12 col-xs-12 col-md-3 col-lg-3">
			<div class="thumbnail bootsnipp-thumb">
				<div>
					<div>
						<p class="lead snipp-title">
							<a href="">상품명</a>
						</p>
					</div>
					<p class="pull-right view-counts hidden-md">
						<a href="#" class="tip" data-toggle="tooltip" title="Viewed">조회수 500 <i class="icon-eye-open"></i></a> 
						<a href="#" class="tip" data-toggle="tooltip" title="Favorited">구매자수 150<i class="icon-thumbs-up"></i></a> 
					</p>
				</div>
				<img src="http://cfile1.uf.tistory.com/image/21227E405501882C278195" alt="">
					<div class="caption">
						가격 : 500원
					</div>
				<div class="caption">
					설명 : 죽음의 전재영 신발
				</div>
			</div>
		</div>
		<!-- 상품카드 내용 끝 -->
		
		<!-- 상품카드 내용 시작 -->
		<div class="col-sm-12 col-xs-12 col-md-3 col-lg-3">
			<div class="thumbnail bootsnipp-thumb">
				<div>
					<div>
						<p class="lead snipp-title">
							<a href="">상품명</a>
						</p>
					</div>
					<p class="pull-right view-counts hidden-md">
						<a href="#" class="tip" data-toggle="tooltip" title="Viewed">조회수 500 <i class="icon-eye-open"></i></a> 
						<a href="#" class="tip" data-toggle="tooltip" title="Favorited">구매자수 150<i class="icon-thumbs-up"></i></a> 
					</p>
				</div>
				<img src="http://cfile1.uf.tistory.com/image/21227E405501882C278195" alt="">
					<div class="caption">
						가격 : 500원
					</div>
				<div class="caption">
					설명 : 죽음의 전재영 신발
				</div>
			</div>
		</div>
		<!-- 상품카드 내용 끝 -->
		
		<!-- 상품카드 내용 시작 -->
		<div class="col-sm-12 col-xs-12 col-md-3 col-lg-3">
			<div class="thumbnail bootsnipp-thumb">
				<div>
					<div>
						<p class="lead snipp-title">
							<a href="">상품명</a>
						</p>
					</div>
					<p class="pull-right view-counts hidden-md">
						<a href="#" class="tip" data-toggle="tooltip" title="Viewed">조회수 500 <i class="icon-eye-open"></i></a> 
						<a href="#" class="tip" data-toggle="tooltip" title="Favorited">구매자수 150<i class="icon-thumbs-up"></i></a> 
					</p>
				</div>
				<img src="http://cfile1.uf.tistory.com/image/21227E405501882C278195" alt="">
					<div class="caption">
						가격 : 500원
					</div>
				<div class="caption">
					설명 : 죽음의 전재영 신발
				</div>
			</div>
		</div>
		<!-- 상품카드 내용 끝 -->
		
		<!-- 상품카드 내용 시작 -->
		<div class="col-sm-12 col-xs-12 col-md-3 col-lg-3">
			<div class="thumbnail bootsnipp-thumb">
				<div>
					<div>
						<p class="lead snipp-title">
							<a href="">상품명</a>
						</p>
					</div>
					<p class="pull-right view-counts hidden-md">
						<a href="#" class="tip" data-toggle="tooltip" title="Viewed">조회수 500 <i class="icon-eye-open"></i></a> 
						<a href="#" class="tip" data-toggle="tooltip" title="Favorited">구매자수 150<i class="icon-thumbs-up"></i></a> 
					</p>
				</div>
				<img src="http://cfile1.uf.tistory.com/image/21227E405501882C278195" alt="">
					<div class="caption">
						가격 : 500원
					</div>
				<div class="caption">
					설명 : 죽음의 전재영 신발
				</div>
			</div>
		</div>
		<!-- 상품카드 내용 끝 -->
		
		<!-- 상품카드 내용 시작 -->
		<div class="col-sm-12 col-xs-12 col-md-3 col-lg-3">
			<div class="thumbnail bootsnipp-thumb">
				<div>
					<div>
						<p class="lead snipp-title">
							<a href="">상품명</a>
						</p>
					</div>
					<p class="pull-right view-counts hidden-md">
						<a href="#" class="tip" data-toggle="tooltip" title="Viewed">조회수 500 <i class="icon-eye-open"></i></a> 
						<a href="#" class="tip" data-toggle="tooltip" title="Favorited">구매자수 150<i class="icon-thumbs-up"></i></a> 
					</p>
				</div>
				<img src="http://cfile1.uf.tistory.com/image/21227E405501882C278195" alt="">
					<div class="caption">
						가격 : 500원
					</div>
				<div class="caption">
					설명 : 죽음의 전재영 신발
				</div>
			</div>
		</div>
		<!-- 상품카드 내용 끝 -->
		
		<!-- 상품카드 내용 시작 -->
		<div class="col-sm-12 col-xs-12 col-md-3 col-lg-3">
			<div class="thumbnail bootsnipp-thumb">
				<div>
					<div>
						<p class="lead snipp-title">
							<a href="">상품명</a>
						</p>
					</div>
					<p class="pull-right view-counts hidden-md">
						<a href="#" class="tip" data-toggle="tooltip" title="Viewed">조회수 500 <i class="icon-eye-open"></i></a> 
						<a href="#" class="tip" data-toggle="tooltip" title="Favorited">구매자수 150<i class="icon-thumbs-up"></i></a> 
					</p>
				</div>
				<img src="http://cfile1.uf.tistory.com/image/21227E405501882C278195" alt="">
					<div class="caption">
						가격 : 500원
					</div>
				<div class="caption">
					설명 : 죽음의 전재영 신발
				</div>
			</div>
		</div>
		<!-- 상품카드 내용 끝 -->
	</div>
</div>
