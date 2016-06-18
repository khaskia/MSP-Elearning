<%@include file="header.jsp" %>

<script>
 document.title = "MSP - Staff Login";
 </script>
<%
    if(currnetstaff !=null ){
        response.sendRedirect("admin.jsp");
    }
%>
<section class="staff-register text-center">


    <div class="staff">
        <div class="container">
            <h1>Staff LOG IN</h1>
            <div class="row">
                <div class="col-sm-6 col-xs-12 col-sm-offset-3">
            <% if (request.getAttribute("Stafferror") != null) {%>
            <div class="alert alert-danger">
                <strong>Error!</strong> <%= request.getAttribute("Stafferror")%>.
            </div>
            <%}%>
                    <form class="form-group" method="post" action="admincplogin">
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

