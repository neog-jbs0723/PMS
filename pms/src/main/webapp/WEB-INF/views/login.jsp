<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>PMS Login</title>
<style>
    body{
      background: #347e99;
    }
    #loginBox{
      width: 500px;
      height: 300px;
      background: #fff;
      margin: 180px auto;
    }
    #loginBox h2{
      margin: 0;
      /*background: aqua;*/
      padding: 9px;
      text-align: center;
      border-bottom: 3px solid #347e99;
    }
    #loginBox .login_form{
      width: 420px;
      height: 200px;
      /*background: blue;*/
      position: relative;

      left: 40px;
    }

    .form_box{
      position: absolute;
      width: 200px;
      height: 25px;
      top: 30px;
      left: 100px;
    }
    .form_box.pwd_box{
      top: 80px;
    }
    .login_form .login_btn{
      width: 200px;
      height: 25px;
      border: none;
      position: absolute;
      bottom: 40px;
      left: 105px;
      cursor: pointer;
    }
    .login_form .join_btn{
      width: 200px;
      height: 25px;
      display: block;
      background: rgb(239,239,239);
      color: #000;
      text-align: center;
      text-decoration: none;
      position: absolute;
      bottom: 0px;
      left: 105px;
      cursor: pointer;
    }
  </style>
</head>
<body>
 <div id="loginBox">
    <h2>PMS Login</h2>
    <form class="login_form">
      <input type="text" class="id_box form_box" name="id" id="id" placeholder="ID"/>
      <input type="text" class="pwd_box form_box" name="pwd" id="pwd" placeholder="PASSWORD"/>
      <input type="submit" value="Login" class="login_btn">
      <a href="join.jsp" class="join_btn">Join</a>
    </form>

  </div>
</body>
</html>