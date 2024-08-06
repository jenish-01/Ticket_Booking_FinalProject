<%@page import="db.Movie"%>
<%@page import="java.util.ArrayList"%>
<%@page import="db.DatabaseService"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.dbcon"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Movies</title>
<style>

    body{
        background-color:  buttonface;
    }

.recommended{
    display: flex;
    justify-content: space-evenly;
    cursor: pointer;
    flex-wrap: wrap;
    margin-top: 20px;
    
    
  
  
    
    
    
}
.recommended1{
    display: flex;
    justify-content: space-evenly;
    cursor: pointer;
    margin-top: 20px;
    flex-wrap: wrap;
  
    
    
    
}


.Upcoming{
    display: flex;
    justify-content: space-evenly;
    cursor: pointer;
    margin-top: 20px;
    

}

.Upcoming1{
    display: flex;
    justify-content: space-evenly;
    cursor: pointer;
    margin-top: 20px;
    
    
}
h3,p{
    text-align: center;
}

img{
  border-color: black;
  border-width: 3px;
  border-style:solid;
  border-radius: 10px;
    
}

</style>

</head>
<body>
    <%@include file="dbcon.jsp" %>   
    <h2 align="center">Book My Movies ?</h2>
    <br>
    <h2>Recommended Movies</h2>
    <br>
    <%  ArrayList<Movie> gg=dbser.selectRecentMovie();%>
        <div class="box">
            <div class="recommended">
                <% for(int i=0;i<gg.size();i++){%>
                <a href="example.jsp?id=<%=gg.get(i).getMovieId()%>">

                <div class="box1">
                <img src="<%=gg.get(i).getMovieurl()%>" width="200px" height="300px">
                <h3><%=gg.get(i).getMoviename()%></h3>
                 <p>Action/Drama</p>
           
            </div>
                             </a>

                <%}%>
            

        </div>
            
           
        <h2>Upcoming Movies</h2>
        <%  ArrayList<Movie> g1=dbser.selectUpcomingMovie();%>

        <div class="Upcoming">
             <% for(int i=0;i<g1.size();i++){%>
                <a href="example.jsp?id=<%=g1.get(i).getMovieId()%>">

                <div class="box1">
                <img src="<%=g1.get(i).getMovieurl()%>" width="200px" height="300px">
                <h3><%=g1.get(i).getMoviename()%></h3>
                 <p>Action/Drama</p>
           
            </div>
                             </a>

                <%}%>
</div>
        
        
       
        </div>    


        
</body>
</html>