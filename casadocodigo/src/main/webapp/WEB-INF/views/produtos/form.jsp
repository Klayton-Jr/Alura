<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: klayt
  Date: 21/03/2020
  Time: 15:28
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Livro de Java, Android, Iphone, Ruby</title>
</head>
<body>

    <form action="/casadocodigo/produtos" method="post">
        <div>
            <label>Titulo</label>
            <input type="text" name="titulo">
        </div>
        <div>
            <label>Descrição</label>
            <textarea rows="10" cols="20" name="descricao"></textarea>
        </div>
        <div>
            <label>Páginas</label>
            <input type="text" name="paginas">
        </div>
        <c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
            <div>
                <label>${tipoPreco}</label>
                <input type="text" name="precos[${status.index}].valor">
                <input type="hidden" name="precos[${status.index}].tipo" value="${tipoPreco}">
            </div>

        </c:forEach>
        <button type="submit">Cadastrar</button>
    </form>

</body>
</html>
