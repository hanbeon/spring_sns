/**
 * 
 */
//친추 관련 기능
var friendFn = {
	//친구 찾기 검색 팝업
	openSearchPopUp : function() {
		$("#searchFriendModal").modal();
	},
	
	//친구 찾기
	searchFriendAjax : function(id) {
		var params = $("#"+id).serialize();
		$.ajax({
			url     :  "/friend/searchFirendAjax",
			data    :  params,
			method  :  "post",
			type    :  "json",
			success :  function(result){
				var list = result.list;
				var result = "";
				var tagId = $("#friendSearchBody");
				console.log( JSON.stringify(list));
				if ( list.length > 0 ) {
					
					$.each( list,function(index, row){
						result +="<tr>";
						result += "<td>"+(index+1)+"</td>";
						result += "<td>"+row.email+"</td>";
						result += "<td>"+row.firstName+"</td>";
						result += "<td>"+row.lastName+"</td>";
						/*if ( row.toEmail != "" ){
							
							 result += "<td align=\"center\">추가 요청 완료.</td>"; 
							result += "<td align=\"center\">"+
											"<button class=\"btn btn-success btn-xs\" disabled=\"disabled\">발송 완료</button>"+
										"</td>";
						} else {*/
							result += "<td align=\"center\">"+
										"<button class=\"btn btn-primary btn-xs\" id=\""+row.id+"\" "+
											"onclick=\"javascript:friendFn.addFriend('"+row.email+"','"+row.id+"');\">추가 신청</button>"+
										"</td>";
						//}
						result += "</tr>";
					})
					
				}else {
					
					result += "<tr><td colspan='5' align='center'>조회 된 회원이 없습니다.</td></tr>";
				}
				tagId.html(result);
			},
			error   :  function(e){
				alert("error");
			}
		})
	},
	
	//친구 추가요청.
	addFriend : function(toEmail, id){
		
		var message = confirm("친구 요청을 보내시겠습니까?");
		
		if ( message ) {
			
			$.ajax({
				url     : "/friend/addTempFriend",
				data    : {"toEmail":toEmail},
				method  : "post",
				success : function(result){
					if ( result > 0 ){
						
						alert("성공적으로 친구 추가 요청을 보냈습니다.");
						
						$("#"+id).attr("class", "btn btn-success btn-xs");
						$("#"+id).attr("disabled", "true");
						$("#"+id).text("발송 완료");
					}else {
						
						alert("이미 친구추가 요청 상태입니다.");
					}
				},
				error   : function(error){
					alert("error");
				}
			})
		}
	},
	
	acceptFriend : function(email, id) {
		
		var message = confirm("친구 추가를 하시겠습니까?");
		if (message) {
						
			$.ajax({
				url     : "/friend/acceptFriend",
				data    : {"toEmail" : email},
				method  : "post",
				success : function(result) {
					
					if ( result > 0 ) {
						
						alert("성공적으로 친구 추가가 되었습니다.");
						
						$("#"+id).attr("class", "btn btn-success btn-xs");
						$("#"+id).attr("disabled", "true");
						$("#"+id).text("추가 완료");
					} else {
						
						alert("이미 친구목록에 존재하는 사용자입니다");
					}
					
				},
				error   : function(error) {
					alert("error");
				}
			})
		}
	},
	
	getFriends : function() {
		
		$.ajax({
			url     : "/friend/getFriends",
			method  : "post",
			success : function(result) {
				if ( result.friendList.length > 0 ) {
					
					var resultHtml  = "" ;
					
					$.each( result.friendList, function(i, value ){
						resultHtml += "<li>					";
						resultHtml += "		<div><a href=\"#\" onclick = \"javscript:webChatFn.openWebChatPopUp();\"> "+value.firstName + value.lastName + "</a></div>  ";
						resultHtml += "</li>				";
					})
					
					$("#friendList").html(resultHtml);
				}
			},
			error   : function(error) {
				alert("error");
			}
		})
	}
}
