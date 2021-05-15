<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
    <style>
        /*datepicker에서 사용한 이미지 버튼 style적용*/
        img.ui-datepicker-trigger {
            margin-left:5px; vertical-align:middle; cursor:pointer;
        }
    </style>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="http://code.jquery.com/ui/1.11.4/jquery-ui.min.js"></script>

    <script src="http://ajax.googleapis.com/ajax/libs/jqueryui/1.11.4/i18n/datepicker-ko.js"></script>
    <script>
        $(function() {


            //오늘 날짜를 출력
            $("#today").text(new Date().toLocaleDateString());

            //datepicker 한국어로 사용하기 위한 언어설정
            $.datepicker.setDefaults($.datepicker.regional['ko']);

            // 시작일(fromDate)은 종료일(toDate) 이후 날짜 선택 불가
            // 종료일(toDate)은 시작일(fromDate) 이전 날짜 선택 불가

            //시작일.
            $('#fromDate').datepicker({
                showOn: "both",                     // 달력을 표시할 타이밍 (both: focus or button)
                buttonImage: "images/calendar.gif", // 버튼 이미지
                buttonImageOnly : true,             // 버튼 이미지만 표시할지 여부
                buttonText: "날짜선택",             // 버튼의 대체 텍스트
                dateFormat: "yy-mm-dd",             // 날짜의 형식
                changeMonth: true,                  // 월을 이동하기 위한 선택상자 표시여부
                //minDate: 0,                       // 선택할수있는 최소날짜, ( 0 : 오늘 이전 날짜 선택 불가)
                onClose: function( selectedDate ) {
                    // 시작일(fromDate) datepicker가 닫힐때
                    // 종료일(toDate)의 선택할수있는 최소 날짜(minDate)를 선택한 시작일로 지정
                    $("#toDate").datepicker( "option", "minDate", selectedDate );
                }
            });

            //종료일
            $('#toDate').datepicker({
                showOn: "both",
                buttonImage: "images/calendar.gif",
                buttonImageOnly : true,
                buttonText: "날짜선택",
                dateFormat: "yy-mm-dd",
                changeMonth: true,
                //minDate: 0, // 오늘 이전 날짜 선택 불가
                onClose: function( selectedDate ) {
                    // 종료일(toDate) datepicker가 닫힐때
                    // 시작일(fromDate)의 선택할수있는 최대 날짜(maxDate)를 선택한 종료일로 지정
                    $("#fromDate").datepicker( "option", "maxDate", selectedDate );
                }
            });
        });
    </script>
	<script src = "resources/ckeditor/ckeditor.js"></script>
</head>
<body>
오늘 날짜 : <span id="today"></span>
<form>
    <input id="writeTitle" type="text" placeholder="제목" autocomplete="off" name="title"/>
    <br/>
    <label for="fromDate">시작일</label>
    <input type="text" name="fromDate" id="fromDate">
    ~
    <label for="toDate">종료일</label>
    <input type="text" name="toDate" id="toDate">
    <div style = "width:800px;">
	내용
	<textarea id = "description" name = "description" rows = "5" cols = "80"
placeholder = "상품설명을 입력하세요"></textarea>
</form>
</body>
<script>
//CKEDITOR.replace("description"); //태그의 id
//이미지 업로드를 할 경우
CKEDITOR.replace("description",{

//CKEDITOR.replace와 id("description")를 잘 적어주면 그 태그가 smart editor 스타일로 바뀌게 된다. 
 
    filebrowserUploadUrl : "${path}/imageUpload.do"

//파일을 업로드 해야하기 때문에 filebrowserUploadUrl을 사용하고, 서버쪽에 코드를 완성해주어야 한다.

});
</script>
</html>