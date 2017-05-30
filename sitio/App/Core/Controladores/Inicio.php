<?php 
class Controladores_Inicio extends Sfphp_Controlador { 
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