
<%@ page import="liverpool.Product" %>
<!doctype html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8" />
	<meta name="layout" content="kickstart" />
	<g:set var="entityName" value="${message(code: 'product.label', default: 'Product')}" />
	<title><g:message code="default.list.label" args="[entityName]" /></title>
</head>

<body>
	
<section id="list-product" class="first">

	<table class="table table-bordered">
		<thead>
			<tr>
			
				<g:sortableColumn property="description" title="${message(code: 'product.description.label', default: 'Description')}" />
			
				<g:sortableColumn property="manufacturer" title="${message(code: 'product.manufacturer.label', default: 'Manufacturer')}" />
			
				<g:sortableColumn property="name" title="${message(code: 'product.name.label', default: 'Name')}" />
			
				<g:sortableColumn property="price" title="${message(code: 'product.price.label', default: 'Price')}" />
			
				<g:sortableColumn property="type" title="${message(code: 'product.type.label', default: 'Type')}" />
			
			</tr>
		</thead>
		<tbody>
		<g:each in="${productInstanceList}" status="i" var="productInstance">
			<tr class="${(i % 2) == 0 ? 'odd' : 'even'}">
			
				<td><g:link action="show" id="${productInstance.id}">${fieldValue(bean: productInstance, field: "description")}</g:link></td>
			
				<td>${fieldValue(bean: productInstance, field: "manufacturer")}</td>
			
				<td>${fieldValue(bean: productInstance, field: "name")}</td>
			
				<td>${fieldValue(bean: productInstance, field: "price")}</td>
			
				<td>${fieldValue(bean: productInstance, field: "type")}</td>
			
			</tr>
		</g:each>
		</tbody>
	</table>
	<div class="pagination">
		<bs:paginate total="${productInstanceTotal}" />
	</div>
</section>

</body>

</html>
