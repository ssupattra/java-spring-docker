package com.pearler.myjavaapp.controller;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pearler.myjavaapp.entity.Address;
import com.pearler.myjavaapp.entity.Event;
import com.pearler.myjavaapp.repository.EventRepository;
import com.pearler.myjavaapp.wrapper.EventListWrapper;

@Controller
public class EventController {
	private final Logger logger = LoggerFactory.getLogger(EventController.class);
	
	@Autowired
	private EventRepository eventRepository;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String index(Model model) {
		logger.info("index()");
		return "redirect:/getEvents";
	}
	
	@RequestMapping(value = "/createEvent", method = RequestMethod.GET)
	public ModelAndView showForm() {
        return new ModelAndView("event_form", "eventForm", new Event());
    }
	
	@GetMapping(path="/getEvents")
	public ModelAndView getEvents() {
		// return to index.jsp
		ModelAndView model = new ModelAndView("index");
		EventListWrapper wrapper = new EventListWrapper();
	    wrapper.setEvents(getAllEvents());
		model.addObject("EventListWrapper", wrapper);
		model.addObject("page_file", "list");
		return model;
		
	}
	
	public ArrayList<Event> getAllEvents() {
		return new ArrayList<Event>( eventRepository.findAll());
	}
	
	// save or update event
	// @ModelAttribute bind form value
	@RequestMapping(value = "/saveEventForm", method = RequestMethod.POST)
	public String saveOrUpdateEvent(@ModelAttribute("eventForm") @Validated Event event,
			BindingResult result, Model model, 
			final RedirectAttributes redirectAttributes) {

		logger.info("saveOrUpdateEvent() : {}", event);

		if (result.hasErrors()) {
			return "event_form";
		} else {
			if (event.getId() == null){
			  redirectAttributes.addFlashAttribute("msg", "Event added successfully!");
			} else {
			  redirectAttributes.addFlashAttribute("msg", "Event updated successfully!");
			}
			eventRepository.save(event);
			logger.info("event: " + event.toString());
			
			return "redirect:/getEvents";
		}
	}
	
//	@RequestMapping(value = "/saveEvent", method = RequestMethod.POST)
//	public ModelAndView saveEvent(
//	  @RequestParam("title") String title, @RequestParam("body") String body,
//	  @RequestParam("street") String street, @RequestParam("city") String city,
//	  @RequestParam("state") String state, @RequestParam("zipcode") String zipcode) {
//		Address addr = new Address(street, city, state, zipcode);
//		Event event = new Event(title, body, addr);
//		event = eventRepository.save(event);
//	    return getEvents();
//	}
	
	@RequestMapping(value = "/getEvent/{id}", method = RequestMethod.GET)
	public String showUpdateEventForm(@PathVariable("id") int id, Model model) {
		Event event = eventRepository.findById(id).get();
		model.addAttribute("eventForm", event);
		logger.info("showUpdateUserForm() : {} {}", id, event.toString());
		return "event_form";

	}
	
	
}
