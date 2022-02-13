<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Title</title>
    <link rel="stylesheet" href="http://code.jquery.com/ui/1.11.4/themes/smoothness/jquery-ui.css"/>
    <style>
        input{
            border: none;
        }
        /*datepicker에서 사용한 이미지 버튼 style적용*/
        img.ui-datepicker-trigger {
            margin-left:5px; vertical-align:middle; cursor:pointer;
        }
        .ui-datepicker-trigger{
        	width:20px;
        	height:20px;
        }

        #content{
            width: 100%;
            height: 1080px;
            background: #bdbdbd;
        }
        #content .today_date{
            background: aliceblue;
            height: 50px;
            line-height: 50px;
            font-size: 18px;
            text-align: center;
        }
        #content .informations{
            background: aliceblue;
            height: 2030px;
        }
        /*여기서부터 form css*/
        .informations #ProjectData{
            width: 960px;
            margin: auto;
            background: #bdbdbd;
        }
        #ProjectData .date_period{
            width: 280px;
            margin-top: -43px;
            margin-left: 680px;
            font-size: 14px;
        }

        /* 제목 css */
        #ProjectData #writeTitle{
            width: 640px;
            height: 40px;
            margin-top: 10px;
            margin-left: 10px;
            font-size: 17px;
            border: none;
        }
        /* 담당자 css */
        #ProjectData .project_manager{
            width: 100%;
            height: auto;
            background: cadetblue;
        }
        .project_manager h5{
            margin: 10px 10px;
            padding: 0px;
        }
        .project_manager .manager_btn{
            border: none;
            width: 100px;
            height: 30px;
            background: aliceblue;
            margin-left: 850px;
            margin-bottom: 5px;
        }
        .project_manager .manager_list{
            width: 940px;
            height: auto;
            padding: 0px;
            margin: 0px auto;
            list-style: none;

        }
        .manager_list li{
            width: 280px;
            height: 25px;
            margin: 10px;
            display: inline-block;

        }
        .manager_list li span{
            display: inline-block;
            width: 100px;
            height: 25px;
            line-height: 25px;

        }
        .manager_list li input{
            height: 22px;
            border: none;
        }
        .thumbmnail_box{
            width: 300px;
            height: 300px;
            background: red;
        }

        /* .informations label{
            margin-left: 160px;
        }
        .informations input{
            margin-left: 160px;
        }
        .informations #fromDate{
            margin-left: 0px;
        }
        .informations #toDate{
            margin-left: 0px;
        } */



        #editorBox{
            margin: auto;
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
                buttonImage: "resources/img/calendar.png", // 버튼 이미지
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
                buttonImage: "resources/img/calendar.png",
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
    <script src = "..//publisher/ckeditor/ckeditor.js"></script>
</head>
<body>

<div id="content">
    <div class="today_date">
        <span>오늘 날짜 : </span> <span id="today"></span>
    </div>
    <div class="informations">
        <form id="listForm" name="listForm" method="POST" onsubmit="fn_save();" enctype="multipart/form-data">
            <input id="proTitle" name="proTitle" type="text" placeholder="제목" autocomplete="off" />
            <input id="proId" name="proId" type="hidden" value="${id}"/>

            <div class="date_period">
                <label for="fromDate">시작일</label>
                <input type="text" name="fromDate" id="fromDate">
                <br/>
                <label for="toDate">종료일</label>
                <input type="text" name="toDate" id="toDate">
            </div>


            <div class="project_manager">
                <h5>담당자 배치</h5>
                <ul class="manager_list">
                    <li><span>PM : </span><input type="text" id="pm_project"/></li>
                    <li><span>PL : </span><input type="text" id="pm_project"/></li>
                    <li><span>Planner : </span><input type="text" id="pm_project"/></li>
                    <li><span>Developer1 : </span><input type="text" id="pm_project"/></li>
                    <li><span>Publisher : </span><input type="text" id="pm_project"/></li>
                    <li><span>Designer : </span><input type="text" id="pm_project"/></li>
                </ul>
                <button class="manager_btn">담당자 추가</button>
            </div>
            <input type="file" name="thumbnail" id="thumbnail" />
            <div class="thumbmnail_box"></div>
            <p></p>




            <!-- <div id="editorBox">
                <textarea id="proContent" name="proContent" rows="5" cols="80" placeholder="상품설명을 입력하세요"></textarea>
            </div> -->
            <input type="submit" value="등록"/>
        </form>
    </div>


</div>


</body>
<!-- <script>
    //CKEDITOR.replace("description"); //태그의 id
    //이미지 업로드를 할 경우
    CKEDITOR.replace("proContent",{
        filebrowserUploadUrl : "/imageUpload.do"
    });
    </script> -->
<script>
function fn_save(){
	var listForm = document.listForm;
	listForm.action = "/writeProc.do";
	listForm.submit();
}
</script>
</html>