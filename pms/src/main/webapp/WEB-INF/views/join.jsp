<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset=UTF-8>
<title>PMS Join</title>
  <style>
    body{
      margin: 0;
      padding: 0;
    }
    #joinBox{
      width: 720px;
      height: auto;
      background: rgb(239,239,239);
      margin: auto;
    }
    #joinBox h2{
      margin: 0;
      padding: 0;
      text-align: center;
    }
    #joinBox .join_form{
      width: 400px;
      height: 840px;
      background: #ffffff;
      margin: auto;
      position: relative;
    }
    .join_form ul{
      list-style: none;
      height: auto;
      /*background: pink;*/
    }
    .join_form ul li{
      width: 350px;
      height: 80px;
      /*background: orange;*/
      margin: 10px auto;
      position: relative;
      left: -15px;
    }
    .join_form li label{
      position: absolute;
      top: 5px;
      left: 50px;
    }
    .join_form li input.join_text{
      width: 250px;
      height: 25px;
      position: absolute;
      bottom: 10px;
      right: 40px;
    }
    .join_form .join_btn{
      width: 250px;
      height: 30px;
      border: none;
      position: absolute;
      bottom: 90px;
      left: 85px;
    }
    .join_form .radio_box{
      width: 300px;
      text-align: center;
      position: absolute;
      top: 30px;
      left: 40px;
    }
    .join_form .check_text{
      width: 12px;
      height: 12px;
    }
    .join_form .radio_text{
      font-size: 12px;
    }


  </style>
</head>
<body>
    <div id="joinBox">
      <h2>PMS JOIN!</h2>
      <form class="join_form">
        <ul>
          <li><label for="id">아이디</label>
            <input type="text" name="id" class="join_text">
          </li>
          <li>
            <label for="pwd">비밀번호</label>
            <input type="text" name="pwd" class="join_text">
          </li>
          <li>
            <label for="pwd_check">비밀번호 확인</label>
            <input type="text" name="pwd_check" class="join_text">
          </li>
          <li>
            <label for="phone">핸드폰 번호</label>
            <input type="text" name="phone" class="join_text">
          </li>
          <li>
            <label for="address">주소</label>
            <input type="text" name="address" class="join_text">
          </li>
          <li>
            <label for="address_d">상세주소</label>
            <input type="text" name="address_d" class="join_text">
          </li>
          <li>
            <label for="email">e-mail</label>
            <input type="text" name="email" class="join_text">
          </li>
          <li>
            <label for="grade">직급</label>
            <div class="radio_box">
              <input type="radio" name="grade" class="check_text" value="부장"><span class="radio_text">부장</span>
              <input type="radio" name="grade" class="check_text" value="부장"><span class="radio_text">차장</span>
              <input type="radio" name="grade" class="check_text" value="부장"><span class="radio_text">과장</span>
              <input type="radio" name="grade" class="check_text" value="부장"><span class="radio_text">대리</span>
              <input type="radio" name="grade" class="check_text" value="부장"><span class="radio_text">주임</span>
              <input type="radio" name="grade" class="check_text" value="부장"><span class="radio_text">사원</span>
            </div>
          </li>
        </ul>
        <input type="submit" value="가입하기" class="join_btn">
      </form>
    </div>
</body>
</html>