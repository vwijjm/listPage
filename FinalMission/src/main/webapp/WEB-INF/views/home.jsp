<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<link rel="stylesheet" type="text/css" href="resources/css/font-awesome-4.7.0/css/font-awesome.min.css" >
	<link rel="stylesheet" type="text/css" href="resources/css/bootstrap.css">
	<script src="https://code.jquery.com/jquery-3.3.1.min.js"></script>
	<script src="resources/js/handlebars-v4.1.2.js"></script>
	<title>Home</title>
	<style>

ul, li {
	list-style:none;
}
#header{
	height:100px;
	border-bottom:1px solid #e9e9e9;
	z-index:2;
}
.header-top{
	height:45px;
	border-bottom:1px solid #e9e9e9;
	padding:7px 12px;
}
.header-list{
	height:55px;
}
.header-down-list{
	z-index:100;
}

#header_title > li{
	 float:left;
	 height:100%;
	 padding:0 7px
}

.all-search{
	float:left;
    border: 0;
    border-bottom: solid 6px #ea003d;
    width: 70%;
    height: 100%;
    background: transparent;
    font-size: 17px;
    line-height: 1em;
    box-sizing: border-box;
    padding: 0 40px 9px 20px;
    color: #878787;
}

.all-search:focus{
	outline:none;
}
#all_search{
	float:left;
	color:#B6B7B8;
	font-size:22px;
}

#all_search:hover{
	color:black;
}

.fa-sc{
	font-size:25px;
	color:#B6B7B8;
}
.fa-sc:hover{
	color:black;
}

.title-menu{
	color:black;
	line-height:48px;
	font-size:25px;
	text-decoration:none;
	padding:0 10px;
}

.menu-down{
	position:absolute;
	background:rgba(20,20,20,0.8);
	width:100%;
	height:55px;
}

.sublist li{
	float:left;
	position:relative;
}

.menu-down > div{
	position:relative;
	left:20px;
}

.sublist li > a{
	color:#b1b1b1;
	font-size:15px;
	padding:0 15px;
}

#header_title > li:hover{
	border-bottom:5px solid red;
}

.menu-down a:hover{
	color:white;
}

.justify-center{
	display:block;
	text-align:center;	
}

.justify-center li{
	display:inline-block;
}

.table td{
	text-align:center;
	padding:15px 0;
	border-bottom:1px solid #dee2e6;
}

.table th{
	padding:15px 0;
	text-align:center;
	background-color:#e5e5e5;
}

.page-num{
	position:relative;
	display:block;
	padding:5px 10px;
	background-color:white;
	color:#6E6E6E;
}

.page-num:hover{
	color:#000000;
	font-weight:bold;
}

.table-title{
	font-size:20px;
	font-weight:bold;
	padding-bottom:8px;
	border-bottom:2px solid black;
}

.selected{
	color:#000000;
	font-weight:bold;
}

.title-a{
	color:black;
}

.title-a:hover{
	text-decoration:underline;
	text-underline-position: under;
}

.searchForm{
	margin-top:45px;
	text-align:center;
	padding:20px 0;
	background-color:#f6f6f6;
}

.search-type{
	vertical-align:middle;
	height:23px;
	line-height:23px;
	white-space:nowrap;
}

.search-input{
    vertical-align: middle;
    border: 1px solid #d9d9d9;
    height: 23px;
    line-height: 23px;
    width: 210px;
    padding: 0 5px;
}

.search-a{
    vertical-align: middle;
    display: inline-block;
    width: 42px;
    height: 24px;
    padding-top: 1px;
    line-height: 24px;
    text-align: center;
    font-weight: bold;
    color: #fff;
    text-decoration: none;
    background-color: #767676;
}
	</style>
