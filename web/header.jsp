<%@page import="model.*"%>
<%@page import="libs.*"%>
<%
request.getSession(true);
UserModel currenctuser = (UserModel) session.getAttribute("user");
StaffMoled currnetstaff = (StaffMoled)session.getAttribute("staff");
String pass =(String) request.getContextPath();

%>

<!DOCTYPE html>
<html lang = "en">
  <head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title><%out.print(shared.title); %></title>
    
    <script src="ckeditor/ckeditor.js"></script>
     
    <link rel="stylesheet" href="css/font-awesome.min.css"> <!-- Font awesome css file -->
    <link rel="stylesheet" href="css/bootstrap.min.css"> <!-- Bootstrap css file -->
    <link rel="stylesheet" href="css/style.css"> <!-- my style css file -->
    <link rel="stylesheet" href="css/animate.css">
    <link rel="stylesheet" href="css/pages.css">
    
<link rel="shortcut icon" type="image/ico" href="favicon.ico" />
    
    

    <!-- google Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Droid+Sans:400,700' rel='stylesheet' type='text/css'>
    <link href='https://fonts.googleapis.com/css?family=Raleway' rel='stylesheet' type='text/css'>
    
    
    
   <!--For html5 tags -->
    <!--[if lt IE 9]-->
        <script src="js/html5shiv.min.js"></script>
    <![endif]-->
  </head>
  
  
  <body>
    
    <!-- ******************** Nav*************** -->
    
    <nav class="navbar navbar-default">
  <div class="container-fluid">
    
    <!-- Brand and toggle get grouped for better mobile display -->
    
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#first-nav" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a href="home" target="_self"><img src="images/Logo.png" class="img-responsive" width="300" height="200" style="margin-right:10px"></a>
      
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="first-nav">
    
  
            
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ABOUT <span class="caret"></span></a>
          <ul class="dropdown-menu">
              <li><a href="aboutfci.jsp" >About</a></li>    
              <li><a href="departments.jsp">Departments</a></li>

            
          </ul>
        </li>
        
        

        

      </ul>
      
          
            
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">COUNCILS <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="faculty-council-site.html">Faculity Council Site</a></li>
            <li><a href="CouncilOFstudent-Affair.html">	Student Affairs Council website</a></li>
            <li><a href="community-council.html">Community Service Council and Environmental Affairs</a></li>
            <li role="separator" class="divider" ></li>
            <li><a href="electronic-services.html">Site and electronic services unit</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="Collage-Services.html">Services college site</a></li>
            <li><a href="student-council.html">Student Council </a></li>
          </ul>
        </li>
      </ul>
      
                
									
            
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">ADMINSTRATION <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="Dean.jsp">DEAN</a></li>
            <li><a href="Vicedean-ofstudentAffairs.jsp">Vice dean of student affairs</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="departmen-head.jsp">department heads</a></li>
          </ul>
        </li>
      </ul>
      
            
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">STAFF <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="staffLogin.jsp">Staff Admin Area</a></li>
            <%if(currnetstaff !=null){ %>
            <li><a href="logout">Staff Logout</a></li>
            <%}%>
            <li><a href="#">Staff Search</a></li>
            <li><a href="staff-register.html">Staff Registeration</a></li>
            <li><a href="#">Staff CV</a></li>
          </ul>
        </li>
      </ul>
      
      
      
     
      <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">STUDENT <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li class="Diaa"><a href="#">Postgraduate<span class="caret"></span>
             <ul>
               <li><a href="">Graduate Exam Schedule</a></li>
               <li><a href="">Graduate Exam Result</a></li>
               <li><a href="">Awarded Degree</a></li>
               <li><a href="">Postgraduate Affairs</a></li>
               
             </ul>  
            </a>
             
            </li>
            <li role="separator" class="divider"></li>
            <li class="Diaa"><a href="#">Undergraduate <span class="caret"></span>
              <ul>
                <li><a href="">Student Site</a></li>
                
              </ul>
               
              </a>

            </li>
            
          </ul>
        </li>
      </ul>
      
      
        <ul class="nav navbar-nav">
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">RESEARCH <span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="#">Reseach Direction</a></li>
            <li><a href="#">List Of M.sc</a></li>
            <li><a href="#">List Of Ph.D</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Journal</a></li>
            <li role="separator" class="divider"></li>
            <li><a href="#">Research Ethics</a></li>
            <li><a href="#">Research Ethics</a></li>
            <li><a href="#">Intellectual Property Right Guide</a></li>
             <li><a href="#">Library</a></li>
          </ul>
        </li>
      </ul>
      
      <ul class="nav navbar-nav">
          <li><a href="allnews.jsp">NEWS</a></li>
      </ul>

                  
       <ul class="nav navbar-nav">
        <li><a href="Elearning">E-LEARN PORTAL</a></li>
       </ul>
        <% if(currenctuser != null){ %>
       <ul class="nav navbar-nav">
        <li><a href="logout">Logout</a></li>
       </ul>
       <%}%>
      
      
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid -->
</nav>
    
    <!-- ********************End Nav*************** -->