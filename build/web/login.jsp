<%@include file="header.jsp" %>
<script>
 document.title = "MSP - Login";
 </script>

<%
    if(currenctuser !=null ){
        response.sendRedirect("Elearning");
    }
%>
<section class="staff-register text-center">


    <div class="staff">
        <div class="container">
            <h1>LOG IN</h1>
            <div class="row">
                <div class="col-sm-6 col-xs-12 col-sm-offset-3">
            <% if (request.getAttribute("ee") != null) {%>
            <div class="alert alert-danger">
                <strong>Error!</strong> <%= request.getAttribute("ee")%>.
            </div>
            <%}%>
                    <form class="form-group" method="post" action="login">
                        <input class="form-control" name="email"  type="email" required placeholder="EMAIL">
                        <input class="form-control" name="pass" type="password" required placeholder="PASSWORD">                    <input type="submit" name="done" class="form-control" value="LOG IN">
                         <input type="checkbox" name="remember" value="1">Remember me<br>
                        <a href="register" >Register</a>



                    </form>  

                </div>

            </div>

        </div>

    </div>

</section>

</section>
<%@include file="footer.jsp" %>

