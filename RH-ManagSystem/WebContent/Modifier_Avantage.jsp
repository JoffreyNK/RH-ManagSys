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
            <h1>Modifier un Avantage</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Accueil</a></li>
              <li class="breadcrumb-item active">Avantage</li>
            </ol>
          </div>
        </div>
      </div>

    <!-- Main content -->
    <section class="content">
     <div class="container-fluid">
              <form method="POST" action="AvantageServ">
                  <div class="card-body">
                    <div class="row">
                    
                    <div class="col-md-6" style="display:none">
                        <div class="form-group">
                          <label>id *</label>
                            <input type="text" name="Idav" class="form-control" value="<c:out value="${Avant.id}"/>">
                        </div>
                      </div>
                      
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Libellé *</label>
                            <input type="text" name="Libelle" class="form-control" value="<c:out value="${Avant.libelle}"/>">
                        </div>
                      </div>
                      
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Critere *</label>
                          <select name="Critere" class="form-control select2" style="width: 100%;">
                              <option value="<c:out value="${Avant.critere}"/>">
                              <c:out value="${Avant.critere}"></c:out>
                              </option>
                              <option value="1">Tous les Employés</option>
                              <option value="2">Groupe Employés</option>
                              <option value="3">Un a Un</option>
                            
                            
                          </select>
                       
                        </div>
                      </div>
                     

                      <div class="col-md-6">
                        <div class="card-footer">
                          <button type="submit" name="operation" value="update" class="btn btn-success swalDefaultSuccess"><i class="fas fa-save"></i> Modifier</button>
                          <button type="reset" name="operation" value="annuler" class="btn btn-danger swalDefaultError"><i class="fas fa-undo"></i> Annuler</button>
                        </div>
                      </div>

                    </div>
                  </div>

              </form>
          </div>
          <!--/.col (left) -->
   
          <!--/.col (right) -->
        </div>
        <!-- /.row -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>

<!-- FIN CONTAINEUR -->



<!--header end-->
      <%@ include file="footer.jsp" %>