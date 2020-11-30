<!--header end-->
      <%@ include file="header.jsp" %>
<!--header end-->


<!--header end-->
      <%@ include file="menu.jsp" %>
<!--header end



<!-- DEBIT CONTAINEUR -->

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <section class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1>Lister les employés</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Accueil</a></li>
              <li class="breadcrumb-item active">Employé</li>
            </ol>
          </div>
        </div>
      </div><!-- /.container-fluid -->
    </section>

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
      <hr>
      <div class="card-header">
	    <div class="float-right" class="col-2">
	     <a href="/Test/nouvelEmploye.jsp" class="btn btn-block btn-primary">
          <i class="fab fa-add mr-2"></i> Nouvel employé
        </a>
	   </div>
	   <div class="float-right" class="col-2">
	     <a href="#" class="btn btn-block btn-default">
          <i class="fab fa-add mr-2"></i> Supprimés
        </a>
	   </div>
	   <div class="float-right" class="col-2">
	     <a href="#" class="btn btn-block btn-default">
          <i class="fab fa-add mr-2"></i> Suspendus
        </a>
	   </div>
      </div>
        <div class="row">
          <div class="col-12">
            <!-- /.card -->

            <div class="card">
              
              <!-- /.card-header -->
              <div class="card-body">
                <table id="example1" class="table table-bordered table-striped">
                  <thead>
                  <tr>
                    <th>Prénom / Nom</th>
                    <th>Fonction</th>
                    <th>Date d'embauche</th>
                    <th>Portable</th>
                    <th>Statut</th>
                    <th>Actions</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${emps}" var="emp">
                  <tr>
                    <td>
                    	<c:out value="${emp.prenom}" /> <c:out value="${emp.nom}" />
                    </td>
                    <td>
                    	<c:out value="${emp.adresse}" />
                    </td>
                    <td>
                    	<c:out value="${emp.dateNaissance}" />
                    </td>
                    <td>
                    	<c:out value="${emp.telephone}" />
                    </td>
                    <td>
                    	<a class="btn btn-success btn-sm" href="#">
                              actif
                          </a>
                    </td>
                    <td class="project-actions text-right">
                    	<a class="btn btn-primary btn-sm" href="#">
                              <i class="fas fa-eye">
                              </i>
                          </a>
                          <a class="btn btn-info btn-sm" href="#">
                              <i class="fas fa-pencil-alt">
                              </i>
                          </a>
                          <a class="btn btn-danger btn-sm" href="#">
                              <i class="fas fa-trash">
                              </i>
                          </a>
                    </td>
                  </tr>
                 </c:forEach>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          <!-- /.col -->
        </div>
        <!-- /.row -->
      </div>
      <!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->

<!-- FIN CONTAINEUR -->



<!--footer-->

<!-- DATA TABLE DEBUT -->


      <%@ include file="footer.jsp" %>
      
      
      