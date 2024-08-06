<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Ticket Booking System</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style/style.css"/>
        <script src="scripts/booking.js" defer></script>
    </head>
    <body>
            <%@include file="dbcon.jsp" %>   
        
            <% Movie m= dbser.selectmovie(request.getParameter("id")); %>
            <div class="tickets">
                 <div class="ticket-selector">
                        <div class="title"><%=m.getMoviename().toUpperCase() %>
                        </div>

        <div class="seats">
            <div class="status">
    
               <div class="item">Available</div>
               <div class="item">Booking</div>
               <div class="item">Selector</div>
            </div>
        </div>
                     <div class="all-seats"></div>    
            <div >
                <input type="checkbox" name="tickets" id="s1">
                <label for="s1" class="seat booked"></label>
                    
                 </div>
                     <div class="screentext">All Eyes Here Please</div>
                     <div class="timings">
                         <div class="dates">  
                             <div>
                             <input type="radio" name="date" id="d1" checked>
                             <label for="d1" class="dates-item">Sun<br>12</label>
                                 
                             </div>
                                 
                                 <div>
                                  <input type="radio" name="date" id="d2" >
                             <label for="d2" class="dates-item">Mon<br>13</label>
                                 
                                 </div>
                                 
                                 <div>
                                  <input type="radio" name="date" id="d3" >
                             <label for="d3" class="dates-item">Tue<br>14</label>
                            
                                 </div>
                                 
                                 <div>
                                  <input type="radio" name="date" id="d4">
                             <label for="d4" class="dates-item">Wed<br>15</label>
                                 
                                 </div>
                                 
                                 <div>
                                  <input type="radio" name="date" id="d5">
                             <label for="d5" class="dates-item">Thu<br>16</label>
                                 
                                 </div>
                                 
                                 <div>
                                  <input type="radio" name="date" id="d6">
                             <label for="d6" class="dates-item">Fri<br>17</label>
                                 
                                 </div>
                                 
                                 <div>
                                  <input type="radio" name="date" id="d7">
                             <label for="d7" class="dates-item">Sat<br>18</label>
                                 
                                 </div> 
                         </div>     
                             
                      
                         <div class="times">
                             <div>
                             <input type="radio" name="time" id="t1" checked>
                             <label for="t1" class="time">11:00</label>
                             </div>
                             
                             <div>
                             <input type="radio" name="time" id="t2" >
                             <label for="t2" class="time">1:30</label>
                             </div>
                             
                             <div>
                             <input type="radio" name="time" id="t3" >
                             <label for="t3" class="time">4:00</label>
                             </div>
                             
                             <div>
                             <input type="radio" name="time" id="t4" >
                             <label for="t4" class="time">6:30</label>
                             </div>
                             
                         </div>
                         </div>
                     
                         
                    </div> 
                <div class="price">
                    <div class="total">
                        <span><span class="count">0</span>Tickets</span>
                        <div>$<div class="amount"><%=m.getPrice() %></div>
                            
                        </div>
                        
                    </div>
                        <ul>
                        <a href="booking.jsp"> <button type="button">Book</button></a>
                        </ul>
                    
                </div>
              </div>   
           
        
    </body>
            
</html>
        
