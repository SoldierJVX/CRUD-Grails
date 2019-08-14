<!DOCTYPE html>
<html>
<head>
  <g:set var="entityName" value="${message(code: 'item.label', default: 'Item')}" />
  <title><g:layoutTitle default="Dashboard · Bootstrap"/></title>
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

  <!-- Bootstrap core CSS -->
  <link rel="stylesheet" href="<g:resource dir='css' file='/bootstrap-4.3.1/bootstrap.css' />">

  <style>
  .bd-placeholder-img {
    font-size: 1.125rem;
    text-anchor: middle;
    -webkit-user-select: none;
    -moz-user-select: none;
    -ms-user-select: none;
    user-select: none;
  }

  @media (min-width: 768px) {
    .bd-placeholder-img-lg {
      font-size: 3.5rem;
    }
  }
  </style>
  <!-- Custom styles for this template -->
  <asset:stylesheet src="dashboard.css"/>
  <g:layoutHead/>
</head>
<body>
  <g:render template="/layouts/templates/header" />
  
  <main role="main" class="col-md-9 ml-sm-auto col-lg-10 px-4">

    <g:layoutBody/>

  </main>
</div>
</div>
<script src="https://code.jquery.com/jquery-3.3.1.min.js" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/feather-icons/4.9.0/feather.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.7.3/Chart.min.js"></script>
<asset:javascript src="dashboard.js" />

</body>
</html>