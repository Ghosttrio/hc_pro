package controller;


import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import service.MovieService;


@Controller
public class MainController {
	
	@Autowired
	private MovieService movieService;
	
	@RequestMapping(value="/main.do", method=RequestMethod.GET)
	public String main(Model model, HttpSession session) {
//		��ȭ ���
		System.out.println("������ ���");
//		�α��� ������ ������ ���� ����
		model.addAttribute("memberList", session.getAttribute("id"));
		List movieList = movieService.movieList();
		
		model.addAttribute("movieList",movieList);
		

		return "main/main";
	}
	
	
}
