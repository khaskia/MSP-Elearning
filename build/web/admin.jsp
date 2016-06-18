<%@page import="java.sql.ResultSet"%>
<%@page import="libs.shared"%>
<%@include file="header.jsp" %> 
<%@include file="adminnav.jsp" %> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<script>
 document.title = "MSP - Admin Panel";
 </script>
 
<%
    if(currnetstaff != null){
        
    }else{
        response.sendRedirect("staffLogin.jsp");
    }
%>





<section class="staff-register text-center">
    <div class="staff">
        <div class="container">

            <% if (request.getAttribute("Grouperror") != null) {%>
            <div class="alert alert-danger">
                <strong>Error!</strong> <%= request.getAttribute("Grouperror")%>.
            </div>
            <%}%>
            
                <div class="col-sm-6 col-xs-12 col-sm-offset-3">
            <h1>View Group</h1>

                    <form class="form-group" method="post" action="Elearning" >
                     
                        <select name="year" class="form-control year-list">
                            <option class="ff" value="1">First Year</option>
                            <option class="ff" value="2">Second Year</option>
                            <option class="ff" value="3">Third Year</option>
                            <option class="ff" value="4">Fourth Year</option>
                        </select>  

                        <select name="dept" class="form-control year-list">
                            <option class="ff" value="no">General</option>
                            <option class="ff"  value="cs">CS</option>
                            <option class="ff" value="is">IS</option>
                            <option class="ff" value="it">IT</option>
                            <option class="ff" value="or">OR</option>
                        </select>  
                        <input type="submit" class="form-control" value="Done" >



                        </form>  

                </div>

            

        </div>

    </div>


</section>



<%@include file="footer.jsp" %>