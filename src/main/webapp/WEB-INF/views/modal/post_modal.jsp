<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="modal fade" id="postModal" tabindex="-1" role="dialog" aria-labelledby="postModalLabel">
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
</div>