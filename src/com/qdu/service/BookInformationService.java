package com.qdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qdu.bean.Book;
import com.qdu.bean.RentInformation;
import com.qdu.dao.BookInformationMapper;

@Service
public class BookInformationService {

	@Autowired
	private BookInformationMapper bookInformationMapper;

	public List<Book> searchBookByName(String bookname) {
		return bookInformationMapper.searchBookByName(bookname);
	}

	public List<Book> searchBookById(String bookid) {
		return bookInformationMapper.searchBookById(bookid);
	}

	public void submitRentInformation(RentInformation rent) {
		bookInformationMapper.submitRentInformation(rent);
	}

	public List<RentInformation> checkRentInformationOnly(RentInformation rent) {
		return bookInformationMapper.checkRentInformationOnly(rent);
	}

	public List<String> allcategory() {
		return bookInformationMapper.allcategory();
	}

	public List<Book> searchBookByCategory(String categoryname) {
		return bookInformationMapper.searchBookByCategory(categoryname);
	}
	
}
