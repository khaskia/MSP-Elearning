<%@include file="header.jsp" %>

<% if (session.getAttribute("epage") != null) {%>
<div style="height: 500px" class="alert alert-danger">
                <strong>Error! </strong> <%= session.getAttribute("epage")%>.
            </div>
            <%}%>
<%@include file="footer.jsp" %>