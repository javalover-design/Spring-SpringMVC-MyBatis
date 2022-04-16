package com.example.controller;

import com.example.pojo.Books;
import com.example.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import java.util.ArrayList;
import java.util.List;

/**
 * @author lambda
 */
@Controller
@RequestMapping("/book")
public class BookController {

    /**注入service层*/
    @Autowired
    private BookService bookService;

    /**查询全部书籍并跳转到一个页面*/
    @RequestMapping("/allBook")
    public String list(Model model){
        List<Books> books = bookService.queryAllBook();
        model.addAttribute("list",books);
        return "allBook";
    }

    @RequestMapping("/toAddBook")
    public String toAddBook(){
        return "toAddBook";
    }


    @RequestMapping("/addBook")
    public String addBook(Books books){
        System.out.println("addBook====>"+books);
        bookService.addBook(books);
        //此时需要重定向到主页
        return "redirect:/book/allBook";

    }

    @RequestMapping("/toUpdateBook")
    public String toUpdatePaper(int id,Model model){
        Books books = bookService.queryBookById(id);
        model.addAttribute("books",books);
        return "updateBook";
    }

    @RequestMapping("/updateBook")
    public String updateBook(Books books){
        System.out.println("updateBook=====>"+books);
        bookService.updateBook(books);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/deleteBook/{bookID}")
    public String deleteBook( @PathVariable("bookID") int id){
        bookService.deleteBookById(id);
        return "redirect:/book/allBook";
    }

    @RequestMapping("/queryBook")
    public String queryBook(String queryBookName,Model model){
        Books books = bookService.queryBookByBookName(queryBookName);
        List<Books> list = new ArrayList<>();
        if (books==null){
            list=bookService.queryAllBook();
            model.addAttribute("error","对不起，未查到信息！");
        }else {
            list.add(books);
        }
        model.addAttribute("list", list);
        return "allBook";

    }
}
