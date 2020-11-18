package com.qdu.controller;

import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qdu.bean.Book;
import com.qdu.service.BookInformationService;

@Controller
@RequestMapping("/bookInformation")
public class BookController {
	
	@Autowired
	private BookInformationService bookInformationService;
	
	@RequestMapping(value = "/search")
	public ModelAndView searchBookInformation(Book book) {
		ModelAndView mav = new ModelAndView("list");
		List<Book> bookList = bookInformationService.searchBookByName(book);
		mav.addObject("bookList", bookList);
		return mav;
	}
	
}
