package com.springSns.sns.common.interceptor;

import java.util.Collection;
import java.util.Enumeration;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.http.server.ServerHttpRequest;
import org.springframework.http.server.ServerHttpResponse;
import org.springframework.http.server.ServletServerHttpRequest;
import org.springframework.util.CollectionUtils;
import org.springframework.web.socket.WebSocketHandler;
import org.springframework.web.socket.server.support.HttpSessionHandshakeInterceptor;

import com.fasterxml.jackson.databind.ObjectMapper;

public class ChatInterceptor extends HttpSessionHandshakeInterceptor{
	
	private static final Log logger = LogFactory.getLog(ChatInterceptor.class);

	private Collection<String> attributeNames;
	@Override
	public boolean beforeHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
			Map<String, Object> attributes) throws Exception {
		// TODO Auto-generated method stub
		System.out.println("BEFORE############################");
		
		if (request instanceof ServletServerHttpRequest) {
			ServletServerHttpRequest servletRequest = (ServletServerHttpRequest) request;
			HttpSession session = servletRequest.getServletRequest().getSession(false);
			if (session != null) {
				Enumeration<String> names = session.getAttributeNames();
				while (names.hasMoreElements()) {
					String name = names.nextElement();
					if (CollectionUtils.isEmpty(this.attributeNames) || this.attributeNames.contains(name)) {
						if (logger.isTraceEnabled()) {
							logger.trace("Adding HTTP session attribute to handshake attributes: " + name);
						}
						attributes.put(name, session.getAttribute(name));
					}
					else {
						if (logger.isTraceEnabled()) {
							logger.trace("Skipped HTTP session attribute");
						}
					}
				}
			}
			
			ObjectMapper mapper = new ObjectMapper();
			
			System.out.println("## " + mapper.writeValueAsString(attributes));
		}
		
		return true;
	}

	@Override
	public void afterHandshake(ServerHttpRequest request, ServerHttpResponse response, WebSocketHandler wsHandler,
			Exception ex) {
		System.out.println("AFTER#######################");
	}

	
}
