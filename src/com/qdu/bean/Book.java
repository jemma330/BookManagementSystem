package com.qdu.bean;

public class Book {

	private int id;
	private String bookname;
	private String author;
	private String description;
	private int totalnumber;
	private int currentnumber;

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getBookname() {
		return bookname;
	}

	public void setBookname(String bookname) {
		this.bookname = bookname;
	}

	public String getAuthor() {
		return author;
	}

	public void setAuthor(String author) {
		this.author = author;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public int getTotalnumber() {
		return totalnumber;
	}

	public void setTotalnumber(int totalnumber) {
		this.totalnumber = totalnumber;
	}

	public int getCurrentnumber() {
		return currentnumber;
	}

	public void setCurrentnumber(int currentnumber) {
		this.currentnumber = currentnumber;
	}

	@Override
	public String toString() {
		return "Book [id=" + id + ", bookname=" + bookname + ", author=" + author + ", description=" + description
				+ ", totalnumber=" + totalnumber + ", currentnumber=" + currentnumber + "]";
	}

}
