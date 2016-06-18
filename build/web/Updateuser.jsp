<%@include file="header.jsp" %>
<%@include file="adminnav.jsp" %> 

<%@page import="java.sql.*" %>
<script>
 document.title = "MSP - Update User";
</script>
 
<%
    ResultSet updateuser = (ResultSet) request.getAttribute("updateuser");
   
%>
<section class="staff-register text-center">


    <div class="staff">
        <div class="container">
            <h1>Edit User</h1>
            <div class="row">
                <div class="col-sm-6 col-xs-12 col-sm-offset-3">

                    <form class="form-group" method="post" action="updateuser" >
                        <input class="form-control" value="<%=updateuser.getInt(1)%>" name="ID" type="text" required placeholder="Write Your First Name">
                        <input class="form-control" value="<%=updateuser.getString(2)%>" name="fname" type="text" required placeholder="Write Your Last Name">
                        <input class="form-control" value="<%=updateuser.getString(3)%>" name="lname" type="text" required placeholder="Write Your Last Name">
                        <input class="form-control" value="<%=updateuser.getString(4)%>" name="email" type="email" required placeholder="Write Your Email">
                        <input class="form-control" value="<%=updateuser.getString(5)%>" name="password" type="password" required placeholder="Write Your pass">


                        
                        <%
                            String year = updateuser.getString(6);
                            String dept = updateuser.getString(7);
                        //    out.print(year);
                        //    out.print(dept);
                        %>
                        
                        <select id="year" name="year"   class="form-control year-list" >
                            <option class="ff" <% if(year.equals("1")){%> <%="selected"%><%}%>  value="1">First Year</option>
                            <option class="ff" <% if(year.equals("2")){%> <%="selected"%><%}%> value="2">Second Year</option>
                            <option class="ff" <%if(year.equals("3")){%> <%="selected"%><%}%> value="3">Third Year</option>
                            <option class="ff" <%if(year.equals("4")){%> <%="selected"%><%}%> value="4">Fourth Year</option>
                        </select>  

                        <select id="dept"  name="dept" class="form-control year-list" >
                            <option class="ff" <% if(dept.equals("no")){%> <%="selected"%><%}%> value="no">General</option>
                            <option class="ff" <% if(dept.equals("cs")){%> <%="selected"%><%}%>  value="cs">CS</option>
                            <option class="ff" <% if(dept.equals("IS")){%> <%="selected"%><%}%>  value="is">IS</option>
                            <option class="ff" <% if(dept.equals("IT")){%> <%="selected"%><%}%>  value="it">IT</option>
                            <option class="ff" <% if(dept.equals("OR")){%> <%="selected"%><%}%>  value="or">OR</option>
                        </select>  
                        <input type="submit" class="form-control" value="Update" >
                        <input type="reset" class="form-control" value="reset" >



                    </form>  

                </div>

            </div>

        </div>

    </div>


</section>



<%@include file="footer.jsp" %>
