package com.pearler.myjavaapp.exception;

public class EventNotFoundException extends RuntimeException {
	public EventNotFoundException(Integer id) {
	    super("Could not find event " + id);
	  }
}
