<%@ page language="java" contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ include file="/WEB-INF/views/faq/kakaoTalk.jsp"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "//www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="//www.w3.org/1999/xhtml" xml:lang="ko" lang="ko">
	<% //스크립틀릿은 java
		/* session에 저장된 이메일을 가지고와서 글쓰기 버튼 보여줄건지 체크 */
		String userEmail = (String)session.getAttribute("email");
		/* String userEmail = (String)session.getAttribute(SessionLoginConst.LOGIN_MEMBER_EMAIL);
		String userNickName = (String)session.getAttribute(SessionLoginConst.LOGIN_MEMBER_NICKNAME); */
		
	%>
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/><!-- PG크로스브라우징필수내용 -->
		<meta http-equiv="Cache-Control" content="no-cache"/>
		<meta http-equiv="Expires" content="0"/>
		<meta http-equiv="Pragma" content="no-cache"/><!-- // PG크로스브라우징필수내용 --><!-- 해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요. -->
		<meta name="_csrf" content="${_csrf.token}"/>
		<meta name="_csrf_header" content="${_csrf.headerName}"/>
		<meta name="_csrf_parameter" content="${_csrf.parameterName}"/>
		<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.3/themes/smoothness/jquery-ui.css" />
		<script src="http://code.jquery.com/jquery-1.9.1.js" type="text/javascript"></script>
		<script src="http://code.jquery.com/ui/1.10.3/jquery-ui.js" type="text/javascript"></script>
	
	<!--  네비게이션바 시작 -->
	<!--===============================================================================================-->   
		<link rel="icon" type="image/png" href="/images/icons/favicon.png"/>
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="/vendor/bootstrap/css/bootstrap.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="/fonts/iconic/css/material-design-iconic-font.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="/fonts/linearicons-v1.0.0/icon-font.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="/vendor/animate/animate.css">
	<!--===============================================================================================-->   
		<link rel="stylesheet" type="text/css" href="/vendor/css-hamburgers/hamburgers.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="/vendor/animsition/css/animsition.min.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="/vendor/select2/select2.min.css">
	<!--===============================================================================================-->   
		<link rel="stylesheet" type="text/css" href="/vendor/daterangepicker/daterangepicker.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="/vendor/slick/slick.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="/vendor/MagnificPopup/magnific-popup.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="/vendor/perfect-scrollbar/perfect-scrollbar.css">
	<!--===============================================================================================-->
		<link rel="stylesheet" type="text/css" href="/css/util.css">
		<link rel="stylesheet" type="text/css" href="/css/main.css">
	<!--===============================================================================================-->
		
		<div class="top-bar" >
			<div class="content-topbar flex-sb-m h-full container">
				<div class="left-top-bar">
					JEJU FRIENDS
				</div>
			</div>
	
     		<div class="wrap-menu-desktop">
           		<nav class="limiter-menu-desktop container">
             
	            <!-- Logo desktop -->      
	            	<a href="#" class="logo">
	                	<img src="/img/jeju2.png" alt="IMG-LOGO" style='width: 100px; height: 50px; margin-left: 50px;; margin-right: -20px;'>
	              	</a>
	
	           <!-- Menu desktop -->
	            	<div class="menu-desktop" style='margin-top: 10px;'>
	                 	<ul class="main-menu">
		                    <li>
		                       <a href="/jejufriends" style="font-size: 18px;">Home</a>
		                    </li>
	
		                    <li class="label1" data-label1="hot">
		                       <a href="" style="font-size: 18px;">Course</a>
		                       <ul class="sub-menu">
									<li><a href="/jejufriends/select_course/select.do">코스추천</a></li>
                                    <li><a href="/jejufriends/make_course/make.do">나만의코스</a></li>
		                       </ul>
		                    </li>
	
		                    <li >
		                       <a href="" style="font-size: 18px;">Contents</a>
		                       <ul class="sub-menu">
		                          <li><a href="/jejufriends/food/list.do">소문난맛집</a></li>
		                          <li><a href="/jejufriends/landmark/list.do">관광지</a></li>
		                          <li><a href="/jejufriends/activity/list.do">로컬체험</a></li>
		                          <li><a href="/jejufriends/hotel/list.do">숙소</a></li>
		                       </ul>
		                    </li>
	
		                    <li>
		                       <a href="/jejufriends/community/community.do" style="font-size: 18px;">Community</a>
		                    </li>
	
	
		                    <li>
		                       <a href="" style="font-size: 18px;">CS</a>
		                       <ul class="sub-menu">
									<li><a href="/jejufriends/faq/list.do?cp=1">FAQ</a></li>
                                	<li><a href="/jejufriends/qna/list.do?cp=1">QNA</a></li>
		                       </ul>
		                    </li>
	                    
		                    <li>
		                       <a href="" style="font-size: 18px;">About</a>
		                    </li>
	                	</ul>
	              	</div>   
	
			           <!-- Icon header -->
		               <!-- logout-->
		               <div class="wrap-icon-header flex-w flex-r-m" style="margin-bottom: -10px;">
		               	 <sec:authorize access="isAuthenticated()">
	               	     <form action="/jejufriends/logout" method="post">
	                      	<input name="${_csrf.parameterName}" type="hidden" value="${_csrf.token}"/>
						    <button type="submit" value="Logout" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11">
						     <p style="font-size: 18px; font-weight: bold;">Logout</p>
						    </button>
						  </form>
	                  </sec:authorize>
	                  <sec:authorize access="isAnonymous()">
	                  <!-- login-->
	                  <a href="/jejufriends/login" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11">
	                      <p style="font-size: 18px; font-weight: bold;">Login</p>
	                  </a>
	                  </sec:authorize>
					<!--  장바구니 아이콘
	                  <div class="icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11 icon-header-noti js-show-cart" data-notify="2">
	                     <i class="zmdi zmdi-shopping-cart"></i>
	                  </div>
					-->
	                  <a href="/jejufriends/member/mypage" class="dis-block icon-header-item cl2 hov-cl1 trans-04 p-l-22 p-r-11">
	                     <i class="zmdi zmdi-account"></i>
	                  </a>
	               </div>
           		</nav>
        	</div>   
     	</div>
		<!--===============================================================================================-->	
		<!-- 주석을 풀면 자동완성 기능인 autocomplete를 찾을수 없음  -->
			 <!-- <script src="/vendor/jquery/jquery-3.2.1.min.js"></script> -->
		<!--===============================================================================================-->
			<script src="/vendor/animsition/js/animsition.min.js"></script>
		<!--===============================================================================================-->
			<script src="/vendor/bootstrap/js/popper.js"></script>
			<script src="/vendor/bootstrap/js/bootstrap.min.js"></script>
		<!--===============================================================================================-->
			<script src="/vendor/select2/select2.min.js"></script>
			<script>
				$(".js-select2").each(function(){
					$(this).select2({
						minimumResultsForSearch: 20,
						dropdownParent: $(this).next('.dropDownSelect2')
					});
				})
			</script>
		<!--===============================================================================================-->
			<script src="/vendor/daterangepicker/moment.min.js"></script>
			<script src="/vendor/daterangepicker/daterangepicker.js"></script>
		<!--===============================================================================================-->
			<script src="/vendor/slick/slick.min.js"></script>
			<script src="/js/slick-custom.js"></script>
		<!--===============================================================================================-->
			<script src="/vendor/parallax100/parallax100.js"></script>
			<script>
		        $('.parallax100').parallax100();
			</script>
		<!--===============================================================================================-->
			
			<script src="/vendor/MagnificPopup/jquery.magnific-popup.min.js"></script>
			<script>
				$('.gallery-lb').each(function() { // the containers for all your galleries
					$(this).magnificPopup({
				        delegate: 'a', // the selector for gallery item
				        type: 'image',
				        gallery: {
				        	enabled:true
				        },
				        mainClass: 'mfp-fade'
				    });
				});
			</script>
		<!--===============================================================================================-->
			<script src="/vendor/isotope/isotope.pkgd.min.js"></script>
		<!--===============================================================================================-->
			<script src="/vendor/sweetalert/sweetalert.min.js"></script>
			<script>
				$('.js-addwish-b2').on('click', function(e){
					e.preventDefault();
				});
		
				$('.js-addwish-b2').each(function(){
					var nameProduct = $(this).parent().parent().find('.js-name-b2').html();
					$(this).on('click', function(){
						swal(nameProduct, "is added to wishlist !", "success");
		
						$(this).addClass('js-addedwish-b2');
						$(this).off('click');
					});
				});
		
				$('.js-addwish-detail').each(function(){
					var nameProduct = $(this).parent().parent().parent().find('.js-name-detail').html();
		
					$(this).on('click', function(){
						swal(nameProduct, "is added to wishlist !", "success");
		
						$(this).addClass('js-addedwish-detail');
						$(this).off('click');
					});
				});
		
				/*---------------------------------------------*/
		
				$('.js-addcart-detail').each(function(){
					var nameProduct = $(this).parent().parent().parent().parent().find('.js-name-detail').html();
					$(this).on('click', function(){
						swal(nameProduct, "is added to cart !", "success");
					});
				});
			
			</script>
		<!--===============================================================================================-->
			<script src="/vendor/perfect-scrollbar/perfect-scrollbar.min.js"></script>
			<script>
				$('.js-pscroll').each(function(){
					$(this).css('position','relative');
					$(this).css('overflow','hidden');
					var ps = new PerfectScrollbar(this, {
						wheelSpeed: 1,
						scrollingThreshold: 1000,
						wheelPropagation: false,
					});
		
					$(window).on('resize', function(){
						ps.update();
					})
				});
			</script>
		<!--===============================================================================================-->
			<script src="/js/main.js"></script>
		
		<!--  네비게이션바 끝 -->





		<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
		<meta http-equiv="X-UA-Compatible" content="IE=edge"/><!-- PG크로스브라우징필수내용 -->
		<meta http-equiv="Cache-Control" content="no-cache"/><meta http-equiv="Expires" content="0"/>
		<meta http-equiv="Pragma" content="no-cache"/><!-- // PG크로스브라우징필수내용 --><!-- 해당 CSS는 쇼핑몰 전체 페이지에 영향을 줍니다. 삭제와 수정에 주의해주세요. --><link href="https://fonts.googleapis.com/css?family=Poppins:400,700&amp;display=swap" rel="stylesheet"/><link href="https://fonts.googleapis.com/css?family=Noto+Sans+KR:300,400,500,700&amp;display=swap&amp;subset=korean" rel="stylesheet"/><!-- 스마트디자인에서는 JQuery 1.4.4 버전이 내장되어있습니다. 추가로 호출하면 충돌이 생길 수 있습니다. --><link rel="canonical" href="http://ecudemo126609.cafe24.com/board/상품-qa/6/" />
		<link rel="alternate" href="http://m.ecudemo126609.cafe24.com/board/상품-qa/6/" />
		<meta property="og:url" content="http://ecudemo126609.cafe24.com/board/상품-qa/6/" />
		<meta property="og:title" content="상품 Q&amp;A - 쇼핑몰 이름" />
		<meta property="og:description" content="상품 Q&amp;A입니다." />
		<meta property="og:site_name" content="쇼핑몰 이름" />
		<meta property="og:type" content="article" />
		<!-- <script type="text/javascript" src="/app/Eclog/js/cid.generate.js?vs=64ad5b9a963f4fb3ff2ab35465471511"></script> -->
		
		<link rel="stylesheet" type="text/css" href="/css/public1.css"/>
		
		<link rel="stylesheet" type="text/css" href="/css/public2.css"/>
		
		<link rel="stylesheet" type="text/css" href="/css/qna.css"/>
		
		<title> FAQ </title>
		<meta name="path_role" content="BOARD_PRODUCT_LIST" />
		<meta name="description" content="상품 Q&amp;A입니다." />
		<meta name="keywords" content="상품 Q&amp;A" />
		<meta name="design_html_path" content="/board/product/list.html" />
	</head>
	<body>

		
		<hr class="layout"/>
		<div id="wrap">
		    <div id="container">
		        <div id="contents">
		    		<div style="margin-top: 150px"></div>
					<div class="xans-element- xans-board xans-board-listpackage-4 xans-board-listpackage xans-board-4 ">
						<div class="xans-element- xans-board xans-board-title-4 xans-board-title xans-board-4 ">
							<div class="path">
					            <span>현재 위치</span>
					            <ol>
									<li>
										<a href="/">홈</a>
									</li>
					                <li>
					                	<a href="/board/index.html">게시판</a>
					                </li>
					                <li title="현재 위치">
					                	<strong>FAQ</strong>
					                </li>
					            </ol>
							</div> <!-- path -->
							<div class="titleArea">
					            <h1 style="text-align:center;">
					           		<font color="333333">FAQ</font>
					            </h1>
					            <p>FAQ입니다.</p>
					        </div>
							<div class="xans-element- xans-layout xans-layout-boardinfo cboth event_tab">
								<ul>
									<li rel="Q&A" class="xans-record-">
										<a href="/jejufriends/qna/list.do?cp=1" class="move">Q&A</a>
									</li>
									<li rel="FAQ" class="xans-record-">
										<a href="/jejufriends/faq/list.do?cp=1" class="move">FAQ </a>
									</li>
								</ul>
							</div>
							<div class="boardSort">
								<span class="xans-element- xans-board xans-board-replysort-4 xans-board-replysort xans-board-4 "></span>
							</div>
							<div class="ec-base-table typeList gBorder">
							<!-- 리스트 -->
		        				<table border="1" summary="">
									<caption>상품 게시판 목록</caption>
		        					<colgroup class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 center">
		        						<col style="width:10%;"/>
										<col style="width:60%;"/>
										<col style="width:25%;"/>
										<col style="width:15%;"/>
									</colgroup>
									<thead class="xans-element- xans-board xans-board-listheader-4 xans-board-listheader xans-board-4 center ">
										<tr>
											<th scope="col">번호</th>
							                <th scope="col">&nbsp;&nbsp;제목</th>
							                <th scope="col">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;작성일</th>
							                <th scope="col">조회</th>
						                </tr>
						            </thead>
									<tbody class="xans-element- xans-board xans-board-list-4 xans-board-list xans-board-4 center">
						            	<c:if test="${empty listResult}">
											<tr style="background-color:#FFFFFF; color:#555555;" class="xans-record-">
											   <td colspan="5">데이터가 하나도 없음</td>
											</tr>
										</c:if>
										<c:forEach items="${listResult.list}" var="faq"> <!-- FaqListResult안에 list(컬렉션)를 faq라는 변수로 이름 바꿔주는 기능 -->
						            	<tr style="background-color:#FFFFFF; color:#555555;" class="xans-record-">
											<td class="subject left txtBreak">${faq.rnum}</td>
							                <td class="subject left txtBreak">
				                     			<a href="content.do?seq=${faq.seq}" style="color:#555555;">${faq.subject}</a> <span class="txtEm"></span>
			                				</td>
							                <td class="subject left txtBreak"><span class="txtNum">${faq.rdate}</span></td>
							                <td class="subject left txtBreak"><span class="txtNum">${faq.hits}</span></td>
						            	</tr>
						            	</c:forEach>      
									</tbody>
								</table>
								<!-- 리스트 -->
								<p class="xans-element- xans-board xans-board-empty-4 xans-board-empty xans-board-4 message displaynone "></p>
		    				</div>
							<div class="xans-element- xans-board xans-board-buttonlist-4 xans-board-buttonlist xans-board-4 ec-base-button typeBG ">
							<span class="gRight">
								<a id="adminBox" href="write.do" class="btnSubmitFix sizeS">글쓰기</a>
								<!-- <a href="javascript:chatChannel()" class="btnSubmitFix sizeS">카카오톡</a> -->
								<a href="javascript:chatChannel()">
									<img src="/img/kakao.png" alt="" style="width:40px; height:40px;"/>
								</a>
								
								<!-- <a href="https://pf.kakao.com/_FxgJNb/chat" class="btnSubmitFix sizeS"><img src="/img/kakao.png" alt="" style="width:44.547px; height:18px;"></a> -->
							</span>
						</div>
					</div>
		
		<div class="xans-element- xans-board xans-board-paging-4 xans-board-paging xans-board-4 ec-base-paginate">
		<button onclick="pageMove('back');" style="display: inline;"><img src="//img.echosting.cafe24.com/skin/base/common/btn_page_prev.gif" alt="이전 페이지"/></button> <!-- 이전화살표 -->
		<ol>
		<!-- 페이징 -->
		<c:forEach begin="1" end="${listResult.totalPageCount}" var="i">
  			<c:choose>
  			    <c:when test="${i==listResult.cp}">
               		<li class="xans-record-"><a href="list.do?cp=${i}" class="this">${i}</a></li> <!-- 원래는 다 회색이었는데 this라는 클래스때문에 검은색으로 바뀜 -->
               </c:when>
               <c:otherwise>
               		<li class="xans-record-"><a href="list.do?cp=${i}">${i}</a></li>
               </c:otherwise>
			</c:choose>
    	</c:forEach>
		<!-- 페이징 -->
		</ol>
		<button onclick="pageMove('next');" style="display: inline;"><img src="//img.echosting.cafe24.com/skin/base/common/btn_page_next.gif" alt="다음 페이지"/></button> <!-- 다음화살표 -->
		</div>
		
		<script type="text/javascript">
		window.onload = function(e){
			  let csrfParameter = $('meta[name="_csrf_parameter"]').attr('content');
	 		  let csrfHeader = $('meta[name="_csrf_header"]').attr('content');
	  		  let csrfToken = $('meta[name="_csrf"]').attr('content');
			var userEmail = '<%=userEmail%>'; <%-- 여기는 js라서 스크립틀릿 안에 있는 java변수 넣을 때 <%=%>를 쓴다. --%>
			if(userEmail != ('admin@gmail.com'&&'admin2@gmail.com')){
				document.getElementById("adminBox").style.display = 'none';//id가 adminbox인 태그를 안보이게 함(글쓰기)
			}
			
			//document.getElementById("btn_write").style.display = "none";
	    	$.ui.autocomplete.prototype._renderItem = function (ul, item) {
			    item.label = item.label.replace(new RegExp("(?![^&;]+;)(?!<[^<>]*)(" + $.ui.autocomplete.escapeRegex(this.term) + ")(?![^<>]*>)(?![^&;]+;)", "gi"), "<strong>$1</strong>");
			    return $("<li></li>")
			            .data("item.autocomplete", item)
			            .append("<a>" + item.label + "</a>")
			            .appendTo(ul);
			};
			
			
					
			//input 태그 id가 subject
		    //*******if 괄호 안이 서브젝트면 이거 실행, else 면 content 넣어서 실행 하려면 어떡해야하나??*******
			$( "#surf" ).autocomplete({
		        source : function( request, response ) {
		             $.ajax({
		                    type: 'post',
		                    url: "autoData.json",
		                    dataType: "json",
		                    //request.term = $("#autocomplete").val()
		                    data: { surf : $("#surf").val()
		                    		, search_key : $("#search_key").val()},
		                    		//faq/autoData.json?subject=내&search_key=subject
		                    //select * from BOARD where writer like %?%;
                    	    beforeSend: function(xhr) {
        	                    xhr.setRequestHeader(csrfHeader, csrfToken);
        	                }  ,
		                    		
		                    success: function(data) {//DB에 쿼리가 쳐지고 나서 결과값이  컨트롤러에서 list란 변수에 담김. 그리고 autoData.json으로 호출한 여기로 돌아옴. 결론, data가 list로 갱신.
		                        //서버에서 json 데이터 response 후 목록에 뿌려주기 위함
		                        response(
		                            $.map(data, function(item) {// $.map(1,function(2))은 1파라미터 값을 2라는 이름의 맵으로 변환 
		                            	if($("#search_key").val() == "subject"){
											 return {
													label: item.subject
													//value: item.subject
											 }		                               
		                            		
		                            	}else{
											 return {
													label: item.content 
													//value: item.content
											 }		                               
		                            		
		                            	}
		                            })
		                        );
		                    }
		               });
		            },
		        //조회를 위한 최소글자수
		        minLength: 1,
		        select: function( event, ui ) {
		            // 만약 검색리스트에서 선택하였을때 선택한 데이터에 의한 이벤트발생   
	            	//alert("선택된 아이템: " + ui.item.value);  
		        }
		    });
		
		}	
		
		<!-- 화살표 기능 구현 -->
			function pageMove(pm){
				//onclick이벤트를 줬다.(페이징 화살표 태그 안에)
				//totalpage
				var tpage = ${listResult.totalPageCount};//4
				//nowpage
				var npage = ${listResult.cp};//1
				//이전페이지
				var prepage = npage - 1;//0
				//다음페이지
				var propage = npage + 1;//2
				if(pm == 'back'){
					if(Number(npage) == 1){//사람 눈에 보이는 숫자를 기계도 숫자로 인식하게 함
						return false;//아무일도 일어나지 않게 해라.
					}else{
						location.href = 'list.do?cp='+prepage;//주소창에 해당 텍스트를 넣어서 엔터를 치는 기능이 곧 location.href
					}
					
				}else if(pm == 'next'){
					if(Number(npage) == Number(tpage)){
						return false;
					}else{
						location.href = 'list.do?cp='+propage;
					}
				}
			}
			<!-- 화살표 기능 구현 -->
			
		</script>
		<form id="boardSearchForm" name="boardSearchForm" action="search.do" method="get" target="_top" enctype="multipart/form-data" >
		<input type="hidden" name="cp" value="1"/>
			<div class="xans-element- xans-board xans-board-search-4 xans-board-search xans-board-4 ">
				<fieldset class="boardSearch">
					<legend>게시물 검색</legend>
						<p class="category displaynone"></p>
						<div style="display: flex; justify-content: right; align-items: center;">
							<select id="search_key" name="search_key" fw-filter="" fw-label="" fw-msg="" >
								<option value="subject">제목</option>
								<option value="content">내용</option>
							</select> 
							<input id="surf" name="surf" fw-filter="" fw-label="" fw-msg="" class="inputTypeText" placeholder="" value="" type="text" style="margin-left: 10px;"/> 
							<button type="submit" href="#" class="btnEmFix" style="margin-left: 10px;">찾기</button>
						</div>
				</fieldset>
			</div>
		</form>
		<!-- 관리자 전용 메뉴 -->
		
		<!-- // 관리자 전용 메뉴 -->
				</div><hr class="layout"/></div><!-- //container -->
			<hr class="layout"/><div id="quick"></div>
		</div><!-- //wrap -->
		<hr class="layout"/>
		
		
		<jsp:include page="../footer.jsp" flush="true"/>
	
		
		<!-- <span itemscope="" itemtype="http://schema.org/Organization"> -->
		<link itemprop="url" href="https://ecudemo126609.cafe24.com">
		</span>
		<!-- <script type="text/javascript" src="/ind-script/i18n.php?lang=ko_KR&domain=front&v=2203161305" charset="utf-8"></script> -->
		
		<!-- <script src="/ind-script/optimizer.php?filename=zVjbbts4EH1P9LrfoaZbLPY1cdB20QQxsin6PKJG1kQUh8tLEvXrO5Ldi9vKlqgEWBiQZZrncDRzZoZUXnOL-dlrl1cOWnxk1-QOPUenML_3OZ39bbJ7_0d-aF4kC6rJ7_-L6Lrd15_ZX9mrmUh8CugMaL8byBRzQ7iUJTqd9AgZqqwyyVDDik2lSYUkirPsjXySFpd_A7uf_GYdbwS_F90SAgaSCa3MMiFHdT3cfKJQ332-hABZS2YGj6ZCUHgn98dR3joyoZpAzyr2Zr1l167YBMdaozuOW-voz629cFRuJtgTA-njsyrHg6dOPGtBsDkJbE80GTwpwJgpdm0pFLctm6mzn8BINhqRtnUYpq8y4AK2Vktcfg8Ca_NrLkhjfvsDfmvfAa-M4Fouowz5R7LzFqyiUb1D-3lllLRpR0U8leGAESLV_OM2e36k0PC50wzlLFAbA_Tr3hQe3cNYcEbAlnVXkZ4svRIriDr0LvAtuHDxG9XNL5LFhgbQ_6Nkl1JAjBeP-qVMCJ7MZilLiwHKvhyOqvHfmu1eWN8OwfoADXDe9Nc1PaE-VIsO0KyGXPx4MBVHoLdYoUOjcBVd_92tHan5FngEp-pZwg5QVd2vDeSo962OG5Kq9QCaxOnsvkbh20AmN-AX0_ZhNqX_lV4YrGgPX26FGrXFF3-OGkypZ9eGGQtIrSOJ8YvxS10Mz-YmzQqkYTR8vNJ-t2A0Ty4YXLmndxnNin40DRSVSgNq8n2v7LvhgW4JBjb73fIRC82bWSn9tYbkXqrEqR2vJJPwavfrtJKNHYSlljwXzbR9YB1aLXtSCoR-ltvBd0Ztr8m4FtsCXTL8xpXolAnJBBfgGwzLGezhXjSJY73b66WyrDhKsV_yLNeSebBJf45LtOwpff1P5OurvggsIVAcF7jAocIF8NsBfscB9GqRHYOy0wWFBitaKuor6BbY8M5BmS6l8xhYaiCpgUb2co_pqpZDBq3ZRptO0V1Rg7sEXRbYPapFYr-iB5TjejN29p6qsvfUv2XpnkGvO6Y7KJ6F5x857id6yEKoHWs8nbABOubm0UP0CNgm1PFtHzyVbcyU11SO4_AO5As&type=js&k=2f77be9618db291555c5b2f4aea6e33f2a64af8e&t=1645509281" ></script><script src="/ind-script/optimizer.php?filename=tdDLEcIwDATQApwrdQg4ZIY6qMAfTaJgWU5swaR7DAcaiLntRW92BbMwAnqjBbfSggZkuVzH8XyDrC6SN3PlCCWgCVhoSuBsQYh2F62fTB6WdvnEVE21bljKCXqp33BIbIgXZklHFZag8ddwVfIP8yR8dd27rIrbPrgsWfPAlLrq_I9PeFtxkla6q8oaK5VZ8n2mnClNjX8D&type=js&k=bb0955cd7c693bf2097b22ad9d78f8571b92f770&t=1562306353&user=T" ></script> -->
		<script type="text/javascript">
		CAFE24.MOBILE_WEB = false; var mobileWeb = CAFE24.MOBILE_WEB;
		var bUseElastic = false;
		var sSearchBannerUseFlag = 'F';
		var bIsUseSpread = false;
		var sIsSecret = false;
		var iBoardNo = "6";
		var aLogData = {"log_server1":"eclog2-181.cafe24.com","log_server2":"eclog2-181.cafe24.com","mid":"ecudemo126609","stype":"e","domain":"","shop_no":1,"lang":"ko_KR","ver":2,"hash":"881c347f38a24c6057e78b782f762ed3","ca":"cfa-js.cafe24.com\/cfa.js","etc":""};
		var sMileageName = '적립금';
		var sMileageUnit = '[:PRICE:]원';
		var sDepositName = '예치금';
		var sDepositUnit = '원';
		CAFE24.SHOP_CURRENCY_INFO = {"1":{"aShopCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"aShopSubCurrencyInfo":null,"aBaseCurrencyInfo":{"currency_code":"KRW","currency_no":"410","currency_symbol":"\uffe6","currency_name":"South Korean won","currency_desc":"\uffe6 \uc6d0 (\ud55c\uad6d)","decimal_place":0,"round_method_type":"F"},"fExchangeRate":1,"fExchangeSubRate":null,"aFrontCurrencyFormat":{"head":"","tail":"\uc6d0"},"aFrontSubCurrencyFormat":{"head":"","tail":""}}}; var SHOP_CURRENCY_INFO = CAFE24.SHOP_CURRENCY_INFO;
		var EC_ASYNC_LIVELINKON_ID = '';
		/* 
		if (EC$('[async_section=before]').length > 0) {
		EC$('[async_section=before]').addClass('displaynone');
		}
	 */
		</script>
	</body>
</html>

      