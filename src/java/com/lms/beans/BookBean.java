/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.lms.beans;

/**
 *
 * @author abhishek.panja554
 */
public class BookBean {
    int BID;
    String Bname;
    String Author;
    int ISBN;

    public int getBID() {
        return BID;
    }

    public void setBID(int BID) {
        this.BID = BID;
    }

    public String getBname() {
        return Bname;
    }

    public void setBname(String Bname) {
        this.Bname = Bname;
    }

    public String getAuthor() {
        return Author;
    }

    public void setAuthor(String Author) {
        this.Author = Author;
    }

    public int getISBN() {
        return ISBN;
    }

    public void setISBN(int ISBN) {
        this.ISBN = ISBN;
    }
    
    
    
}
