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
            <h1>Modifier une Categorie</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Accueil</a></li>
              <li class="breadcrumb-item active">Categorie</li>
            </ol>
          </div>
        </div>
      </div>

    <!-- Main content -->
    <section class="content">
     <div class="container-fluid">
              <form method="POST" action="DiplomeServ">
                  <div class="card-body">
                    <div class="row">
                    
                      <div class="col-md-6" style="display:none">
                        <div class="form-group">
                          <label>id *</label>
                            <input type="text" name="Id" class="form-control" value="${Dip.id}">
                        </div>
                      </div>
                      
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Salaire *</label>
                            <input type="text" name="Salaire" class="form-control" value="${Dip.salaire}">
                        </div>
                      </div>
                      
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Titre *</label>
                            <input type="text" name="Titre" class="form-control" value="${Dip.titrediplome}">
                        </div>
                      </div>
                      
                      <div class="col-md-6">
                        <div class="form-group">
                          <label>Indice *</label>
                            <input type="text" name="Indice" class="form-control" value="${Dip.indice}">
                        </div>
                      </div>
                     
                     <div class="col-md-6">
                        <div class="form-group">
                          <label>Valeur *</label>
                            <input type="text" name="Valeur" class="form-control" value="${Dip.valeurpoint}">
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