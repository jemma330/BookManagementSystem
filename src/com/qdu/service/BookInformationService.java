package com.qdu.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.qdu.bean.Book;
import com.qdu.dao.BookInformationMapper;

@Service
public class BookInformationService {

	@Autowired
	private BookInformationMapper bookInformationMapper;

	public List<Book> searchBookByName(Book book) {
		return bookInformationMapper.searchBookByName(book);
	}
	
}
