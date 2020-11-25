package com.qdu.dao;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.qdu.bean.Book;
import com.qdu.bean.RentInformation;

public interface BookInformationMapper {

	List<Book> searchBookByName(String bookname);

	List<Book> searchBookById(String bookid);

	void submitRentInformation(RentInformation rent);

	List<RentInformation> checkRentInformationOnly(RentInformation rent);

	List<String> allcategory();

	List<Book> searchBookByCategory(String categoryname);

	List<RentInformation> userOrderbook(String username);

	void cancelOrder(String rentid);

	List<RentInformation> userRentbook(String username);

	List<RentInformation> userOvertime(@Param("datenow")Date datenow, @Param("username")String username);

	List<RentInformation> userReturnbook(String username);

}
