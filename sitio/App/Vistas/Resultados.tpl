<incluir archivo="Header">

<section id="portfolio">
  <div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h2>Artículos sobre '{etiqueta}'</h2>
        </div>
    </div>
    <div class="row">
      <ciclo articulos>
        <div class="col-sm-4 portfolio-item">
          <a href="{BASE_URL}blog/leer/articulo/{url}" class="portfolio-link" data-toggle="modal">
            <div class="caption">
              <div class="caption-content">
                <h3>{titulo}</h3>
                <p>{contenido}</p>
              </div>
            </div>
            <img src="{BASE_URL}html/images/blog/{imagen}.min" alt="{titulo}" title="{titulo}">
          </a>
        </div>
      </ciclo articulos>
    </div>
  </div>
</section>

<!-- Categorias -->
<section class="tags" id="tags">
  <div class="row">
    <div class="col-xs-12">
      <h2>Temas</h2>
      <ciclo tags>
        <a href="{BASE_URL}blog/etiquetas/etiqueta/{tag}">{tag}</a>
      </ciclo tags>
    </div>
  </div>
</section>

<incluir archivo="Footer">