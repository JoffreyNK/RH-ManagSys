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
            <h1>Ajouter un employé</h1>
          </div>
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Accueil</a></li>
              <li class="breadcrumb-item active">Employé</li>
            </ol>
          </div>
        </div>
      </div>

    <!-- Main content -->
    <section class="content">
     <div class="container-fluid">
      <form method="POST" action="EmployeSrv" class="form-horizontal" role="form">
        <div class="row">
          <!-- left column -->
          <div class="col-md-12">
            <!-- general form elements -->
            <div class="card card-primary">
              <div class="card-header">
                <h3 class="card-title">Informations personnelles</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
            
              <div class="row">
               <div class="col-sm-6">
                <div class="card-body">
                  <div class="form-group">
                    <label>Prénom *</label>
                    <input type="text" name="Prenom" class="form-control" placeholder="Saisir un prenom">
                  </div>
                  <div class="form-group">
                    <label>Nom *</label>
                    <input type="text" name="Nom" class="form-control" placeholder="Saisir un nom">
                  </div>
                  <div class="form-group">
                    <label>Email *</label>
                    <input type="email" name="Email" class="form-control" placeholder="Saisir un email">
                  </div>
                  <div class="form-group">
	                  <label>Sexe</label>
	                  <select name="Sexe" class="form-control select2" style="width: 100%;">
	                    <option selected="selected">---</option>
	                    <option value="Homme">Masculin</option>
	                    <option value="Femme">Feminin</option>
	                  </select>
                	</div>
                  <div class="form-group">
                    <label>NNI</label>
                    <input type="text" name="NNI" class="form-control" placeholder="Saisir le Numero National d'Identite">
                  </div>
                  <div class="form-group">
                    <label>NSS</label>
                    <input type="text" name="NSS" class="form-control" placeholder="Saisir le Numero de Securite Sociale">
                  </div>
                  <div class="form-group">
	                  <label>Statut matrimoniel</label>
	                  <select name="EtatCicil" class="form-control select2" style="width: 100%;">
	                    <option selected="selected">---</option>
	                    <option>Célibataire</option>
	                    <option>Marié</option>
	                    <option>Divorcé</option>
	                    <option>Veuf(ve)</option>
	                  </select>
                	</div>
                	<div class="form-group">
                    <label>Enfants</label>
                    <input type="text" name="Enfants" class="form-control" placeholder="Saisir le nombre d'enfant">
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
              <div class="col-sm-6">
                <div class="card-body">
                  <div class="form-group">
                    <label>Mot de passe</label>
                    <input type="text" name="Motdepasse" readonly="readonly" class="form-control" value="employe123">
                  </div>
                  <div class="form-group">
                    <label>Téléphone</label>
                    <input type="number" name="Telephone" class="form-control" placeholder="Saisir le numero de telephone ">
                  </div>
                  <div class="form-group">
                    <label>Mobile</label>
                    <input type="number" name="Mobile" class="form-control" placeholder="Saisir le mobile ">
                  </div>
                  <div class="form-group">
                    <label>Adresse</label>
                    <input type="text" name="Adresse" class="form-control" placeholder="Saisir l'adresse de l'employe ">
                  </div>
                  <div class="form-group">
                    <label>Ville</label>
                    <input type="text" name="Ville" class="form-control" placeholder="Saisir le nom de la ville de l'employe ">
                  </div>
                  <div class="form-group">
	                  <label>Pays</label>
	                  <select name="Pays" class="form-control select2" style="width: 100%;">
	                    <option selected="selected">Burundi</option>
	                    <option>RD Congo</option>
	                    <option>Rwanda</option>
	                    <option>Kenya</option>
	                    <option>Udanda</option>
	                    <option>Tanzanie</option>
	                    <option>Malawi</option>
	                  </select>
                	</div>
                  <div class="form-group">
                    <label>Date de naissance</label>
                    <input name="dateNaissance" type="date" class="form-control">
                  </div>
                  <div class="form-group">
                    <label for="customFile">Photo</label>

                    <div class="custom-file">
                      <input type="file" name="Photo" class="custom-file-input" id="customFile">
                      <label class="custom-file-label" for="customFile">Choisir fichier</label>
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
             </div>
            </div>
            <!-- /.card -->

            <!-- Form Element sizes -->
            <div class="card card-success">
              <div class="card-header">
                <h3 class="card-title">Poste</h3>
              </div>
                            <div class="row">
              <div class="col-sm-6">
                <div class="card-body">
                  <div class="form-group">
	                  <label>Departement *</label>
	                  <select class="form-control select2" style="width: 100%;">
	                    <option selected="selected">---</option>
	                    <option>RD Congo</option>
	                    <option>California</option>
	                    <option>Delaware</option>
	                    <option>Tennessee</option>
	                    <option>Texas</option>
	                    <option>Washington</option>
	                  </select>
                	</div>
                  <div class="form-group">
	                  <label>Fonction *</label>
	                  <select class="form-control select2" style="width: 100%;">
	                    <option selected="selected">---</option>
	                    <option>RD Congo</option>
	                    <option>California</option>
	                    <option>Delaware</option>
	                    <option>Tennessee</option>
	                    <option>Texas</option>
	                    <option>Washington</option>
	                  </select>
                	</div>
                	<div class="form-group">
	                  <label>Type de contrat *</label>
	                  <select class="form-control select2" style="width: 100%;">
	                    <option selected="selected">---</option>
	                    <option>RD Congo</option>
	                    <option>California</option>
	                    <option>Delaware</option>
	                    <option>Tennessee</option>
	                    <option>Texas</option>
	                    <option>Washington</option>
	                  </select>
                	</div>
                  <div class="form-group">
                    <label>Date d'entrée</label>
                    <input type="date" class="form-control">
                  </div>
                  <div class="form-group">
                    <label>Date de sortie</label>
                    <input type="date" class="form-control">
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
              <div class="col-sm-6">
                <div class="card-body">
                  <div class="form-group">
                    <label>Salaire de base *</label>
                    <input type="number" class="form-control" placeholder="Salaire de base">
                  </div>
                  <div class="form-group">
                    <label>Cout heure sup</label>
                    <input type="text" class="form-control" placeholder="Saisir le mobile ">
                  </div>
                  <div class="form-group">
	                  <label>Superviseur *</label>
	                  <select class="form-control select2" style="width: 100%;">
	                    <option selected="selected">---</option>
	                    <option>KABONDO Jeremie</option>
	                    <option>KILINDO Vainqueur</option>
	                    <option>Delaware</option>
	                    <option>Tennessee</option>
	                    <option>Texas</option>
	                    <option>Washington</option>
	                  </select>
                	</div>
                  <div class="form-group">
                    <label>Matricule *</label>
                    <input type="text" name="Matricule" class="form-control" placeholder="Matricule de l'employe ">
                  </div>
                  <div class="form-group">
                    <label>Congé consommés</label>
                    <input type="text" class="form-control" placeholder="Conge consommes ">
                  </div>
                </div>
                <!-- /.card-body -->
              </div>
             </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->

            <div class="card card-danger">
              <div class="card-header">
                <h3 class="card-title">Banque</h3>
              </div>
              <div class="card-body">
                <div class="row">
                  <div class="col-6">
                  <label>Nom *</label>
                    <input type="text" name="bqNom" class="form-control" placeholder="Nom de la banque">
                  </div>
                  <div class="col-6">
                  <label>Numero *</label>
                    <input type="text" name="bqNumero" class="form-control" placeholder="Numero de compte">
                  </div>
                  <div class="col-6">
                  <label>Adresse</label>
                    <input type="text" name="bqAdresse" class="form-control" placeholder="Adresse de la banque">
                  </div>
                  <div class="col-6">
                  <label>Ville</label>
                    <input type="text" name="bqVille" class="form-control" placeholder="Ville de la banque">
                  </div>
                 </div>
                </div>
                </div>
              </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
            <!-- /.card -->
            <!-- Horizontal Form -->
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Contact d'urgence</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
                <div class="card-body">
                  <div class="form-group row">
                    <label for="inputEmail3" class="col-sm-2 col-form-label">Nom *</label>
                    <div class="col-sm-10">
                      <input type="text" name="pcNom" class="form-control" id="inputEmail3" placeholder="Nom contact d'urgence">
                    </div>
                  </div>
                  <div class="form-group row">
                    <label for="inputPassword3" class="col-sm-2 col-form-label">Téléphone *</label>
                    <div class="col-sm-10">
                      <input type="number" name="pcTelephone" class="form-control" id="inputPassword3" placeholder="Téléphone contact d'urgence">
                    </div>
                  </div>
                </div>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="submit" name="operation" value="enregistrer" class="btn btn-info">Enregistrer</button>
                  <button type="submit" name="operation" value="annuler" class="btn btn-default float-right">Annuler</button>
                </div>
                <!-- /.card-footer -->
            </div>
            <!-- /.card -->
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