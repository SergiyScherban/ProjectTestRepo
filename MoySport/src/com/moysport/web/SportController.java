package com.moysport.web;

import java.util.Map;

import com.moysport.model.Sport;
import com.moysport.service.SportService;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
//import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class SportController {

	@Autowired
	private SportService sportService;

	@RequestMapping("/table_pages/sport")
	public String listContacts(Map<String, Object> map) {
		map.put("sport", new Sport());
		map.put("sportList", sportService.listSport());
		return "table_pages/sport";
	}

	@RequestMapping(value = "/table_pages/sport/add", method = RequestMethod.POST)
	public String addContact(@ModelAttribute("sport") Sport sport, BindingResult result) {
		sportService.addSport(sport);
		return "redirect:/table_pages/sport";
	}

	/*@RequestMapping("/sport/delete/{sportId}/deleteSport.html")
	public String deleteContact(@PathVariable("sportId") Integer sportId) {
		sportService.removeSport(sportId);
		return "redirect:/sport";
	}*/
	
	@RequestMapping(value = "/table_pages/sport/delete", method = RequestMethod.POST)
	public String deleteSport(@RequestParam("sportId") Integer sportId) {
		sportService.removeSport(sportId);
		return "redirect:/table_pages/sport";
	}

}
