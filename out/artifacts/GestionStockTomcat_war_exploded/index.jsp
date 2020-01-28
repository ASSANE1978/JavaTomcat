<%--
  Created by IntelliJ IDEA.
  User: HP
  Date: 15/01/2020
  Time: 16:18
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Produit</title>
  </head>
  <body>
  <pre>
    <<form method="post" action="/Produit">
        <label>Nom du Produit</label>
        <input type="text" name="nom"/>

         <label>Quantité du Produit</label>
        <input type="text" name="qte"/>

    <input type="submit" value="Envoyer" />
    </form>
  </pre>
  </body>
</html>
