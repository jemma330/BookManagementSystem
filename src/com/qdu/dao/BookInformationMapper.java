package com.qdu.dao;

import java.util.List;

import com.qdu.bean.Book;
import com.qdu.bean.RentInformation;

public interface BookInformationMapper {

	List<Book> searchBookByName(String bookname);

	List<Book> searchBookById(String bookid);

	void submitRentInformation(RentInformation rent);

	List<RentInformation> checkRentInformationOnly(RentInformation rent);

}
