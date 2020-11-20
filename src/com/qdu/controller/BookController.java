package com.qdu.controller;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.qdu.bean.Book;
import com.qdu.bean.RentInformation;
import com.qdu.service.BookInformationService;

@Controller
public class BookController {
	
	@Autowired
	private BookInformationService bookInformationService;
	
	@RequestMapping(value = "/search")
	public ModelAndView searchBookInformation(Book book, HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("list");
		List<Book> bookList = bookInformationService.searchBookByName((String)request.getParameter("bookname"));
		HttpSession session = request.getSession();
		mav.addObject("bookList", bookList);
		mav.addObject("username", session.getAttribute("username"));
		return mav;
	}
	
	@RequestMapping(value = "/rent")
	public ModelAndView rentBook(HttpServletRequest request) {
		ModelAndView mav = new ModelAndView("rent");
		HttpSession session = request.getSession();
		List<Book> book = bookInformationService.searchBookById((String)request.getParameter("bookId"));
		mav.addObject("booklist", book);
		mav.addObject("username", session.getAttribute("username"));
		return mav;
	}
	
	@RequestMapping(value = "/rentbookInformation")
	public ModelAndView submitRentbookInformation(HttpServletRequest request, RentInformation rent) {
		ModelAndView mav = new ModelAndView();
		Date rightnow = new Date();
		Date enddate = addAndSubtractDaysByGetTime(rightnow, Integer.parseInt(request.getParameter("time")));
		rent.setStartdate(rightnow);
		rent.setEnddate(enddate);
		rent.setBookid(Integer.parseInt(request.getParameter("bookid")));
		rent.setBookname(request.getParameter("bookname"));
		rent.setDay(Integer.parseInt(request.getParameter("time")));
		rent.setUsername(request.getParameter("username"));
		rent.setState(0);
		List<RentInformation> rentlist = bookInformationService.checkRentInformationOnly(rent);
		if(rentlist.size()!=0) {
			mav.setViewName("error");
			return mav;
		}
		mav.setViewName("home");
		bookInformationService.submitRentInformation(rent);
		return mav;
	}
	
	public static Date addAndSubtractDaysByGetTime(Date dateTime/*待处理的日期*/,int n/*加减天数*/){
	     SimpleDateFormat df=new SimpleDateFormat("yyyy-MM-dd");
	     System.out.println(df.format(new Date(dateTime.getTime() + n * 24 * 60 * 60 * 1000L))); 
	     return new Date(dateTime.getTime() + n * 24 * 60 * 60 * 1000L); 
	}
	
}
