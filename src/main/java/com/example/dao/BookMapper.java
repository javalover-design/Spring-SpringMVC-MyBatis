package com.example.dao;

import com.example.pojo.Books;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * The interface Books mapper.
 *
 * @author lambda
 */
public interface BookMapper {
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
    int deleteBookById(@Param("bookID") int id);

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
    Books queryBookById(@Param("bookID") int id);

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
    Books queryBookByBookName(@Param("bookName") String bookName);


}
