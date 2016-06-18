<%@include file="header.jsp" %>
<%@page import="java.sql.*"%>

<%
    ResultSet details = (ResultSet) request.getAttribute("details");
    ResultSet slides = (ResultSet) request.getAttribute("slides");
    if ((currenctuser != null || currnetstaff!=null) && details != null) {
//        if(Firsttermmaterials == null) {
//        response.sendRedirect("Elearning");
//        }
    } else {
        response.sendRedirect("Elearning");
    }
    

%>    

<% String title1 = "MSP - "+details.getString("materialName"); %>
<script>
    var t = <%=title1 %>
    document.title = t;
</script>
<!--*************** start lectures information ******************* -->

<section class="container-fluid">    
    <div class="course ">
<h1 style="
    text-align: center;
">COURSE DETAILS</h1>
        <div class="row" style="margin-top: 60px;">
            <div class="col-md-4">
                
<%
    String passs = request.getContextPath();
    String img ="//images//mat//"+details.getString("materialName");
    String Link=passs+img;
%>

<img class="img-responsive" style="float:right" width="340" height="300" alt="course img" src="<%=Link%>.jpg"/>
            </div>

            <div class="col-md-8" style="margin-top: -22px">
                <h3>Course Name </h3>   <input class="form-control" value="<%if (details != null) 
                        out.print(details.getString("materialName"));
                    %>" type="text" readonly name="refrences">
                <h3>Doctor Name</h3>  <input class="form-control" value="<%if (details != null) 
                        out.print(details.getString("drname"));%>" type="text" readonly name="refrences">
                <h3>description</h3>
                <p><%if (details != null) 
                        out.print(details.getString("description"));%>
                </p>
            </div>
        </div>

        <div class="clear"></div>

        <div class="row">
            <div class="col-md-4">
                <h2></h2> 
                <h2></h2>
            </div>
            <div class="col-md-8">
                <h3> Reference</h3> 
                <input class="form-control" value="<%if (details != null)
                        out.print(details.getString("reference"));%>" type="text" readonly name="refrences">
                <h3> Slides</h3>
                <div class="table-responsive">
                    <table class="table">
                        <tr class="success">
                            <td>Slide Name</td>
                            <td>Slide Link</td>
                            <td>Slide Date</td>
                        </tr>
                        <% if (slides != null)
                             while (slides.next()) {%>
                        <tr class="info">
                            <td> <%=slides.getString("SlideName") %> </td>
                            <td> <a href="<%=slides.getString("SlideLink") %>">Slide Link</a>  </td>
                            <td>  <%=slides.getString("SlideDate") %> </td>
                        </tr>
                        <%}%>
                    </table>
                </div>

            </div>
        </div>




    </div>



</section>


<!--*************** start lectures information ******************* -->




<%@include file="footer.jsp" %>