<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="../header.jsp"></jsp:include>
<div class="row">

    <!-- Area Chart -->
    <div class="col-xl-8 col-lg-7">
        <div class="card shadow mb-4">
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Liste des Produits</h6>

            </div>
            <!-- Card Body -->
            <div class="card-body">
                <div class="container">
                    <div class="panel panel-info"></div>
                    <div class="panel-heading">Liste des Produits</div>
                    <div class="panel-body">
                        <table class="table table-bordered table-striped">
                            <tr>
                                <th>ID Produit</th>
                                <th>Nom Produit</th>
                                <th>Quantite Produit</th>
                            </tr>
                            <c:forEach items="${produits}" var="produit">
                                <tr>
                                    <td>${produit.id}</td>
                                    <td>${produit.nom}</td>
                                    <td>${produit.qtStock}</td>
                                </tr>
                            </c:forEach>
                        </table>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Pie Chart -->
    <div class="col-xl-4 col-lg-5">
        <div class="card shadow mb-4">
            <!-- Card Header - Dropdown -->
            <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
                <h6 class="m-0 font-weight-bold text-primary">Ajout de Produits</h6>

            </div>
            <!-- Card Body -->
            <div class="card-body">
           <c:if test="${result == 1}">
             <div id="message" class="alert alert-success"> Produit Ajouter avec Success</div>
           </c:if>
              <form method="post" action="Produit">
                <div class="form-group">
                    <label>Nom du Produit</label>
                    <input class="form-control" type="text" name="nom"/>
                </div>

                <div class="form-group">
                     <label>Quantite du Produit</label>
                    <input class="form-control" type="text" name="qte"/>
                </div>
             <div>
                <input class="btn-success" type="submit" value="Envoyer" />
            </div>
        </form>
          <a href="produit/add.jsp"></a>


            </div>
        </div>
    </div>
</div>


<jsp:include page="../footer.jsp"></jsp:include>