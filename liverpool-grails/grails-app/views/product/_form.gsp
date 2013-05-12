<%@ page import="liverpool.Product" %>



			<div class="control-group fieldcontain ${hasErrors(bean: productInstance, field: 'description', 'error')} ">
				<label for="description" class="control-label"><g:message code="product.description.label" default="Description" /></label>
				<div class="controls">
					<g:textField name="description" value="${productInstance?.description}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'description', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: productInstance, field: 'manufacturer', 'error')} ">
				<label for="manufacturer" class="control-label"><g:message code="product.manufacturer.label" default="Manufacturer" /></label>
				<div class="controls">
					<g:textField name="manufacturer" value="${productInstance?.manufacturer}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'manufacturer', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: productInstance, field: 'name', 'error')} ">
				<label for="name" class="control-label"><g:message code="product.name.label" default="Name" /></label>
				<div class="controls">
					<g:textField name="name" value="${productInstance?.name}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'name', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: productInstance, field: 'price', 'error')} required">
				<label for="price" class="control-label"><g:message code="product.price.label" default="Price" /><span class="required-indicator">*</span></label>
				<div class="controls">
					<g:field type="number" name="price" required="" value="${productInstance.price}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'price', 'error')}</span>
				</div>
			</div>

			<div class="control-group fieldcontain ${hasErrors(bean: productInstance, field: 'type', 'error')} ">
				<label for="type" class="control-label"><g:message code="product.type.label" default="Type" /></label>
				<div class="controls">
					<g:textField name="type" value="${productInstance?.type}"/>
					<span class="help-inline">${hasErrors(bean: productInstance, field: 'type', 'error')}</span>
				</div>
			</div>

