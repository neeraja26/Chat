<style>
  .modal-header, h4, .close {
      background-color: #5cb85c;
      color:white !important;
      text-align: center;
      font-size: 20px;
  }
  </style>
<!-- <div class="container"  >
	Trigger the modal with a button
	Modal
	<div class="modal fade" id="login" role="dialog">
		<div class="modal-dialog modal-sm">

			Modal content
			<div class="modal-content">
				<div class="modal-header" style="padding: 15px 35px;">
					<h4>Login</h4>
				</div>
				<div class="modal-body" style="padding: 35px 35px;">
					<form action="perform_login" method="post">
						<div class="form-group form-group-sm">

							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-user"></i>
								</div>
								<input type="text" class="form-control"
									placeholder="Enter Username" id="username" name="username">
							</div>
							<br>
							<div class="input-group">
								<div class="input-group-addon">
									<i class="glyphicon glyphicon-eye-open"></i>
								</div>
								<input type="password" class="form-control"
									placeholder="Enter Password" id="password" name="password" >
							</div>
							<br>
						</div>
						<button type="submit" class="btn btn-success  btn-block">
							<span class="glyphicon glyphicon-off"></span> Log In
						</button>
					</form>
				</div>
			</div>
		</div>
	</div>
</div> -->
<div class="container">
	<div class="row">
    	<div class="col-md-4 col-md-offset-4">
            <div class="panel panel-info" style="margin-top:50px;">
                <div class="panel-heading"><h4 class="text-center">LOGIN</h4></div>
                <div class="panel-body">
                    <form>
                        <div class="form-group">
                            <label for="user">UserName</label>
                            <input type="text" class="form-control"
									placeholder="Enter Username" id="username" name="username">
							</div>
                        
                        <div class="form-group">
                            <label for="pass">Password</label>
                           <input type="password" class="form-control"
									placeholder="Enter Password" id="password" name="password" >
							</div>
                        
                        <button type="submit" class="btn btn-success btn-block">login</button>
                    </form>
                </div>
            </div>
            
        </div>
	</div>
</div>

<script>
	$(document).ready(function() {
		$("#log").click(function() {
			$("#login").modal();
			});
		});
</script>
