package com.moysport.dao;

import java.util.ArrayList;
import java.util.List;

import com.moysport.model.EventGame;
import com.moysport.model.Event;
import com.moysport.model.Gameparties;
import com.moysport.model.Location;

public interface EventDAO {

	public void updateEvent (Event event);
	public void addEvents(Event event);
	public List<Event> listEvents();
	public List<Event> viewEvent(int idevent);
	public List<EventGame> eventGame(int idevent);
	public List<Gameparties> gameparties(int idevent);
	public List<Event> searchEvents(ArrayList<String> params);
	public void removeEvents(Integer id);

	public Event getEventId(int idevent);


}
