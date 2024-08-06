 <%@page import="db.Movie"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DatabaseService"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.dbcon"%>
<%
    dbcon d = new dbcon();
    Connection con=d.connect();
      DatabaseService dbser=new DatabaseService(con);
    

    %>
