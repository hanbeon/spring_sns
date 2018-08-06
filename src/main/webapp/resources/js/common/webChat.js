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
			
			sock : new SockJS("/webSocket"),
			
			openWebChatPopUp : function() {
				$("#chatModal").modal();
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
				
				$.each(strArray , function(index, value){
					console.log("str["+index+"]" + value);
				})
				
				var currentuser_session =  $("#sessionId").val();
				console.log("current : "  + currentuser_session);
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
	} 


//친구 찾기 검색 팝업
	/*openSearchPopUp : function() {
		$("#searchFriendModal").modal();
	},*/