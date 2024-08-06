/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

/**
 *
 * @author Jenish
 */
public class DatabaseService {
     Connection con=null;
    public DatabaseService(Connection con){
        this.con=con;
        
    }

        public ArrayList<Movie>selectAllMovie() throws SQLException{
         ArrayList<Movie>ticlist=new ArrayList();
         PreparedStatement ps=con.prepareStatement("select * from ticket");
         ResultSet rs=ps.executeQuery();
         while(rs.next()){
             Movie tic=new Movie();
             tic.setMovieId(rs.getString("movie_id"));
             tic.setMoviename(rs.getString("movie_name"));
               tic.setMovieurl(rs.getString("movie_url"));
             tic.setMoviedate(rs.getString("movie_date"));
             tic.setMovietime(rs.getString("movie_time"));
             tic.setPrice(rs.getString("price"));
             ticlist.add(tic);
}
         return ticlist;
}
          public ArrayList<Movie>selectUpcomingMovie() throws SQLException{
         ArrayList<Movie>ticlist=new ArrayList();
         PreparedStatement ps=con.prepareStatement("select * from ticket where status='upcoming'");
         ResultSet rs=ps.executeQuery();
         while(rs.next()){
             Movie tic=new Movie();
             tic.setMovieId(rs.getString("movie_id"));
             tic.setMoviename(rs.getString("movie_name"));
               tic.setMovieurl(rs.getString("movie_url"));
             tic.setMoviedate(rs.getString("movie_date"));
             tic.setMovietime(rs.getString("movie_time"));
             tic.setPrice(rs.getString("price"));
             ticlist.add(tic);
}
         return ticlist;
}
            public ArrayList<Movie>selectRecentMovie() throws SQLException{
         ArrayList<Movie>ticlist=new ArrayList();
         PreparedStatement ps=con.prepareStatement("select * from ticket where status='recent'");
         ResultSet rs=ps.executeQuery();
         while(rs.next()){
             Movie tic=new Movie();
             tic.setMovieId(rs.getString("movie_id"));
             tic.setMoviename(rs.getString("movie_name"));
               tic.setMovieurl(rs.getString("movie_url"));
             tic.setMoviedate(rs.getString("movie_date"));
             tic.setMovietime(rs.getString("movie_time"));
             tic.setPrice(rs.getString("price"));
             ticlist.add(tic);
}
         return ticlist;
}
 public Movie selectmovie(String rollno)throws SQLException{
         Movie tic=new Movie();
         PreparedStatement ps_sel=con.prepareStatement("select * from ticket where movie_id=?");
         ps_sel.setString(1, rollno);
         ResultSet rs=ps_sel.executeQuery();
         if(rs.next()){
        tic.setMovieId(rs.getString("movie_id"));
             tic.setMoviename(rs.getString("movie_name"));
               tic.setMovieurl(rs.getString("movie_url"));
             tic.setMoviedate(rs.getString("movie_date"));
             tic.setMovietime(rs.getString("movie_time"));
             tic.setPrice(rs.getString("price"));
             
     }
         return tic;
     }


}