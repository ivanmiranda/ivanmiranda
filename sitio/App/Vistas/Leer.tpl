<incluir archivo="Headerblog">

<ciclo reciente>
  <section class="article">
    <div clas="row">
      <div class="col-xs-2">
        <div class="date">
          {recienteFecha}
        </div>
      </div>
      <div class="col-xs-10">
        <h2>{titulo}</h2>
      </div>
    </div>
    <div class="content row">
      <div class="col-xs-12">
        <img src="{BASE_URL}html/images/blog/{imagen}" alt="{titulo}" title="{titulo}">
        <div class="content">
          {contenido}
        </div>
      </div>
    </div>

    <footer>
      <h2>Compartir</h2>
      <a href="https://twitter.com/share?text={titulo}" data-text="{titulo}" target="_blank"><i class="fa fa-fw fa-twitter"></i></a>
      <a href="http://www.facebook.com/share.php?u={BASE_URL}blog/leer/articulo/{url}&amp;t={titulo}" target="_blank"><i class="fa fa-fw fa-facebook"></i></a>
      <a href="https://plus.google.com/share?url={BASE_URL}blog/leer/articulo/{url}" target="_blank"><i class="fa fa-fw fa-google-plus"></i></a>
      <a href="https://www.linkedin.com/cws/share?url={BASE_URL}blog/leer/articulo/{url}" target="_blank"><i class="fa fa-fw fa-linkedin"></i></a>
      <br/><br/>
    </footer>

  </section>
</ciclo reciente>

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

<section id="portfolio">
  <div class="container">
    <div class="row">
        <div class="col-lg-12 text-center">
            <h2>Artículos relacionados</h2>
            <hr class="star-primary">
        </div>
    </div>
    <div class="row">
      <ciclo relacionados>
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
      </ciclo relacionados>
    </div>
  </div>
</section>

<incluir archivo="Footer">