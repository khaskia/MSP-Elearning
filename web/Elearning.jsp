
<%@page import="org.apache.jasper.tagplugins.jstl.core.Catch"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="libs.shared"%>
<%@include file="header.jsp" %>   
 <script>
 document.title = "MSP - E-Learning Portal";
 </script>
<%
   
    
    ResultSet deptname = (ResultSet) session.getAttribute("deptname");
    ResultSet Firsttermmaterials = (ResultSet) session.getAttribute("Firsttermmaterials");
    ResultSet Secondtermmaterials = (ResultSet) session.getAttribute("Secondtermmaterials");
    //posts
    ResultSet posts = (ResultSet)session.getAttribute("posts");
    
    
   
    if (currenctuser != null || currnetstaff !=null) {
        if(Firsttermmaterials == null || Secondtermmaterials == null && currnetstaff!=null) {
        response.sendRedirect("staffLogin.jsp");
        }else if(Firsttermmaterials == null || Secondtermmaterials == null ) {
        response.sendRedirect("Elearning");
        }
    }
    
    else if (currenctuser == null) {
                request.getRequestDispatcher("login").forward(request, response);

        if (currnetstaff == null){   
            request.getRequestDispatcher("staffLogin.jsp").forward(request, response);
        }else{
        }
    } 
   
%>

          <% if (request.getAttribute("error") != null) {%>
            <div class="alert alert-danger">
                <strong>Error!</strong> <%= request.getAttribute("error")%>.
            </div>
            <%}%>
           <% if (request.getAttribute("errorC") != null) {%>
            <div class="alert alert-danger">
                <strong>Error!</strong> <%= request.getAttribute("error")%>.
            </div>
            <%}%>
            
            <% if (request.getAttribute("done") !=null ){ %>
            <div class="alert alert-success">
                <strong>Success!</strong>  Your Post added successfully.
            </div>
            <%}%>
            <% if (request.getAttribute("doneC") !=null ){ %>
            <div class="alert alert-success">
                <strong>Success!</strong>  Your Comment added successfully.
            </div>
            <%}%>
            
            
             <script> 
                        // var mm = document.getElementById("textareaID").value;
                     function comment(id){
                            ur ="addpost";
                            window.location.href="<%=request.getContextPath()%>/"+ur+"?postID="+id+"&txt="+document.getElementById("commenthide").value;

                        }
                    </script>  


<div class="container-fluid">

    <div class="row">

        <div class="profile text-center">




            <h1>WELCOME  <%if (currenctuser != null) {
                    out.print(currenctuser.getFname() + " " + currenctuser.getLname());
                }  %>
            </h1>
            <%if (currnetstaff == null){%>
            <h1>your department is <%
                try {
                    out.print(deptname.getString("deptName"));
                } catch (Exception ex) {
                    out.print(ex.getMessage() + "  Exeption");
                }
                %>
            </h1>
<%}%>




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

<div class="col-xs-12 col-md-4" style="
    width: 100%;
    height: auto;
    margin-left:0 auto;
    overflow: visible ;
">
           
    <div class="post" >
        <!-- Add New Post -->
               <div class="top-post">
                   <form action="addpost" method="post">
                 <textarea class="ckeditor" id="editor2" name="postcontent" placeholder="write your post"></textarea> 
                 <input class="form-control"  name="post" value="POST" type="submit">
                 </form>
                </div>
        
        
         <input type="hidden" name="commenthide" />
         <input type="hidden" name="postids" />
         
         
         
               <% while(posts.next()){ %>
               <div class="bottom-post" style="height:auto">
                 <div class="first-post" style="height:auto">
                     <label style="font-size: 20px;"> <%=posts.getString("student") %> </label> <h6 style="margin-top: 2px;"><%=posts.getString("postDate") %></h6>
                     <div class="form-control" style="height: 130px;overflow-y: scroll;"  readonly name="post_preview" ><%=posts.getString("postContent") %>
                     </div>
                   <!--  <h3>ths post id is <%=posts.getInt("postID") %></h3> -->
                 </div>
                <% try{
                    ResultSet comment = PostsModel.getcomments(posts.getInt("postID"));
                    request.setAttribute("comment", comment);
                    ResultSet comments = (ResultSet)request.getAttribute("comment");
                %>
                 
                 <div class="comment">
                     <%while(comments.next()){  %>
                     <label><%=comments.getString("student") %> </label><h6 style="margin-top: 2px;"><%=comments.getString("commentDate") %></h6> 
                     <textarea class="form-control" readonly name="post_preview" ><%=comments.getString("commentContent") %>
                     </textarea>
                     <%}
                     }catch (Exception ex){
                    out.print(ex.getMessage() );
                    }%>  
                     <br>
                    <label style="align-items: center"> Add Comment .. </label>
                    
                    <form action="addpost">
                    
                    <textarea class="form-control" id="ms" name="content" ></textarea> 
                     <input type="hidden"  class="form-control" name="contentID" value="<%=posts.getInt("postID") %>">
                   <!-- <input class="form-control" onclick="comment(<%=posts.getInt("postID") %>)" name="post" value="Add" type="submit"> -->
                    <input class="form-control" onclick="this.form.commenthide.value = content.value; this.form.postids.value = contentID.value; " name="post" value="Add" type="submit">
                    </form>
                    </div> 
                    
                      
                    

                   <br>
                   <br>
                   </div>
                  <%}%>
                 
              <!--   
                 <div class="bottom-post">
                 <div class="first-post">
                     <label> Diaa ibrahiem </label>
                  <input type="text" class="form-control" readonly name="post_preview">
                 </div>

                 
                 <div class="comment">
                     <label> Diaa ibrahiem </label>
                   <input type="text" class="form-control">
                   
                     <label> Diaa ibrahiem </label>
                   <input type="text" class="form-control">
                   
                     <label> Diaa ibrahiem </label>
                   <input type="text" class="form-control">
                   
                     <label> Diaa ibrahiem </label>
                   <input type="text" class="form-control">
                   
                 
                   
                   
                 </div>
                 

               </div>
                 
                <div class="bottom-post">
                 <div class="first-post">
                     <label> Diaa ibrahiem </label>
                  <input type="text" class="form-control" readonly name="post_preview">
                 </div>

                 
                 <div class="comment">
                     <label> Diaa ibrahiem </label>
                   <input type="text" class="form-control">
                   
                     <label> Diaa ibrahiem </label>
                   <input type="text" class="form-control">
                   
                     <label> Diaa ibrahiem </label>
                   <input type="text" class="form-control">
                   
                     <label> Diaa ibrahiem </label>
                   <input type="text" class="form-control">
                   
                 
                   
                   
                 </div>
                 

               </div>
                 
-->
               

               
               

             </div>
             
            </div>
                  
                        
</div>














<%@include file="footer.jsp" %>