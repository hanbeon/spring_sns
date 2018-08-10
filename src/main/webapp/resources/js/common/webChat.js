/**
 * 
 */
	
	$(function(){
		
		$("#sendBtn").on("click", function(){
			console.log("send message..");
			webChatFn.sendMessage();
		})
		
	});

	var webChatFn = {
			
			sock : "",
			openChatId :"", 
			getWebChatList : function() {
				$.ajax({
					url		:	"/chat/getWebChatList",
					success	: function(result) {
						console.log(JSON.stringify(result));
						
						var resultHtml ="";
						if ( result.length > 0 ) {
							
							$.each(result, function(index, value){
								
								resultHtml += "<li>					";
								resultHtml += "		<div>			";
								resultHtml += "			<a href=\"#\" onclick = \"javscript:webChatFn.openWebChatPopUp('"+value.chatRoomId+"');\"> "+value.chatName + "</a>";
								resultHtml += "			<p style=\"font-size:1px;\">"+value.chatRoomId+"</p>";
								resultHtml += "		</div>"
								resultHtml += "</li>				";
							})
						} else {
							
						}
						$("#chatRoomList").html(resultHtml);
					},
					error 	: function(error) {
						alert("error");
					}
				})
			},
			
			openWebChatPopUp : function(p_openChatId) {
				
				//openChatId 저장
				$.ajax({
					 url		:	"/chat/openWebChatId"
					,data		:	{ "openChatId" : p_openChatId}
				})
				webChatFn.openChatId = p_openChatId;
				$("#chatModal").modal();
				this.sock = new SockJS("/webSocket");
				this.sock.onmessage = this.onMessage;
				//var sock = new SockJS('<c:url value="/webSocket"/>');
			},
			
			sendMessage : function() {
				this.sock.send( $("#message").val());
			},
			onMessage   : function(evt) {
				var data = evt.data;
				var sessionid = null;
				var message = null
				
				var strArray = data.split("|");
				
				if ( webChatFn.openChatId == strArray[2].trim() ){
					
					var currentuser_session =  $("#sessionId").val();
					
					sessionid = strArray[0];
					message = strArray[1];
					
					var printHtml = "";
					if ( sessionid.trim() == currentuser_session.trim() ) {
						printHtml = "<p style=\"color:  #CCA63D;\" >";
						printHtml+= "	<strong>[ ME ] -> " + message+"</strong>";
						printHtml+= "</p>";
					} else {
						printHtml = "<p>";
						printHtml+= "	<strong>["+sessionid+"] -> " + message+"</strong>";
						printHtml+= "</p>";
					}
					$("#messageView").append(printHtml);
				}
				
			},
			connectClose : function(){
				this.sock.close();
			}
	} 


//친구 찾기 검색 팝업
	/*openSearchPopUp : function() {
		$("#searchFriendModal").modal();
	},*/