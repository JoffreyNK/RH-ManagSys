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
            <h1>Liste des Diplomes </h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Accueil</a></li>
              <li class="breadcrumb-item active">Diplome</li>
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
	     <a href="#" class="btn btn-block btn-primary" data-toggle="modal" data-target="#modal-default">
          <i class="fab fa-add mr-2"></i> Nouvau Diplome
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
                    <th>Salaire de Base</th>
                    <th>Diplome</th>
                    <th>Indice</th>
                    <th>Valeur</th>
                    <th>Categorie</th>
                    <th>Actions</th>
                  </tr>
                  </thead>
                  <tbody>
                  <c:forEach items="${Dips}" var="dip">
                  <tr>
                    
                    <td>
                    	<c:out value="${dip.salaire}" />
                    </td>
                    
                     <td>
                    	<c:out value="${dip.titrediplome}" />
                    </td>
                    
                    <td>
                    	<c:out value="${dip.indice}" />
                    </td> 
                    
                    <td>
                    	<c:out value="${dip.valeurpoint}" />
                    </td> 
                    
                    <td>
                    	<c:out value="${dip.categorieid}" />
                    </td>  
                   
                    <td class="project-actions text-right">
                    	<a class="btn btn-primary btn-sm" href="#">
                              <i class="fas fa-eye">
                              </i>
                          </a>
                          <a class="btn btn-info btn-sm" href="DiplomeServ?operation=modifier_dip&IdDip=<c:out value="${dip.id}"/>">
                              <i class="fas fa-pencil-alt">
                              </i>
                          </a>
                          <a class="btn btn-danger btn-sm" href="DiplomeServ?operation=suppr_dip&IdDip=<c:out value="${dip.id}"/>">
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

  <div class="modal fade" id="modal-default">
        <div class="modal-dialog modal-lg">
          <div class="modal-content">
            <div class="modal-header">
              <h4 class="modal-title">Ajouter un Diplome</h4>
              <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <form method="POST" action="DiplomeServ">
                  <div class="card-body">
                    <div class="row">
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Salaire *</label>
                            <input type="text" name="Salaire" class="form-control">
                        </div>
                      </div>
                      
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Titre *</label>
                            <input type="text" name="Titre" class="form-control">
                        </div>
                      </div>
                      
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Indice *</label>
                            <input type="text" name="Indice" class="form-control">
                        </div>
                      </div>
                     
                     <div class="col-md-6">
                        <div class="form-group">
                          <label>Valeur *</label>
                            <input type="text" name="Valeur" class="form-control">
                        </div>
                      </div>
                      
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Categorie *</label>
                          <select name="Categorie" class="form-control select2" style="width: 100%;">
                           <c:forEach items="${Cats}" var="cat">
                              <option value="${cat.id}"><c:out value="${cat.categorie}" /> / <c:out value="${cat.titre}" /></option>
                            </c:forEach>
                            
                          </select>
                       
                        </div>
                      </div>

                      <div class="col-md-6">
                        <div class="card-footer">
                          <button type="submit" name="operation" value="enregistrer" class="btn btn-success swalDefaultSuccess"><i class="fas fa-save"></i> Enregistrer</button>
                          <button type="reset" name="operation" value="annuler" class="btn btn-danger swalDefaultError"><i class="fas fa-undo"></i> Annuler</button>
                        </div>
                      </div>

                    </div>
                  </div>

              </form>
            </div>
            <div class="modal-footer justify-content-between">
              <button type="button" class="btn btn-default" data-dismiss="modal">Close</button>
            </div>
          </div>
          <!-- /.modal-content -->
        </div>
        <!-- /.modal-dialog -->
      </div>
      <%@ include file="footer.jsp" %>
      
      
      