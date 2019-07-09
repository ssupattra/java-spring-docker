package com.pearler.myjavaapp.repository;

import java.util.ArrayList;
import java.util.List;

import org.springframework.data.repository.CrudRepository;

import com.pearler.myjavaapp.entity.Event;

public interface EventRepository extends CrudRepository<Event, Integer> {
	ArrayList<Event> findAll();
}
