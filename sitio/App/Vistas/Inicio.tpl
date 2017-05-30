<incluir archivo="Headerblog">
  <ciclo reciente>
  <section>
    <h2>{titulo}</h2>
    <h3>{fecha}</h3>
    <img src="{BASE_URL}html/images/blog/{imagen}" alt="{titulo}" title="{titulo}">
    {contenido}
  </section>
  <footer>
    <h2>Compartir</h2>
    <a href="https://twitter.com/share?text={titulo}" data-text="{titulo}" target="_blank"><img src="{BASE_URL}html/images/boton_twitter.png" alt="twitter" title="twitter"/></a>
    <a href="http://www.facebook.com/share.php?u={BASE_URL}blog/leer/{id}&amp;t={titulo}" target="_blank"><img src="{BASE_URL}html/images/boton_facebook.png" alt="facebook" title="facebook"/></a>
    <a href="https://plus.google.com/share?url={BASE_URL}blog/leer/{id}" target="_blank"><img src="{BASE_URL}html/images/boton_google.png" alt="google+" title="google+" /></a>
    <a href="https://www.linkedin.com/cws/share?url={BASE_URL}blog/leer/{id}" target="_blank"><img src="{BASE_URL}html/images/boton_linkedin.png" alt="linkedin" title="linkedin" /></a>
    <br/><br/>
  </footer>
  </ciclo reciente>
  <section class="donativo">
    <h5>Te ha servido esta información?</h5>
    <h6>Ayúdame a costear el host del blog</h6>
    <form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top">
      <input type="hidden" name="cmd" value="_s-xclick">
      <input type="hidden" name="hosted_button_id" value="9A2RMGHUNXADA">
      <input type="image" src="https://www.paypalobjects.com/es_XC/MX/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal, la forma más segura y rápida de pagar en línea.">
      <img alt="" border="0" src="https://www.paypalobjects.com/es_XC/i/scr/pixel.gif" width="1" height="1">
    </form>
  </section>
  <section class="tags">
  	<p>
  		<ciclo tags>
  			<a href="{BASE_URL}blog/etiquetas/etiqueta/{tag}">{tag}</a>
  		</ciclo tags>
  	</p>
  </section>
</div>
<incluir archivo="Footer">