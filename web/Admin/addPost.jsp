<%@include file="sidebar.jsp" %>
		
	<div class="col-sm-9 col-sm-offset-3 col-lg-10 col-lg-offset-2 main">			
		<div class="row">
			<ol class="breadcrumb">
				<li><a href="#"><svg class="glyph stroked home"><use xlink:href="#stroked-home"></use></svg></a></li>
				<li class="active">Icons</li>
			</ol>
		</div><!--/.row-->
		
		<div class="row">
			<div class="col-lg-12">
				<h1 class="page-header">Add A Post</h1>
			</div>
		</div><!--/.row-->
				
		
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">add your post form</div>
					<div class="panel-body">
						<div class="col-md-6">
							<form role="form">
								<div class="form-group">
									<label>Text area</label>
									<textarea class="form-control" rows="3"></textarea>
								</div>
							</div>
                                            
							<div class="col-md-6">
                                                            
                                                           
								
								<div class="form-group">
									<label> Year </label>
									<select class="form-control">
										<option>First Year</option>
										<option>Second Year</option>
										<option>Third Year</option>
										<option>Fourth Year</option>
									</select>
								</div>
								<div class="form-group">
									<label> Department </label>
									<select class="form-control">
										<option>General</option>
										<option>cs</option>
										<option>is</option>
										<option>it</option>
                                                                                <option>CS|IS</option>
                                                                                <option>CS|IT</option>
                                                                                <option>IT|IS</option>
                                                                                <option>CS|IS|IT</option>
									</select>
								</div>
								<button type="submit" class="btn btn-primary">Submit Button</button>
								<button type="reset" class="btn btn-default">Reset Button</button>
							</div>
						</form>
					</div>
				</div>
			</div><!-- /.col-->
		</div><!-- /.row -->
		
	</div><!--/.main-->

	<script src="js/jquery-1.11.1.min.js"></script>
	<script src="js/bootstrap.min.js"></script>
	<script src="js/chart.min.js"></script>
	<script src="js/chart-data.js"></script>
	<script src="js/easypiechart.js"></script>
	<script src="js/easypiechart-data.js"></script>
	<script src="js/bootstrap-datepicker.js"></script>
	<script>
		!function ($) {
			$(document).on("click","ul.nav li.parent > a > span.icon", function(){		  
				$(this).find('em:first').toggleClass("glyphicon-minus");	  
			}); 
			$(".sidebar span.icon").find('em:first').addClass("glyphicon-plus");
		}(window.jQuery);

		$(window).on('resize', function () {
		  if ($(window).width() > 768) $('#sidebar-collapse').collapse('show')
		})
		$(window).on('resize', function () {
		  if ($(window).width() <= 767) $('#sidebar-collapse').collapse('hide')
		})
	</script>	
</body>

</html>
