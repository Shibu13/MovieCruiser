package com.cognizant.MOVIECRUISE.controller;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;
import java.util.Optional;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;
import org.springframework.web.servlet.view.RedirectView;

import com.cognizant.MOVIECRUISE.model.MovieItem;
import com.cognizant.MOVIECRUISE.repository.MovieRepository;
import com.cognizant.MOVIECRUISE.utility.ReportUtil;

@Controller
public class MainController {
	@Autowired
	ServletContext context;
	@Autowired
	ReportUtil reportUtil;
	@Autowired
	MovieRepository movieRepository;

	@RequestMapping("/")
	
	public String home() {
		return "home";
	}

	@RequestMapping("/movie-item-admin")
	public ModelAndView movieAdmin() {
		ModelAndView mv = new ModelAndView("movie-item-admin");
		List<MovieItem> mList = movieRepository.findAll();
		mv.addObject("mList", mList);

		return mv;
	}

	@RequestMapping("/movie-edit-item")
	public String EditMovieItemListAdmin(ModelMap model, @RequestParam Long id) {
		System.out.println("hello " + id);
		List<MovieItem> movieItem = (List<MovieItem>) movieRepository.findAll();
		MovieItem men = new MovieItem();
		for (MovieItem m : movieItem) {
			if (m.getId() == id) {
				men.setId(id);
				men.setPrice(m.getPrice());
				men.setActive(m.isActive());
				men.setDateOfLaunch(m.getDateOfLaunch());
				men.setImage(m.getImage());
				men.setCategory(m.getCategory());
				men.setName(m.getName());
			}
		}
		model.put("movie", men);

		return "movie-edit-item";

	}

	@RequestMapping("/edit-movie-status")
	public String updaeStatus(ModelMap map, @RequestParam Long id, @RequestParam String name,
			@RequestParam String price, @RequestParam String active, @RequestParam String dateOfLaunch,
			@RequestParam String category, @RequestParam String image) throws ParseException {
		System.out.println(
				id + " " + name + " " + price + " " + active + " " + dateOfLaunch + " " + category + " " + image);

		MovieItem m = new MovieItem();
		m.setId(id);
		m.setName(name);

		m.setPrice(price);
		m.setActive(active);
		Date date1 = new SimpleDateFormat("dd-MM-yyyy").parse(dateOfLaunch);
		m.setDateOfLaunch(date1);
		m.setCategory(category);
		m.setImage(image);

		movieRepository.save(m);
		System.out.println("here" + m);

		return "edit-movie-status";
	}

	@RequestMapping(value="/movie-item-customer",method=RequestMethod.GET)
	public ModelAndView movieCustomer(Model model) {
		ModelAndView mv = new ModelAndView("movie-item-customer");
		List<MovieItem> mList = movieRepository.findAll();
		mv.addObject("fav", "Movie");
		
		mv.addObject("mList", mList);
		
		return mv;
	}
	
	
	@RequestMapping("/movie-item-favourite")
	public ModelAndView FavouriteMovieItemListAdmin(ModelMap model, @RequestParam Long id,@RequestParam String val) {
		Optional<MovieItem> mitem=movieRepository.findById(id);
		if (mitem.isPresent()){
		    MovieItem mitem2=mitem.get();
		    mitem2.setFavourite(val);
		   movieRepository.save(mitem2);
		}
		else{
		  
		}
				
		
        return new ModelAndView("redirect:/movie-item-customer", model);

	}

	@RequestMapping(value="/movie-list-favourite")
	public ModelAndView ListFavouriteMovieItem() {
		System.out.println("here");
		ModelAndView mv=new ModelAndView("movie-item-customer");
		List<MovieItem> mList = movieRepository.findByFavourite();
		for(MovieItem m:mList) {
			System.out.println(m.getName()+" "+m.getFavourite());
		}		
		mv.addObject("mList",mList);
		mv.addObject("fav","Favourites");
        return mv;

	}
	@RequestMapping(value="/search-all")
	public ModelAndView SearchMovieItem(@ModelAttribute(value = "mList") MovieItem[] mList) {
		System.out.println("here 3");
		ModelAndView mv=new ModelAndView("movie-item-customer");
		List<MovieItem> mList1 = movieRepository.findByFavourite();
		for(MovieItem m:mList) {
			System.out.println(m.getName()+" "+m.getFavourite());
		}		
		mv.addObject("mList",mList);
		mv.addObject("fav","Favourites");
        return mv;

	}
	
	@RequestMapping("/generate-report")
	public String generateReport() {
		
		String path = context.getRealPath("/");
		List<Object[]> data = movieRepository.findGenreAndGenreCount();
		reportUtil.generatePieChart(path, data);
		return "chartReport";
	}

	
	
}
