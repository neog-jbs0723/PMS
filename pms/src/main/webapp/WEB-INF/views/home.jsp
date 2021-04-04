<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
 <style>
        body{
            margin: 0;
            padding: 0;
            overflow-x: hidden;
        }

        #content{
            width: 100%;
            height: auto;
            background: pink;
        }
        #content .head_cont{
            width: 100%;
            height: 450px;
            background: aqua;
            margin: 0;
            padding: 0;

        }
        .head_cont img{
            margin-left:250px;
            width: 100%;
            height: 450px;
            padding: 0;
        }
        .head_cont h1{
            margin-top: -300px;
            margin-left: 700px;
            color: black;
            font-size: 50px;
            color: #fff;
            text-shadow: 1px 1px 1px #000;
        }
        .head_cont h3{
            margin-left: 630px;
            color: #424242;
            opacity: .7;
            text-shadow: 1px 1px 0px #000;

        }


        hr{
            width: 200px;
            margin: 80px auto;
            padding: 0;
        }
        #sideBar{
            width: 250px;
            height: 100%;
            background:#173354;
            position: fixed;
            top: 0;
            left: 0;
            z-index: 9999;
        }
        #sideBar h1{
            margin: 0 auto;
            width:200px;
            height: 50px;
            padding-top: 40px;

            text-align: center;
            color: #fff;

        }
        #sideBar ul{
            width: 200px;
            list-style: none;
            text-decoration: none;
        }
        #sideBar ul>li{
            width: 200px;

            color: #ffffff;
            text-align: center;
            margin-left: -15px;

            margin-top: 20px;

        }
        #sideBar span{
            padding: 5px;
            border: 1.5px solid #347e99;
        }
        #content .one_cont{
            width: 100%;
            height: 500px;
            background: #fff;
            padding: 0;
            position: relative;
        }
        .one_cont h2{
            margin:0;
            padding: 0;
            position: absolute;
            top: 100px;
            left: 660px;
            font-size: 35px;
            font-weight: 100;
            border-bottom: 3px solid #347e99;
        }

    </style>
</head>
<body>
<div id="content">
    <div class="head_cont">
        <img src="resources/img/2000_5cdd2aeec5281.jpg"/>
        <h1>PMS</h1>
        <h3>창의적인 솔루션, 놀라운 결과</h3>
    </div>
    <div class="one_cont">
        <h2>사이트 소개</h2>

    </div>
</div>

<div id="sideBar">
    <h1>PMS</h1>
    <ul>
        <li><span>메인</span></li>
        <li><span>사이트 소개</span></li>
        <li><span>수행중인 프로젝트</span></li>
        <li><span>종료된 프로젝트</span></li>
        <li><span>회원가입</span></li>
    </ul>
    <hr/>
</div>


</body>
</html>