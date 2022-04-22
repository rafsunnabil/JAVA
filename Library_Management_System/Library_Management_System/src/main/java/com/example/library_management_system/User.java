package com.example.library_management_system;

import java.time.Instant;

public class User {
    public int id;
    public String userid;
    private String firstname;
    private String lastname;
    private String username;
    private String password;
    private String email;
    private String address;
    private String phoneno;
    private String bookid;
    private String bookname;
    private String author;
    private String price;
    private String quantity;
    private String available;
    private String returndate;
    private String issuedate;
    private Instant createdOn;
    private Instant updateOn;
    public User(int id, String userid, String firstname, String lastname, String username, String password, String email, String address, String phoneno, String bookid, String bookname, String author, String price, String quantity, String available, String returndate, String issuedate, Instant createdOn, Instant updateOn) {
        this.id =id;
        this.userid = userid;
        this.firstname=firstname;
        this.lastname=lastname;
        this.username = username;
        this.password = password;
        this.email = email;
        this.address=address;
        this.phoneno = phoneno;
        this.bookname = bookname;
        this.bookid = bookid;
        this.author = author;
        this.price = price;
        this.quantity = quantity;
        this.available = available;
        this.returndate = returndate;
        this.issuedate = issuedate;
        this.createdOn = createdOn;
        this.updateOn = updateOn;
    }

    public User(String userid, String bookid, String returndate) {
        this.userid = userid;
        this.bookid = bookid;
        this.returndate = returndate;
    }

    public User(String bookid, String userid, String username, String phoneno, String issuedate) {
        this.userid = userid;
        this.bookid = bookid;
        this.username = username;
        this.phoneno = phoneno;
        this.issuedate = issuedate;
    }

    public User(String bookid, String bookname, String author, String price, String quantity, String available) {
        this.bookid = bookid;
        this.bookname = bookname;
        this.author = author;
        this.price = price;
        this.quantity = quantity;
        this.available = available;
    }

    public User(int id, String firstname, String lastname, String username, String password, String email, String address) {
        this.firstname=firstname;
        this.lastname=lastname;
        this.username = username;
        this.password = password;
        this.email = email;
        this.address=address;
    }

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public String getFirstname(){return  firstname;}

    public  void setFirstname(String firstname) {this.firstname=firstname;}

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {this.lastname=lastname;}

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getAddress(){return  address;}

    public void setAddress(String address){this.address=address;}

    public String getPhoneno(){return  phoneno;}

    public void setPhoneno(String phoneno){this.phoneno=phoneno;}

    public String getBookname(){return  bookname;}

    public void setBookname(String bookname){this.bookname=bookname;}

    public String getBookid(){return  bookid;}

    public void setBookid(String bookid){this.bookid=bookid;}

    public String getAuthor(){return  author;}

    public void setAuthor(String author){this.author=author;}

    public String getPrice(){return  price;}

    public void setPrice(String price){this.price=price;}

    public String getQuantity(){return  quantity;}

    public void setQuantity(String quantity){this.quantity=quantity;}

    public String getAvailable(){return  available;}

    public void setAvailable(String available){this.available=available;}

    public String getReturndate(){return returndate;}

    public void setReturndate(String returndate){this.returndate=returndate;}

    public String getIssuedate(){return  issuedate;}

    public void setIssuedate(String issuedate){this.issuedate=issuedate;}

    public Instant getCreatedOn() {
        return createdOn;
    }

    public void setCreatedOn(Instant createdOn) {this.createdOn = createdOn;}

    public Instant getUpdateOn() {
        return updateOn;
    }

    public void setUpdateOn(Instant updateOn) {
        this.updateOn = updateOn;
    }
}
