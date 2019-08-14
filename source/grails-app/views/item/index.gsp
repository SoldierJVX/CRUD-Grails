<!DOCTYPE html>
<html>
    <head>
        <meta name="layout" content="dash"/>
    </head>
    <body>
        <div class="d-flex justify-content-between flex-wrap flex-md-nowrap align-items-center pt-3 pb-2 mb-3 border-bottom">
          <h1 class="h2">Dashboard</h1>
          <div class="btn-toolbar mb-2 mb-md-0">
            
          </div>
        </div>
        <g:if test="${flash.message}">
            <div class="alert alert-primary" role="alert">
                ${flash.message}
            </div>
        </g:if>
        <table class="table table-hover">
        <thead>
          <tr>
            <th scope="col">#</th>
            <th scope="col">Descrição</th>
            <th scope="col">Quantidade</th>
          </tr>
        </thead>
        <tbody>
          <g:each in="${itemList}" var="item">
          
            <tr>
                <th><a href="/item/show/${item.id}">${item.id}</a></th>
                <td>${item.descricao}</td>
                <td>${item.quantidade}</td>             
            </tr>
          
        </g:each>
        </tbody>
      </table>
    </body>
</html>