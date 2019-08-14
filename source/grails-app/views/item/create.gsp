<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="dash" />
        <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
    </head>
    <body>
        <div id="create-item" class="content scaffold-create" role="main">
            <h1 class="pt-3">Adicionar Item</h1>
            <g:if test="${flash.message}"> 
              <div class="alert alert-danger" role="alert">
                ${flash.message}
              </div>
            </g:if>
            <g:form resource="${this.item}" method="POST">
              <div class="form-group">
                <label for="quantidade">Quantidade</label>
                <input min=0 type="number" value="1" name="quantidade" class="form-control" id="quantidade" required/>
              </div>
              <div class="form-group">
                <label for="descricao">Descrição</label>
                <textarea class="form-control" name="descricao" id="descricao" rows="3" required></textarea>
              </div>
              <fieldset class="buttons">
                    <g:submitButton name="create" class="save btn btn-primary" value="${message(code: 'default.button.create.label', default: 'Create')}" />
                    <button class="btn btn-primary" onclick="window.location.href = '${createLink(controller:"item")}'; return false;">Voltar</button>
                </fieldset>
          </g:form>
        </div>
    </body>
</html>
