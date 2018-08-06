<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ include file="/WEB-INF/views/common/taglib/taglib.jsp" %>
<style>
	.friend-ul > li {
						color: #fff;
					}
</style>

<div id="friend-right">
	<button id="searchFriend" class="btn btn-metis-1 btn-xs btn-round btn-line">Search Friend</button>
	<div class="media user-media bg-dark dker">
		<ul class="friend-ul"  id="friendList">
		<!-- 
			<li>
				<div>sss</div>
			</li>
			<li>
				<div>sss</div>
			</li>
			 -->
		</ul>
	</div>
</div>
<jsp:include page="/WEB-INF/views/modal/friend_search_modal.jsp"/>
<jsp:include page="/WEB-INF/views/modal/chat_modal.jsp"/>

<script>
	$(document).ready(function(){
		
		friendFn.getFriends();
		
		$("#searchFriend").on("click",function(){
			
			friendFn.openSearchPopUp();
		});
		
		$('.modal').on('hidden.bs.modal', function (e) {
		    console.log('modal close');
		  $(this).find('form')[0].reset()
		});
	})
</script>