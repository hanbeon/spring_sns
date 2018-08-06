<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/common/taglib/taglib.jsp" %>
<div class="row">
	<div class="col-lg-6 ui-sortable">
		<div class="box ui-sortable-handle">
			<header>
				<h5>Request Friends</h5>
			</header>
			<div class="body collapse in">
				<table class="table table-bordered responsive-table">
					<colgroup>
						<col width="5%">
						<col width="35%">
						<col width="30%">
						<col width="30%">
					</colgroup>
					<thead>
						<tr>
							<th>#</th>
							<th>Email</th>
							<th colspan="2" align="center">Name</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${fn:length(result.requestList) > 0 }">
								<c:forEach var="requestList" items="${result.requestList}" varStatus="state">
									<tr>
										<td>${state.count}</td>
										<td>${requestList.email}</td>
										<td colspan="2">${requestList.firstName} ${requestList.lastName}</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="4" align="center">발송한 친구 요청이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
	</div>
	<%--Response Friendes --%>
	<div class="col-lg-6 ui-sortable">
		<div class="box ui-sortable-handle">
			<header>
				<h5>Response Friends</h5>
			</header>
			<div class="body collapse in">
				<table class="table table-bordered responsive-table">
					<colgroup>
						<col width="5%">
						<col width="35%">
						<col width="30%">
						<col width="30%">
					</colgroup>
					<thead>
						<tr>
							<th>#</th>
							<th>Email</th>
							<th colspan="2" align="center">Name</th>
							<th>확인 요청</th>
						</tr>
					</thead>
					<tbody>
						<c:choose>
							<c:when test="${fn:length(result.responseList) > 0 }">
								<c:forEach var="responseList" items="${result.responseList}" varStatus="state">
									<tr>
										<td>${state.count}</td>
										<td>${responseList.email}</td>
										<td colspan="2">${responseList.firstName} ${responseList.lastName}</td>
										<td align="center">
											<c:choose>
												<c:when test="${responseList.state eq 'Y'}">
													<p class="btn btn-success btn-xs">
														승인
													</p>
												</c:when>
												<c:when test="${responseList.state eq 'N'}">
													<button class="btn btn-primary btn-xs" id="${responseList.id}"
														onclick="javascript:friendFn.acceptFriend('${responseList.email}','${responseList.id}');">
														거절
													</button>
												</c:when>
												<c:otherwise>
													<button class="btn btn-primary btn-xs" id="${responseList.id}"
														onclick="javascript:friendFn.acceptFriend('${responseList.email}','${responseList.id}');">
														친구 추가
													</button>
												</c:otherwise>
											</c:choose>
										</td>
									</tr>
								</c:forEach>
							</c:when>
							<c:otherwise>
								<tr>
									<td colspan="5" align="center">요청 받은 친구 요청이 없습니다.</td>
								</tr>
							</c:otherwise>
						</c:choose>
					</tbody>
				</table>
			</div>
		</div>
	</div>
</div>