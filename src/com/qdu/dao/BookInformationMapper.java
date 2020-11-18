package com.qdu.dao;

import java.util.List;

import com.qdu.bean.Book;

public interface BookInformationMapper {

	List<Book> searchBookByName(Book book);

}
