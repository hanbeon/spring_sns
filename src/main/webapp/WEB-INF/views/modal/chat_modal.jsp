<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/common/taglib/taglib.jsp" %>

<!-- Friend Search Modal -->
<div class="modal fade" id="chatModal" tabindex="-1" role="dialog" aria-labelledby="chatModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-bale="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h5 class="modal-title" id="chatModalLabel"><span>대화</span></h5>
			</div>
			<!-- 
			<div class="modal-body">
				<div class="from-group">
					<label class="control-label col-lg-3">검색</label>
					<div class="col-lg-5">
						<div class="input-group">
						
						</div>
					</div>
				</div>
			</div>
			 -->	
			<div class="modal-body">
				<div class="fileinput-preview thumbnail" style="height: 300px; width: auto;" id="messageView" prop="bodyMessage">>
					<!-- 
					<table class="table table-bordered responsive-table">
					</table>
					 -->
				</div>
			</div>
				
			<div class="modal-footer">
				<input type="text" id="message"/>
				<button type="button" id="sendBtn">sendBtn</button>
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
				<input type="hidden" id="sessionId" value="${sessionScope.userEmail}"/>
			</div>
		</div>
	</div>
</div>