<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- 알림생성 -->
<div class="header">
          <div class="btn" onclick="UPMCkNot(2,1)">취소</div>
          <div class="title">알림생성</div>
          <div class="btn" onclick="not()">보내기</div>
        </div>
        <div class="body NotBody" style="height:100%;">
          <!-- 게시글 시작 -->
          <style>
          	li{list-style:none;}
  a{color:#fff; text-decoration:none;}
  input{outline-style:none; color:#fff;}
  input::-webkit-search-decoration,
  input::-webkit-search-cancel-button,
  input::-webkit-search-results-button,
  input::-webkit-search-results-decoration {display:none; }
  input::-webkit-input-placeholder{color:rgba(255, 255, 255, 0.69);}
  .ta-toolbar{margin:16px 0;}
  .ta-editor {
  min-height: 300px;
  height: auto;
  overflow: auto;
  font-family: inherit;
  font-size: 100%;
}
/*body{background:#42495e; color:#fff;}*/
.btn-group:nth-child(1){display:none;}
.btn-group:nth-child(2){display:none;}
.btn-group button{width:47px; height:44px; background:#515973; border:0; border-left:1px solid #4a516a;border-top:1px solid #4a516a; border-bottom:1px solid #4a516a;}
.btn-group button:last-child{border-right:1px solid #4a516a;}
.container{padding-top:25px;}
.container .btn-group button svg{width:18px;}
.container .active{background:#606b90 !important;}
.container .title{width:90%; margin:0 auto; padding:15px 25px; background:#42495e; font-size:25px; border:0; display:block; border-bottom:1px solid rgba(255, 255, 255, 0.12);}
.container .ng-isolate-scope{width:90%; margin:0 auto;}
.container a{color:#ffacaf; text-decoration:underline;}
.ng-scope.ng-isolate-scope.ng-valid.ta-text.ta-editor.form-control.ng-dirty{width:100%;}
.ng-scope.ng-isolate-scope.ng-pristine.ng-valid.ta-text.ta-editor.form-control{width:100%; border:1px solid #7882fffa;}
.P-editor-sub{display:none;}
.ta-html{width:100% !important; background:#2b2f3e; color:#fff; border:1px solid #2b2f3e;}
textarea:focus { outline: none; }
.ta-text{width:100%; color:#fff;}

.not-content-title{width:90%; margin:0 auto; padding:35px 25px 15px; background:#42495e; font-size:25px; border:0; display:block; border-bottom:1px solid rgba(255, 255, 255, 0.12);}
.not-content-gnb{margin:0 15px;float:right;}
.not-content-gnb>div,.not-content-gnb>a{margin:10px 5px; padding:5px 10px; background:rgba(41, 45, 58, 0.34); float:left;}
.not-content-con{margin-top:65px; padding:0 24px;}


          </style>
          <form action="workPro.ops" method="post" name="formNot">
			<div ng-app="textAngularTest" ng-controller="wysiwygeditor" class="container">
			  <h3 class="P-editor-sub">프로젝트 총괄 시스템 Editor</h3>
			  <input type="title" class="title" name="title" value="" placeholder="제목">
			  <div text-angular="text-angular" name="htmlcontent" ng-model="htmlcontent" ta-disabled='disabled'>
			  	<div style="float:right;">
			  		<input type="text" id="txtStartDate" name="startDate" style="padding:9px 8px; background: #2c2f3d; border: 0;" placeholder="시작일 (YYYY-MM-DD)">
			  		<input type="text" id="txtEndDate" name="endDate" style="padding:9px 8px; background: #2c2f3d; border: 0;" placeholder="종료일 (YYYY-MM-DD)">
					<input type="hidden" class="pj_no" name="pj_no" value="${pjb[0].pj_no }">
			  	</div>
			  </div>
			  <textarea id="note" ng-model="htmlcontent" name="content" style="width:100%; display:none;" placeholder="html 코드 사입"></textarea>
			</div>
			</form>
			<script>
				function not(){
					formNot.submit();
				}
			</script>
			  <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.2.4/angular.min.js'></script>
			  <script src='https://ajax.googleapis.com/ajax/libs/angularjs/1.2.4/angular-sanitize.min.js'></script>
			  <script src='js/editor/textAngular.min.js'></script>
			  <script type="text/javascript" src="js/editor/editor.js"></script>
          <!-- 게시글 종료-->
        </div>