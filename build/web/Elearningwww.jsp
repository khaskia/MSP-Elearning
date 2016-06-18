
<%@page import="java.sql.ResultSet"%>
<%@page import="libs.shared"%>
<%@include file="header.jsp" %>   

<%
    ResultSet deptname = (ResultSet) session.getAttribute("deptname");
    ResultSet Firsttermmaterials = (ResultSet) request.getAttribute("Firsttermmaterials");
    ResultSet Secondtermmaterials = (ResultSet) request.getAttribute("Secondtermmaterials");
    if (currenctuser != null || currnetstaff !=null) {
        if(Firsttermmaterials == null || Secondtermmaterials == null && currnetstaff!=null) {
        response.sendRedirect("staffLogin.jsp");
        }else if(Firsttermmaterials == null || Secondtermmaterials == null ) {
        response.sendRedirect("Elearning");
        }
    }else if (currenctuser == null) {
                request.getRequestDispatcher("login").forward(request, response);

        if (currnetstaff == null){   
            request.getRequestDispatcher("staffLogin.jsp").forward(request, response);
        }else{
        }
    }  

%>
<div class="container-fluid">

    <div class="row">

      <div class="profile text-center">

         <h1>WELCOME ..</h1>




         <div class="col-xs-12 col-md-4">
                <aside class="profile-menu">

                    <h2>FIRST SEMISTER</h2>

                    <form class="form-group" name="f" method="post" action="details">
                        <input type="hidden" name="hidBt" />
                        <% if (Firsttermmaterials != null)
                                while (Firsttermmaterials.next()) {%>
                        <input type="submit" onclick="this.form.hidBt.value = this.value;" class="form-control" value="<%= Firsttermmaterials.getString(2)%>" name="<%= Firsttermmaterials.getInt(1)%>"/><br> 
                        <%}%>
                    </form>


                </aside>

            </div>

        



        <div class="col-xs-12 col-md-offset-4 col-md-4">
                <aside class="profile-menu">  
                    <h2>SECOND SEMISTER</h2>
                    <form class="form-group" name="f" method="post" action="details">
                        <input type="hidden" name="hidBt" />
                        <% if (Secondtermmaterials != null)
                            while (Secondtermmaterials.next()) {%>
                        <input type="submit" onclick="this.form.hidBt.value = this.value;" class="form-control" value="<%= Secondtermmaterials.getString(2)%>" name="<%=Secondtermmaterials.getInt(1)%>"/><br>                                      
                        <%}%>

                    </form>
                </aside>

        </div>

      </div>

    </div>
                        
    <div class="col-xs-12 col-md-4">
             <div class="post">
               <div class="top-post">
                 <textarea class="form-control" name="write_post" placeholder="write your post"></textarea> 
                 <input class="form-control" name="post" value="POST" type="submit">
                </div>
               
               <div class="bottom-post">
                 <div class="first-post">
                  <span class="post-name">Diaa ibrahiem</span>
                  <input type="text" class="form-control" readonly name="post_preview">
                 </div>

                 
                 <div class="comment">
                  <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                  <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                   <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                   <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                 
                   
                   
                 </div>
                 
                               <div class="bottom-post">
                 <div class="first-post">
                  <span class="post-name">Diaa ibrahiem</span>
                  <input type="text" class="form-control" readonly name="post_preview">
                 </div>

                 
                 <div class="comment">
                  <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                  <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                   <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                   <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                 
                   
                   
                 </div>
                 

               </div>
                 
                               <div class="bottom-post">
                 <div class="first-post">
                  <span class="post-name">Diaa ibrahiem</span>
                  <input type="text" class="form-control" readonly name="post_preview">
                 </div>

                 
                 <div class="comment">
                  <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                  <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                   <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                   <span>Diaa ibrahiem</span>
                   <input type="text" class="form-control">
                   
                 
                   
                   
                 </div>
                 

               </div>
                 

               </div>
               

               
               

             </div>
             
            </div>                    
                        
                        


</div>
      
<%@include file="footer.jsp" %>