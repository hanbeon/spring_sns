<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/common/taglib/taglib.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<head>
	<style type="text/css">
		#crtPst {
			margin-top: 10px;
		}
	</style>
</head>
<div class="col-lg-12  ui-sortable">
	<button id="crtPst" class="btn btn-metis-1 btn-xs btn-round btn-line">Create Post</button>
	<c:choose>
		<c:when test="${fn:length(list) > 0}">
			<c:forEach var="list" items="${list}">
				<div class="box ui-sortable-handle">
					<header>
						<a class="user-link" href="" style="float: left;">
							<img class="media-object img-thumbnail user-img" alt="User Picture" src="resources/assets/img/user.gif">
						</a>
						<h4><c:out value="${list.postTitle}"/></h4>
						<div class="toolbar">
							<c:out value="${fn:substring(list.regDt,0,11)}"/><span class="label label-success" ><c:out value="${list.author}"/></span>
						</div>
					</header>
					<div class="body">
						<pre class="prettyprint linenums">${list.postContents}</pre>
					</div>
				</div>
			</c:forEach>
		</c:when>
		<c:otherwise>
			<div class="body">
				<pre class="prettyprint linenums">아직 등록 된 게시물이 없습니다.</pre>
			</div>
		</c:otherwise>
	</c:choose>
<!-- 	<div class="box ui-sortable-handle">
		<header>
		<a class="user-link" href="" style="float: left;">
			<img class="media-object img-thumbnail user-img" alt="User Picture" src="resources/assets/img/user.gif">
		</a>
			<h5>.col-lg-6</h5>
			<div class="toolbar">
				<span class="label label-success">label</span> 
			</div>
		</header>
		<div class="body">
			<pre class="prettyprint linenums">&lt;div class=".col-lg-6"&gt;&lt;/div&gt;</pre>
		</div>
	</div> -->
</div>
<!-- Post Modal -->
<!-- <div class="modal fade" id="postModal" tabindex="-1" role="dialog" aria-labelledby="postModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-bale="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h5 class="modal-title" id="postModalLabel">Modal 제목</h5>
			</div>
			
			<form id="postForm" name="postForm">
				<input type="hidden" id="postContents" name="postContents"/>
				<input type="hidden" id="action" name="action"/>
	 			<div class="modal-body">
	 				<div class="form-group">
	 					<label class="control-label col-lg-3">제 목</label>
	 					<div class="col-lg-5">
	 						<div class="input-group">
	 							<input type="text" id="postTitle" name="postTitle" class="form-control col-lg-6">
	 						</div>
	 					</div>
	 				</div>
				</div>
			</form>
				
			<div class="modal-body">
				<textarea id="ckContents" name="ckContents" cols="80" rows="10"></textarea>
			</div>
				
			<div class="modal-footer">
				<button type="button" class="btn btn-default" onclick="javscript:postFn.savePst('insert')">저장</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div> -->
<jsp:include page="/WEB-INF/views/modal/post_modal.jsp"/>
<script>
	window.onload = function(){
		CKEDITOR.replace('ckContents');
	}
	
	$(document).ready(function(){
		
		$("#crtPst").on("click",function(){
			
			postFn.openCrtPst();
		});
		
		$('.modal').on('hidden.bs.modal', function (e) {
		    console.log('modal close');
		  $(this).find('form')[0].reset()
		});
	})
	
	var postFn = {
		
		openCrtPst : function(){
			
			$("#postModal").modal();
		},
		
		savePst : function(type){
			
			var contents = CKEDITOR.instances.ckContents.getData();
			
			$("#postForm [name=action]").val(type);
			$("#postForm [name=postContents]").val(contents);
			
			var formSeialize = $("#postForm").serialize();
			console.log(formSeialize);
			
 			$.ajax({
				url:"postProcess",
				method:"post",
				/* data: JSON.stringify(formSeialize), */
				type : 'json',
				data: formSeialize,
				success : function(data){
					console.log(JSON.stringify(data.result));
					if (data.result > 0){
						
						alert('작성 완료');
						$("#postModal").modal("hide");
						$("#postModal").find("form")[0].reset();
					}else {
						alert("게시물 등록 중 오류");
						/* if ( data.result.postNameNull =="Y") {
							
							alert("게시물 제목을 작성해 주세요.");
						} */
					}
				},
				error : function(){
					alert("error");
				}
			})
		}
	}
</script>