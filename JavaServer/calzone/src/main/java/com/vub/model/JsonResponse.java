package com.vub.model;

import org.springframework.stereotype.Component;

/**
 * Model representing JSON needed to parse a result
 * @author Tim
 *
 */
@Component
public class JsonResponse {
	private String status;
	private Object message;
	public static final String SUCCESS = "success";
	public static final String ERROR = "error";
	
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	public Object getMessage() {
		return message;
	}
	public void setMessage(Object message) {
		this.message = message;
	}
	@Override
	public String toString() {
		return "JsonResponse [status=" + status + ", message=" + message + "]";
	}
}
