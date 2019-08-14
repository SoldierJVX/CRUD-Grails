<nav class="navbar navbar-dark fixed-top bg-dark flex-md-nowrap p-0 shadow">
  <a class="navbar-brand col-sm-3 col-md-2 mr-0" href="#">Controle de Estoque</a>
  <input class="form-control form-control-dark w-100" type="text" %{-- placeholder="Search" --}% aria-label="Search" disabled>
  <ul class="navbar-nav px-3">
    <li class="nav-item text-nowrap">
      <a class="nav-link" href="${createLink(controller:'auth', action:'logoff')}">Sair</a>
    </li>
  </ul>
</nav>
<div class="container-fluid">
  <div class="row">
    <nav class="col-md-2 d-none d-md-block bg-light sidebar">
      <div class="sidebar-sticky">
        <ul class="nav flex-column">
          <li class="nav-item">
            <a class="nav-link <g:if test="${page == "dash"}">active</g:if>" href="${createLink(controller:'item')}">
              <span data-feather="home"></span>
              Dashboard <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link <g:if test="${page == "item-create"}">active</g:if>" href="${createLink(controller:'item', action:'create')}">
              <span data-feather="plus-circle"></span>
              Adicionar
            </a>
          </li>
        </ul>
      </div>
    </nav>