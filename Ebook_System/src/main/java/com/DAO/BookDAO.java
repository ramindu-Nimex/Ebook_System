package com.DAO;

import java.util.List;

import com.entity.BookDetails;

public interface BookDAO {

	public boolean addBooks(BookDetails b);

	public List<BookDetails> getAllBooks();

	public BookDetails getBookById(int id);

	public boolean updateBooks(BookDetails b);

	public boolean deleteBooks(int id);

	public List<BookDetails> getNewBook();

	public List<BookDetails> getRecentBooks();

	public List<BookDetails> getOldBooks();

	public List<BookDetails> getAllNewBook();

	public List<BookDetails> getAllRecentBooks();

	public List<BookDetails> getAllOldBooks();
	
	
}
