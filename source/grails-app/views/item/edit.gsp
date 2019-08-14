<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="dash" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
        <title><g:message code="default.edit.label" args="[entityName]" /></title>
    </head>
    <body>
        <div id="edit-item" class="content scaffold-edit" role="main">
            <h1><g:message code="default.edit.label" args="[entityName]" /></h1>
            <g:if test="${flash.message}">
            <div class="message" role="status">${flash.message}</div>
            </g:if>
            <g:hasErrors bean="${this.item}">
            <ul class="errors" role="alert">
                <g:eachError bean="${this.item}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message error="${error}"/></li>
                </g:eachError>
            </ul>
            </g:hasErrors>

            <g:form resource="${this.item}" method="PUT">
                <g:hiddenField name="version" value="${this.item?.version}" />
              <div class="form-group">
                <label for="quantidade">Quantidade</label>
                <input type="number" name="quantidade" value="${item.quantidade}" class="form-control" id="quantidade" required/>
              </div>
              <div class="form-group">
                <label for="descricao">Descrição</label>
                <textarea class="form-control" name="descricao" id="descricao" rows="3" required>${item.descricao}</textarea>
              </div>
              <fieldset class="buttons">
                    <input class="save btn btn-primary" type="submit" value="${message(code: 'default.button.update.label', default: 'Update')}" />
                    <button class="btn btn-primary" onclick="window.location.href = '${createLink(controller:"item", action: "show", id: item.id)}'; return false;">Voltar</button>
                </fieldset>
          </g:form>

        </div>
    </body>
</html>
