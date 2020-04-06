<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="s" uri="http://www.springframework.org/tags" %>
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

    <form:form action="${s:mvcUrl('PC#grava').build() }" method="post" modelAttribute="produto" enctype="multipart/form-data">
        <div>
            <label>Titulo</label>
            <form:input path="titulo"/>
            <form:errors path="titulo"/>
        </div>
        <div>
            <label>Descrição</label>
            <form:textarea rows="10" cols="20" path="descricao"/>
            <form:errors path="descricao"/>
        </div>
        <div>
            <label>Páginas</label>
            <form:input path="paginas"/>
			<form:errors path="paginas"/>
        </div>
        <div>
        	<label>Data de Lançamento</label>
        	<form:input path="dataLancamento"/>
        	<form:errors path="dataLancamento"/>
        </div>
        <c:forEach items="${tipos}" var="tipoPreco" varStatus="status">
            <div>
                <label>${tipoPreco}</label>
                <form:input path="precos[${status.index}].valor"/>
                <form:hidden path="precos[${status.index}].tipo" value="${tipoPreco}"/>
            </div>

        </c:forEach>
        <div>
        	<label>Sumário</label>
        	<input name="sumario" type="file"/>
        </div>
        <button type="submit">Cadastrar</button>
    </form:form>

</body>
</html>
