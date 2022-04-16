package com.example.service;

import com.example.pojo.Books;

import java.util.List;

/**
 * The interface Book service.
 *
 * @author lambda
 */
public interface BookService {
    /**
     * Add book int.
     *
     * @param books the books
     * @return the int
     */
    int addBook(Books books);

    /**
     * Delete book by id int.
     *
     * @param id the id
     * @return the int
     */
    int deleteBookById( int id);

    /**
     * Update book int.
     *
     * @param books the books
     * @return the int
     */
    int updateBook(Books books);

    /**
     * Query book by id books.
     *
     * @param id the id
     * @return the books
     */
    Books queryBookById( int id);

    /**
     * Query all book list.
     *
     * @return the list
     */
    List<Books> queryAllBook();

    /**
     * Query book by book name books.
     *
     * @param bookName the book name
     * @return the books
     */
    Books queryBookByBookName( String bookName);

}
