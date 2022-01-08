<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html lang="ko">
<head>
    <meta charset="UTF-8">
    <title>PMS</title>
	<link rel="stylesheet" type="text/css" href="resources/css/main.css">
</head>
<body>
<div id="content">
    <div class="head_cont">
        <img src="resources/img/main_1.jpg"/>
        <h1>PMS</h1>
        <h3>창의적인 솔루션, 놀라운 결과</h3>
    </div>
    <div class="one_cont">
        <h2>사이트 소개</h2>
        <div class="text_div">
            <div class="text_box">
                <p>이런 생각 해보신 적 있으신가요?</p>
                <br/>
                <p>"오늘 무슨 일을 했는지 기억이 나질 않아.."</p>
                <p>"내가 투입된 프로젝트가 어디였더라..?"</p>
                <p>"분명 메모했는데 어디다 저장했었지..?"</p>
                <p>"오늘까지 처리 해야 되는 일이 뭐였지..?"</p>
                <br/>
                <p>PMS 사이트는 이러한 궁금증들을 해결합니다.</p>
            </div>
        </div>
        <div class="img_div">
            <img src="resources/img/main_2.jpg">
        </div>
    </div>
    <div id="two_cont">
        <h2>수행중인 프로젝트</h2>
        <ul>
        	<c:forEach items="${result}" var="res">
	            <li>
	                <img src="resources/img/2000_5cdd2aeec5281.jpg" width="230px" height="150px"/>
	                <p>${res.pro_title}</p>
	                <em>${res.pro_startdate} - ${res.pro_enddate} / 서울시 강동구 새둘레길 89-1</em>
	                <%-- <p class="cont">${res.pro_content}</p> --%>
	                <button onclick="goDetail();">더 보기</button>
	            </li>
            </c:forEach>
        </ul>

    </div>
</div>

<div id="sideBar">
    <h1>PMS</h1>
    <ul>
        <li><span>메인</span></li>
        <li><span>사이트 소개</span></li>
        <li><span><a href="/write.do">수행중인 프로젝트</a></span></li>
        <li><span>종료된 프로젝트</span></li>
        <li><span><a href="/test.do">회원가입</a></span></li>
    </ul>
    <hr/>
</div>

</body>
</html>
<script>
	function goDetail(){
		location.href='detail.do';
	}
</script>