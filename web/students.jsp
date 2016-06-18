<%@include file="header.jsp" %>
<%@include file="adminnav.jsp" %>
<%@page import="java.sql.*"%>

<script>
 document.title = "MSP - Students";
 </script>
<%
    ResultSet alluser = (ResultSet)request.getAttribute("allusers");
%>

<script>
    function editrecord(id){
        ur ="viewstudents";
        window.location.href="<%=request.getContextPath()%>/"+ur+"?UserID="+id;

    }
    function deleterecord(id){
        ur ="viewstudents";
        window.location.href="<%=request.getContextPath()%>/"+ur+"?delete="+id;

    }
</script>

            <% if (request.getAttribute("Done") != null) {%>
            <div class="alert alert-success">
                <strong>Success!</strong> <%= request.getAttribute("Done")%>.
            </div>
            <%}%>

   <table class="table">
       <tr class="success">
           <td>StudentID</td>
           <td>FirstName</td>
           <td>LastName</td>
           <td>Email</td>
           <td>Password</td>
           <td>YearID</td>
           <td>DeptID</td>
           <td>Edit</td>
           <td>Delete</td>
       </tr>
       <% while(alluser.next()){ %>
       <tr class="info">
           <td> <%=alluser.getInt(1) %></td>
           <td> <%=alluser.getString(2) %> </td>
           <td> <%=alluser.getString(3) %> </td>
           <td> <%=alluser.getString(4) %> </td>
           <td> <%=alluser.getString(5) %> </td>
           <td> <%=alluser.getString(6) %> </td>
           <td> <%=alluser.getString(7) %> </td>
           <td><input type="submit" value="Edit" name="edit" class="btn btn-info"  onclick="editrecord(<%=alluser.getString(1)%>);"/></td>
           <td><input type="submit" value="delete" class="btn btn-danger" name="delete"  onclick="deleterecord(<%=alluser.getString(1)%>);"/></td>
           
       </tr>
       <%}%>
   </table>

<%@include file="footer.jsp" %>
