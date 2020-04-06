<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
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

	<h1>Lista de Produtos</h1>
	
	<div>${sucesso }</div>
    <table>
    	<tr>
    		<td>Título</td>
    		<td>Descrição</td>
    		<td>Páginas</td>
    	</tr>
    	<c:forEach items="${produtos }" var="produto">
    		<tr>
    			<td>
    				<a href="${s:mvcUrl('PC#detalhe').arg(0, produto.id).build() }">${produto.titulo }</a> 
    			</td>
    			<td>${produto.descricao }</td>
    			<td>${produto.paginas }</td>
    		</tr>
    	</c:forEach>
    
    </table>

</body>
</html>
