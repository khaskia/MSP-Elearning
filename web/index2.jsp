<%@include file="header.jsp" %>
<%

%>

<div id="carousel-example-generic" class="carousel slide first-carousel" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
  </ol>

 <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
      <img src="images/slider2%20copy.jpg" class="img-responsive" height="300" width="100%" alt="First">
    
      <div class="carousel-caption Hamed">
          <h3>The Faculty of Informatics and Computer Science</h3>
           <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.</p>
      </div>
    </div>
    <div class="item">
      <img src="images/slider2%20copy.jpg" class="img-responsive" alt="Second">
    
      <div class="carousel-caption Hamed">
           <h3>The Faculty of Informatics and Computer Science</h3>
           <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.</p>
      </div>
    </div>
    
        <div class="item">
      <img src="images/slider2%20copy.jpg" class="img-responsive" alt="Second">
    
      <div class="carousel-caption Hamed">
           <h3>The Faculty of Informatics and Computer Science</h3>
           <p>Neque porro quisquam est qui dolorem ipsum quia dolor sit amet, consectetur, adipisci velit.</p>
      </div>
    </div>
    
    

  </div>

  <!-- Controls -->
  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
</div>


 <!-- ///////////////////// The Section //////////////////////// -->
 
 <section class="container-fluid">
     <div class="row">
       <div class="col-md-3">
         <aside >
             <% if(currenctuser == null){ %>
            <div class="log-in text-center">
               <h3>LOG IN</h3>
             <form class="form-group log-in" action="login" method="post">
               <input class="form-control" type="text" placeholder="User Name" name="email" required >
               <input class="form-control" type="password" placeholder="User Password" name="pass"  required >
               <input class="form-control" type="submit"  value="LOGIN">

             </form>
           </div>
           <%}else {%>
           
           <h1>Welcome <%= currenctuser.getFname()+" "+currenctuser.getLname()  %></h1>
           
           
           <%}%>
           <hr>
           
           
       <!--  
       <div class="galary text-center">
             <h3>MSP Galary</h3>
             
             
             <div class="galary-img">
               
                

                
                  <img src="images/3Kids.jpg" tabindex="1" class="thumbnail img-responsive"  width="70" height="70" alt="galary1" />
                

                 <img src="images/3Kids.jpg" tabindex="1" class="thumbnail img-responsive"  width="70" height="70" alt="galary1" />
               
                 <img src="images/3Kids.jpg" tabindex="1" class="thumbnail img-responsive"  width="70" height="70" alt="galary1" />
                

                 <img src="images/3Kids.jpg" tabindex="1" class="thumbnail img-responsive"  width="70" height="70" alt="galary1" />
                            
                  <img src="images/3Kids.jpg" tabindex="1" class="thumbnail img-responsive"  width="70" height="70" alt="galary1" />
                

                 <img src="images/3Kids.jpg" tabindex="1" class="thumbnail img-responsive"  width="70" height="70" alt="galary1" />
               
                 <img src="images/3Kids.jpg" tabindex="1" class="thumbnail img-responsive"  width="70" height="70" alt="galary1" />
                

                 <img src="images/3Kids.jpg" tabindex="1" class="thumbnail img-responsive"  width="70" height="70" alt="galary1" />
               
              </div>

             
           </div>-->

         
         </aside>
       </div>
       
     
        <div class="col-md-9">
          <div class="content">  

             <div class="col-md-4">

                <blockquote>
                  <img src="images/ARABY.jpg" alt="President OF MSP" class="img-responsive" width="100" height="100"> 
                  <p>The Faculty of Informatics and Computer Science is
                    an effective and modern faculty offering a diverse range of...
                  </p>
                  <a href="" >READ MORE</a>
                </blockquote>

             </div>

             <div class="col-md-4">


                <blockquote>
                  <img src="images/ARABY.jpg" alt="President OF MSP" class="img-responsive" width="100" height="100"> 
                  <p>The Faculty of Informatics and Computer Science is
                    an effective and modern faculty offering a diverse range of...
                  </p>
                  <a href="" >READ MORE</a>
                </blockquote>
              </div>


             <div class="col-md-4">

                <blockquote>
                  <img src="images/ARABY.jpg" alt="President OF MSP" class="img-responsive" width="100" height="100"> 

                  <p>The Faculty of Informatics and Computer Science is
                    an effective and modern faculty offering a diverse range of...
                    </p>
                  <a href="" >READ MORE</a>
                </blockquote>

             </div>
              
              
                           <div class="col-md-4">

                <blockquote>
                  <img src="images/ARABY.jpg" alt="President OF MSP" class="img-responsive" width="100" height="100"> 

                  <p>The Faculty of Informatics and Computer Science is
                    an effective and modern faculty offering a diverse range of...
                    </p>
                  <a href="" >READ MORE</a>
                </blockquote>

             </div>             <div class="col-md-4">

                <blockquote>
                  <img src="images/ARABY.jpg" alt="President OF MSP" class="img-responsive" width="100" height="100"> 

                  <p>The Faculty of Informatics and Computer Science is
                    an effective and modern faculty offering a diverse range of...
                    </p>
                  <a href="" >READ MORE</a>
                </blockquote>

             </div>             <div class="col-md-4">

                <blockquote>
                  <img src="images/ARABY.jpg" alt="President OF MSP" class="img-responsive" width="100" height="100"> 

                  <p>The Faculty of Informatics and Computer Science is
                    an effective and modern faculty offering a diverse range of...
                    </p>
                  <a href="" >READ MORE</a>
                </blockquote>

             </div>

           <div class="clear"></div>






         </div>

       </div>  
    
      </div><!-- End of Row -->
      
    </section>
 
 <!-- ///////////////////// End The Section //////////////////////// -->
 




    <!-- ******************** NEWS ******************* -->
    <section class="container-fluid text-center NEWS">
      <div class="row">
        
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="news">
            <div class="thumbnail">
                <img class="img-responsive" src="images/new1.jpg" alt="news">
                <div class="caption">
                  <h3>Discuss Ph.D.</h3>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                  <a href="#" class="btn btn-primary" role="button">MORE ..</a>
                </div>
            </div>
          
          
          </div>

        </div>
        <%
            String passs = request.getContextPath();
            String img ="//images//ARABY.jpg";
        %>
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="news">
            <div class="thumbnail">
             <!--    <img class="img-responsive" src="<%=pass+img%>" alt="news"> -->
                <img class="img-responsive" src="images/new1.jpg" alt="news">
                <div class="caption">
                  <h3>MSP SESSION</h3>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                  <a href="#" class="btn btn-primary" role="button">MORE ..</a>
                </div>
            </div>
          
          
          </div>

        </div>
        
        
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="news">
            <div class="thumbnail">
                <img class="img-responsive" src="images/new1.jpg" alt="news">
                <div class="caption">
                  <h3>Ph.D. CELEPRATE</h3>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                  <a href="#" class="btn btn-primary" role="button">MORE ..</a>
                </div>
            </div>
          
          
          </div>

        </div>
        
        <div class="col-md-3 col-sm-6 col-xs-12">
          <div class="news">
            <div class="thumbnail">
                <img class="img-responsive" src="images/new2.jpg" alt="news">
                <div class="caption">
                  <h3>MSP SESSION</h3>
                  <p>Cras justo odio, dapibus ac facilisis in, egestas eget quam. Donec id elit non mi porta gravida at eget metus. Nullam id dolor id nibh ultricies vehicula ut id elit.</p>
                  <a href="#" class="btn btn-primary" role="button">MORE ..</a>
                </div>
            </div>
          
          
          </div>

        </div>       
      </div>
    </section>
    <!-- ******************** END NEWS ******************* -->
