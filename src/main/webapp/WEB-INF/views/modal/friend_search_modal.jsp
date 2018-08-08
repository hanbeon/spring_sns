<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    
<!-- Friend Search Modal -->
<div class="modal fade" id="searchFriendModal" tabindex="-1" role="dialog" aria-labelledby="FriendModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-bale="close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h5 class="modal-title" id="FriendModalLabel"><span>친추 찾기</span></h5>
			</div>
			<div class="modal-body">
				<div class="from-group">
					<label class="control-label col-lg-3">검색</label>
					<div class="col-lg-5">
						<div class="input-group">
						<button id="FriendSearchBtn"class="btn btn-primary" data-original-title="" title=""
								onclick="javascript:friendFn.searchFriendAjax('friendSearchForm');">Search</button>
							<form id="friendSearchForm" name="friendSearchForm">
								<input type="text" id="searchText" name="searchText" class="form-control col-lg-6">
							</form>
						</div>
					</div>
				</div>
			</div>
				
			<div class="modal-body">
				<div class="body collapse in">
					<table class="table table-bordered responsive-table">
						<thead>
							<tr>
								<th>#</th>
								<th>Email</th>
								<th>FirstName</th>
								<th>LastName</th>
								<th>Add to friends</th>
							</tr>
						</thead>
						<tbody id="friendSearchBody" prop="bodyMessage">
						</tbody>
					</table>
				</div>
			</div>
				
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">닫기</button>
			</div>
		</div>
	</div>
</div>