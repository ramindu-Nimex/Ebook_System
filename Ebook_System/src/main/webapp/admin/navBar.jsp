<div class="container-flued" style="height: 10px; background-color: #303f9f;"></div>

<div class="container-flued p-3 bg-light">
	<div class="row">
		<div class="col-md-3 text-success">
			<h3><i class="fa-solid fa-book"></i> EBooks</h3>
		</div>
		<div class="col-md-6">
			<form class="form-inline my-2 my-lg-0">
				<input class="form-control mr-sm-2" type="search"
					placeholder="Search" aria-label="Search">
				<button class="btn btn-primary my-2 my-sm-0" type="submit">Search</button>
			</form>
		</div>
		<div class="col-md-3">
			<a href="../login.jsp" class="btn btn-success">Login</a> <a href="register.jsp"
				class="btn btn-primary text-white">Register</a>
		</div>
	</div>
</div>

<!-- <c:if test="${not empty userobj } ">
				<a href="login.jsp" class="btn btn-success"><i
					class="fas fa-sign-in-alt"></i>${userobj.name} </a>
			</c:if>
			
			<c:if test="${empty userobj } ">
					
				<a href="../login.jsp" class="btn btn-success"><i class="fas fa-sign-in-alt"></i> Login</a> 
				<a href="register.jsp" class="btn btn-primary text-white"><i class="fas fa-user-plus"></i> Register</a>
			</c:if>   --> 



<!-- logout model -->

<!-- Button trigger modal -->
 <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#staticBackdrop">
  Launch static backdrop modal
</button> -->

<!-- Modal -->
<div class="modal fade" id="staticBackdrop" data-backdrop="static" data-keyboard="false" tabindex="-1" aria-labelledby="staticBackdropLabel" aria-hidden="true">
  <div class="modal-dialog">
    <div class="modal-content">
      <div class="modal-header">
        <h5 class="modal-title" id="staticBackdropLabel">Modal title</h5>
        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
          <span aria-hidden="true">&times;</span>
        </button>
      </div>
      <div class="modal-body">
        <h4>Do you want LOG out</h4>
        <button type="button" class="btn btn-secondary" data-dismiss="modal">Close</button>
        <a type="button" class="btn btn-primary">Log Out</a>
      </div>
      <div class="modal-footer">
        
      </div>
    </div>
  </div>
</div>

<!-- end logout model -->
<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
	<a class="navbar-brand" href="#"><i class="fa-solid fa-house"></i></a>
	<button class="navbar-toggler" type="button" data-toggle="collapse"
		data-target="#navbarSupportedContent"
		aria-controls="navbarSupportedContent" aria-expanded="false"
		aria-label="Toggle navigation">
		<span class="navbar-toggler-icon"></span>
	</button>

	<div class="collapse navbar-collapse" id="navbarSupportedContent">
		<ul class="navbar-nav mr-auto">
			<li class="nav-item active"><a class="nav-link" href="home.jsp">Home
					<span class="sr-only">(current)</span>
			</a></li></ul>

		</form>
	</div>
</nav>