</head>
<body>
	<div id="header">
		<div class="header-top">
			<a href="/">
				<i class="fa fa-home fa-sc"></i>
			</a>
			<a href="javascript:void(0)" style="float:right" id="all_search_form">
				<i class="fa fa-search" id="all_search"></i>
			</a>
		</div>
		<div class="header-list">
			<nav style="position:relative;">
				<ul style="margin:0;" id="header_title">
					<li>
						<a href="javascript:void(0)" class="title-menu" data-sub="#post_list">게시글</a>
					</li>
					<li>
						<a href="javascript:void(0)" class="title-menu" data-sub="#streaming_list">실시간</a>
					</li>
					<li>
						<a href="javascript:void(0)" class="title-menu" data-sub="#replay_list">다시보기</a>
					</li>
				</ul>
			</nav>
		</div>
	</div>
	<div class="menu-down" style="display:none;">
		<div id="post_list" style="display:none;">
			<ul class="sublist" style="opacity:0;">
				<li>
					<a href="javascript:void(0)">인기글</a>
				</li>
				<li>
					<a href="javascript:void(0)">전체</a>
				</li>
			</ul>
		</div>
		<div id="streaming_list" style="display:none;">
			<ul class="sublist" style="opacity:0;">
				<li>
					<a href="javascript:void(0)">인기</a>
				</li>
				<li>
					<a href="javascript:void(0)">영화</a>
				</li>
				<li>
					<a href="javascript:void(0)">드라마</a>
				</li>
				<li>
					<a href="javascript:void(0)">예능</a>
				</li>
			</ul>
		</div>
		<div id="replay_list" style="display:none;">
			<ul class="sublist" style="opacity:0;">
				<li>
					<a href="javascript:void(0)">최신/인기</a>
				</li>
				<li>
					<a href="javascript:void(0)">영화</a>
				</li>
				<li>
					<a href="javascript:void(0)">드라마</a>
				</li>
				<li>
					<a href="javascript:void(0)">예능</a>
				</li>
			</ul>
		</div>
	</div>
	<div style="margin:50px 100px 0;">
		<div class="table-title">게시판</div>
		<div id="table_template">
		<script id="table-template" type="text/x-handlebars-template">
			<table class="table">
				<thead>
					<tr>
						<th style="width:85px;">번호</th>
						<th style="width:450px;">제목</th>
						<th style="width:120px;">아이디</th>
						<th style="width:85px;">작성일</th>
						<th style="width:85px;">조회수</th>
					</tr>
				</thead>
				<tbody>
					{{#users}}
					<tr>
						<td>{{num}}</td>
						<td style="text-align:left;" id="{{num}}">
							<a href="javascript:void(0)" class="title-a">{{title}}</a>
						</td>
						<td>{{id}}</td>
						<td>{{time}}</td>
						<td>{{view}}</td>
					</tr>
					{{/users}}
				</tbody>
			</table>
		</script>
		</div>
	</div>
	<nav style="margin:50px 100px">
			<ul class="pagination justify-center" id="paging">
			</ul>		
	</nav>	
	<div class="searchForm">
		<form style="margin:0;">
			<select class="search-type">
				<option value="">전체</option>
				<option value="title">제목</option>
				<option value="id">아이디</option>
			</select>
			<input class="search-input" type="text">
			<a href="javascript:void(0)" class="search-a">검색</a>
		</form>
	</div>
	<div style="height:100px;">
	</div>
	<script type="text/javascript">
	
	    $("document").ready(function(){        
	        paging(totalData, dataPerPage, pageCount, 1);
	    });

		var date = new Date();
		var year = date.getFullYear();
		var month = new String(date.getMonth()+1);
		var day = new String(date.getDate());
		
		if(month.length < 2)
			month = "0" + month;
		if(day.length < 2)
			day = "0" + day;
		
		var dateTime = year+"-"+month+"-"+day ;
		
		var data = {
				users:[
					{num:"123",title:"이것은 제목입니다.",id:"vwijjm",time:"2019-08-21",view:"5346"},
					{num:"이름12",title:"제목12",id:"아이디12",time:"2019-08-21",view:"뷰12"},
					{num:"이름13",title:"제목13",id:"아이디13",time:"2019-08-21",view:"뷰13"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름14",title:"제목14",id:"아이디14",time:"시간14",view:"뷰14"},
					{num:"이름15",title:"제목15",id:"아이디15",time:"시간15",view:"뷰15"},
					{num:"이름153",title:"제목15",id:"아이디15",time:"시간15",view:"뷰19"}
				]
		};
		
		var totalData = data.users.length;	//총 데이터수
		var dataPerPage = 10;	//페이지당 나올 데이터 수
		var pageCount = 10;		//화면에 나오는 페이지번호 수
		var source=$("#table-template").html();
		var template=Handlebars.compile(source);
		
		//페이지에 따른 핸들바 함수
		function handlebar(dataPerPage,currentPage){
			
			var start = ((currentPage - 1) * dataPerPage);
			var end = start + dataPerPage;
			var slice = data.users.slice(start,end);
			var datas = {};
			datas.users = slice;
			
			var html = template(datas);
		
			$("#table_template").html(html);
	    
			for(var i=0;i<datas.users.length;i++){
				if(dateTime == datas.users[i].time){
					var id = datas.users[i].num;
					var img = '<img src="http://img.lifestyler.co.kr/NewIMG/icon/ico_new.gif" style="vertical-align:top;margin-top:2px;" alt="New">';
					$("#"+id).append(img);
				}
			};
			
		}
		
		function paging(totalData, dataPerPage, pageCount, currentPage){
			handlebar(dataPerPage,currentPage);
			var totalPage = Math.ceil(totalData/dataPerPage);
			var pageGroup = Math.ceil(currentPage/pageCount);
			
			var last = pageGroup * pageCount;
			if(last > totalPage)
		         last = totalPage;
	        var first = (last - pageCount) + 1;    // 화면에 보여질 첫번째 페이지 번호
	        if(first<0)
	        	first=1;
	        var next = last+1;
	        var prev = first-1;
	        var $pingingView = $("#paging");
	        
	        var html = "";
	        
	        if(prev > 0)
	            html += '<li class="page-item"><a class="page-num" id="prev" href="javascript:void(0)">처음</a></li>';
	        
	        for(var i=first; i <= last; i++){
	            html += '<li class="page-item"><a class="page-num" id="'+i+'" href="javascript:void(0)">'+i+'</a></li>';
	        }
	        
	        if(last < totalPage)
	            html += '<li class="page-item"><a class="page-num" id="next" href="javascript:void(0)">다음</a></li>';
	        
	        $("#paging").html(html);    // 페이지 목록 생성
	        $("#paging a#" + currentPage).addClass("selected");// 현재 페이지 표시
	                                           
	        $("#paging a").click(function(){
	            
	            var $item = $(this);
	            var $id = $item.attr("id");
	            var selectedPage = $item.text();
	            
	            if($id == "next")    selectedPage = next;
	            if($id == "prev")    selectedPage = prev;
	            
	            paging(totalData, dataPerPage, pageCount, selectedPage);
	        });
	                                           
	    }
	
		$(document).on("click","#all_search",function(){
			var html = '<input type="text" maxlength="25" class="all-search">';
			$("#all_search_form").prepend(html);
		});
		
		var isOver = false;		//가장 큰 목록 마우스오버 여부
		var overTarget;		//마우스 오버한 목록을 넣기위한 변수선언
		
		//큰 목록 마우스오버 이벤트
		$("#header_title > li").on("mouseenter",function(e){
			e.preventDefault();
			
			isOver = true;
			var sub_id = $(this).children().data("sub");
			overTarget = sub_id;
			
			$(".menu-down > div").hide();
			$(".menu-down > div").find("ul").css("opacity",0);
			$(sub_id).stop(true,true);
			$(sub_id).find("ul").stop(true,true);
			
			
			$(".menu-down").slideDown("fast");
			$(sub_id).show();
			$(sub_id).find("ul").animate({opacity:1},50);
		});
		
		$(".menu-down").on("mouseenter",function(){
			isOver = true;
		});
		
		$(".menu-down").on("mouseleave",function(e){
			e.preventDefault();
			menuMouseLeave();
		});
		
		$("#header_title > li").on("mouseleave",function(e){
			e.preventDefault();
			menuMouseLeave();
		});
		
		
		function menuMouseLeave(){
			isOver = false;
			var _this = overTarget;
			$(_this).find("a").on("click",function(){
				$(".table-title").html($(this).text());
				paging(totalData, dataPerPage, pageCount, 1);
			});
			
			if(!_this) return;
			setTimeout(function(){
				if(!isOver){
					$(_this).find("ul").animate({opacity:0},50);
					$(".menu-down").slideUp("fast",function(){
						$(_this).hide();
					})
				}
			},200);
		}
		
		$("table_template").find("td").eq(1).on("click",function(){
			alert($(this).attr("id"));
		})
		
	</script>
</body>
</html>
