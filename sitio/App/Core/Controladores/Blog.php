<?php 
class Controladores_Blog extends Sfphp_Controlador { 
	public function inicio() {
		$_reciente = $this->modeloArticulos->getLast();
		$_reciente[0]['url'] = urlencode(strtolower(str_replace(" ", "-", $_reciente[0]['titulo'])));
		$this->_vista->reciente = $_reciente;
		$_fecha = explode("-", $_reciente[0]['fecha']);
		$this->_vista->recienteFecha = '<span class="day">'.$_fecha[2].'</span>
			<span class="month">'.$this->mes($_fecha[1]).'</span>
			<span class="year">'.$_fecha[0].'</span>';
		$this->_vista->tags = $this->tags();
		$_articulos = $this->modeloArticulos->getRandom(6);
		foreach ($_articulos as $key => $_articulo) {
			$_articulos[$key]['url'] = urlencode(strtolower(str_replace(" ", "-", $_articulo['titulo'])));
		}
		$this->_vista->articulos = $_articulos;
		$this->vistaBlog;
	}

	public function etiquetas() {
		$_parametros = Sfphp_Peticion::get('_parametros');
		$this->_vista->etiqueta = $_parametros['etiqueta'];
		$_articulos = $this->modeloArticulos->getByTag($_parametros['etiqueta']);
		foreach ($_articulos as $key => $_articulo) {
			$_articulos[$key]['url'] = urlencode(strtolower(str_replace(" ", "-", $_articulo['titulo'])));
		}
		$this->_vista->articulos = $_articulos;
		$this->_vista->tags = $this->tags();
		$this->vistaResultados;
	}

	public function leer() {
		$_parametros = Sfphp_Peticion::get('_parametros');
	//Soporte para ligas ya publicadas
		$_llave = array_keys($_parametros);
		if(intval($_parametros['articulo']) == 0) {
			$_reciente = $this->modeloArticulos->getByTitle(str_replace("-", " ", $_parametros['articulo']));
		} else {
			$_reciente = $this->modeloArticulos->get($_parametros['articulo']);
		}
		$_reciente[0]['url'] = urlencode(strtolower(str_replace(" ", "-", $_reciente[0]['titulo'])));
		$this->_vista->reciente = $_reciente;
		$_fecha = explode("-", $_reciente[0]['fecha']);
		$this->_vista->recienteFecha = '<span class="day">'.$_fecha[2].'</span>
			<span class="month">'.$this->mes($_fecha[1]).'</span>
			<span class="year">'.$_fecha[0].'</span>';
		$this->_vista->tags = $this->tags();
		$_articulo = $this->_vista->reciente[0];
		$_tags = explode(" ", $_articulo['etiquetas']);
		$_tags = implode("%' OR etiquetas LIKE '%", $_tags);
		$_relacionados = $this->modeloArticulos->getRelated('etiquetas LIKE \'%'.$_tags.'%\'');
		foreach ($_relacionados as $key => $_articulo) {
			$_relacionados[$key]['url'] = urlencode(strtolower(str_replace(" ", "-", $_articulo['titulo'])));
		}
		$this->_vista->relacionados = $_relacionados;
		$this->vistaLeer;
	}

	private function tags() {
		$_tags = array_shift($this->modeloArticulos->getTags());
		$_tags = explode(" ", $_tags['etiquetas']);
		$_tags = array_unique($_tags);
		$_respuesta = array();
		foreach ($_tags as $_tag) {
			array_push($_respuesta, array("tag"=>$_tag));
		}
		return $_respuesta;
	}

	private function mes($mes) {
		$meses = array("Ene","Feb","Mar","Abr","May","Jun","Jul","Ago","Sep","Oct","Nov","Dic");
		return $meses[intval($mes)-1];
	}
}