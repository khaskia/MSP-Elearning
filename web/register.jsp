<%@include file="header.jsp" %>

<script>
 document.title = "MSP - Register";
 </script>
<%
    if(currenctuser !=null ){
        response.sendRedirect("Elearning");
    }
%>
<section class="staff-register text-center">


    <div class="staff">
        <div class="container">
            <h1>REGISTER FORM</h1>

            <% if (request.getAttribute("error") != null) {%>
            <div class="alert alert-danger">
                <strong>Error!</strong> <%= request.getAttribute("error")%>.
            </div>
            <%}%>
            
            <% if (session.getAttribute("user") !=null ){ %>
            <div class="alert alert-success">
                <strong>Success!</strong> Thanks for Registration you can access the <a href="Elearning">  E-learning portal</a> now.
            </div>
            <%}%>


            <div class="row">
                <div class="col-sm-6 col-xs-12 col-sm-offset-3">

                    <form class="form-group" method="post" action="register" >
                        <input class="form-control" name="fname" type="text" required placeholder="Write Your First Name">
                        <input class="form-control" name="lname" type="text" required placeholder="Write Your Last Name">
                        <input class="form-control" name="email" type="email" required placeholder="Write Your Email">
                        <input class="form-control" name="password" type="password" required placeholder="Write Your pass">
                        <input class="form-control" name="cpassword" type="password" required placeholder="Write Your pass">

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

    </div>


</section>



<%@include file="footer.jsp" %>
