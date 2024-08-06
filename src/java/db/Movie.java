/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Jenish
 */
public class Movie {
 private String MovieId;
 private String Moviename;
private String Movieurl;
private String Moviedate;
private String Movietime;
private String price;

    public String getMovieId() {
        return MovieId;
    }

    public void setMovieId(String MovieId) {
        this.MovieId = MovieId;
    }

    public String getMoviename() {
        return Moviename;
    }

    public void setMoviename(String Moviename) {
        this.Moviename = Moviename;
    }

    public String getMovieurl() {
        return Movieurl;
    }

    public void setMovieurl(String Movieurl) {
        this.Movieurl = Movieurl;
    }

    public String getMoviedate() {
        return Moviedate;
    }

    public void setMoviedate(String Moviedate) {
        this.Moviedate = Moviedate;
    }

    public String getMovietime() {
        return Movietime;
    }

    public void setMovietime(String Movietime) {
        this.Movietime = Movietime;
    }

    public String getPrice() {
        return price;
    }

    public void setPrice(String price) {
        this.price = price;
    }
}