<!--////////// Start of coute Slider //////////// -->
    <section class="qoute">
     <div class="inner">
       <div class="container">
         <div class="row">
          <div class="col-xs-12 col-md-8">
             <div id="Diaa" class="carousel slide" data-ride="carousel">
                  <!-- Indicators -->
                  <ol class="carousel-indicators qoute-indicator">
                    <li data-target="#Diaa" data-slide-to="0" class="active"></li>
                    <li data-target="#Diaa" data-slide-to="1"></li>
                    <li data-target="#Diaa" data-slide-to="2"></li>
                    <li data-target="#Diaa" data-slide-to="3"></li>
                    <li data-target="#Diaa" data-slide-to="4"></li>
                    <li data-target="#Diaa" data-slide-to="5"></li>
                    <li data-target="#Diaa" data-slide-to="6"></li>
                    <li data-target="#Diaa" data-slide-to="7"></li>
                  </ol>

                  <!-- Wrapper for slides -->
                  <div class="carousel-inner" role="listbox">
                    <div class="item active">
                      <p class="test">
                        <i class="fa fa-quote-left fa-2x"></i>
                          It is with a great pleasure that I thank the MSP in Egypt� �� for inviting me to contribute to their prestigious thinking and knowing better the international relations.
                        
                       
                      </p>
                      <div class="auther-info">
                        <img src="images/ARABY.jpg" class="img-responsive" alt="auther" />
                        <span>DR.Araby Keshk </span>
                        <span class="span2">, DEAN OF MSP
                        </span>
                        </div>

                    </div>
                    
                    <div class="item">
                      <p class="test">
                        <i class="fa fa-quote-left fa-2x"></i>
                          It is with a great pleasure that I thank the MSP in Egypt’ for inviting me to contribute to their prestigious thinking and knowing better the international relations.
                        
                       
                      </p>
                      <div class="auther-info">
                        <img src="images/ARABY.jpg" class="img-responsive" alt="auther" />
                        <span>DR.Araby Keshk </span>
                        <span class="span2">, DEAN OF MSP
                        </span>
                        </div>

                    </div>
                    
                    <div class="item">
                      <p class="test">
                        <i class="fa fa-quote-left fa-2x"></i>
                          It is with a great pleasure that I thank the MSP in Egypt’ for inviting me to contribute to their prestigious thinking and knowing better the international relations.
                        
                       
                      </p>
                      <div class="auther-info">
                        <img src="images/ARABY.jpg" class="img-responsive" alt="auther" />
                        <span>DR.Araby Keshk </span>
                        <span class="span2">, DEAN OF MSP
                        </span>
                        </div>

                    </div>
                    
                    <div class="item">
                      <p class="test">
                        <i class="fa fa-quote-left fa-2x"></i>
                          It is with a great pleasure that I thank the MSP in Egypt’ for inviting me to contribute to their prestigious thinking and knowing better the international relations.
                        
                       
                      </p>
                      <div class="auther-info">
                        <img src="images/ARABY.jpg" class="img-responsive" alt="auther" />
                        <span>DR.Araby Keshk </span>
                        <span class="span2">, DEAN OF MSP
                        </span>
                        </div>

                    </div>
    
                    <div class="item">
                      <p class="test">
                        <i class="fa fa-quote-left fa-2x"></i>
                          It is with a great pleasure that I thank the MSP in Egypt’ for inviting me to contribute to their prestigious thinking and knowing better the international relations.
                        
                       
                      </p>
                      <div class="auther-info">
                        <img src="images/ARABY.jpg" class="img-responsive" alt="auther" />
                        <span>DR.Araby Keshk </span>
                        <span class="span2">, DEAN OF MSP
                        </span>
                        </div>

                    </div>
                    
                    <div class="item">
                      <p class="test">
                        <i class="fa fa-quote-left fa-2x"></i>
                          It is with a great pleasure that I thank the MSP in Egypt’ for inviting me to contribute to their prestigious thinking and knowing better the international relations.
                        
                       
                      </p>
                      <div class="auther-info">
                        <img src="images/ARABY.jpg" class="img-responsive" alt="auther" />
                        <span>DR.Araby Keshk </span>
                        <span class="span2">, DEAN OF MSP
                        </span>
                        </div>

                    </div>
                    
                    <div class="item">
                      <p class="test">
                        <i class="fa fa-quote-left fa-2x"></i>
                          It is with a great pleasure that I thank the MSP in Egypt’ for inviting me to contribute to their prestigious thinking and knowing better the international relations.
                        
                       
                      </p>
                      <div class="auther-info">
                        <img src="images/ARABY.jpg" class="img-responsive" alt="auther" />
                        <span>DR.Araby Keshk </span>
                        <span class="span2">, DEAN OF MSP
                        </span>
                        </div>

                    </div>
                    
                    <div class="item">
                      <p class="test">
                        <i class="fa fa-quote-left fa-2x"></i>
                          It is with a great pleasure that I thank the MSP in Egypt’ for inviting me to contribute to their prestigious thinking and knowing better the international relations.
                        
                       
                      </p>
                      <div class="auther-info">
                        <img src="images/ARABY.jpg" class="img-responsive" alt="auther" />
                        <span>DR.Araby Keshk </span>
                        <span class="span2">, DEAN OF MSP
                        </span>
                        </div>

                    </div> 
                    
          
                  </div>
                  
                </div>
          </div>
         </div>
       
       </div>
     </div>
    </section>
<!--////////// End of coute Slider //////////// -->

    

    <!-- ******************** End Carsoul*************** -->
    
    <div class="clear" ></div>
    
    
    <!-- ***************************  Content ***************** -->
    
    <div class="clear"></div>
    
    
    

  
    <!-- ******************** End Content ******************** -->
    
    
<%@include file="footer.jsp" %>