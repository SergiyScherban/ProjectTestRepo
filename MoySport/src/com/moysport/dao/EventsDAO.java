package com.moysport.dao;

import java.util.List;

import com.moysport.model.Events;

public interface EventsDAO {

	public void addEvents(Events events);
	public List<Events> listEvents();
	public void removeEvents(Integer id);

}