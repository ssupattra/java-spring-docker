package com.pearler.myjavaapp.controller;

import java.util.List;
import java.util.Optional;
import java.util.function.Supplier;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import com.pearler.myjavaapp.entity.Event;
import com.pearler.myjavaapp.exception.EventNotFoundException;
import com.pearler.myjavaapp.repository.EventRepository;

@RestController
@RequestMapping("/api")
public class EventRestController {
	private final Logger logger = LoggerFactory.getLogger(EventRestController.class);
	@Autowired
	private EventRepository eventRepository;
	
	@GetMapping("/events")
	public List<Event> getAllEvents() {
		return eventRepository.findAll();
	}
	
	@GetMapping("/events/{id}")
	public Event getEvent(@PathVariable Integer id) {
		Optional<Event> event = eventRepository.findById(id);
		event.orElseThrow(() -> new EventNotFoundException(id));
		
		return event.get();
	}
}
