package controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import dto.MovieDTO;
import service.MovieService;

@RestController
public class searchController {

	@Autowired
	MovieService movieService;

	@Autowired
	MovieDTO movieDTO;
	

    @GetMapping("/search.do")
    public List search() {
    	List movieList = movieService.movieList();
    	
        return movieList;
    }

}
