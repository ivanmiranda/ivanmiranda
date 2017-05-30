<?php
class Modelos_Articulos extends Sfphp_Modelo 
{
	public function get($id = '') {
		$where = NULL;
		$query = "SELECT 
			id, titulo, etiquetas, fecha, contenido, replace(replace(replace(replace(replace(replace(replace(replace(substring_index(contenido,' ',25),'<pre>',''),'</pre>',''),'<code>',''),'</code>',''),'<p>',''),'</p>',''),'</xmp>',''),'<xmp>','') contenidoCorto, imagen
		FROM
			articulos";
		if(trim($id) != "")
			$where = " WHERE id = {$id}";
		return $this->db->query($query.$where." ORDER BY fecha DESC;");
	}

	public function getByTitle($id = '') {
		$where = NULL;
		$query = "SELECT 
			id, titulo, etiquetas, fecha, contenido, replace(replace(replace(replace(replace(replace(replace(replace(substring_index(contenido,' ',25),'<pre>',''),'</pre>',''),'<code>',''),'</code>',''),'<p>',''),'</p>',''),'</xmp>',''),'<xmp>','') contenidoCorto, imagen
		FROM
			articulos
		WHERE titulo = '{$id}'";
		return $this->db->query($query.$where." ORDER BY fecha DESC;");
	}

	public function getLast($id = '') {
		$query = "SELECT 
			id, titulo, etiquetas, fecha, contenido, replace(replace(replace(replace(replace(replace(replace(replace(substring_index(contenido,' ',25),'<pre>',''),'</pre>',''),'<code>',''),'</code>',''),'<p>',''),'</p>',''),'</xmp>',''),'<xmp>','') contenidoCorto, imagen
		FROM
			articulos
		WHERE fecha <= CURDATE()
		ORDER BY fecha DESC LIMIT 1;";
		return $this->db->query($query);
	}

	public function getByTag($tag) {
		$query = "SELECT 
			id, titulo, etiquetas, fecha, replace(replace(replace(replace(replace(replace(replace(replace(substring_index(contenido,' ',25),'<pre>',''),'</pre>',''),'<code>',''),'</code>',''),'<p>',''),'</p>',''),'</xmp>',''),'<xmp>','') contenido, imagen
		FROM
			articulos
		WHERE etiquetas like '%{$tag}%' AND fecha <= CURDATE()
		ORDER BY fecha DESC;";
		return $this->db->query($query);	
	}

	public function getRelated($tags) {
		$query = "SELECT 
			id, titulo, etiquetas, fecha, replace(replace(replace(replace(replace(replace(replace(replace(substring_index(contenido,' ',25),'<pre>',''),'</pre>',''),'<code>',''),'</code>',''),'<p>',''),'</p>',''),'</xmp>',''),'<xmp>','') contenido, imagen
		FROM
			articulos
		WHERE ({$tags}) AND fecha <= CURDATE()
		ORDER BY RAND() DESC LIMIT 3;";
		return $this->db->query($query);	
	}

	public function getRandom($limit = 3) {
		$query = "SELECT 
			id, titulo, etiquetas, fecha, replace(replace(replace(replace(replace(replace(substring_index(contenido,' ',25),'<pre>',''),'</pre>',''),'<code>',''),'</code>',''),'<p>',''),'</p>','') contenido, imagen
		FROM
			articulos
		WHERE fecha <= CURDATE()
		ORDER BY RAND() DESC LIMIT {$limit};";
		return $this->db->query($query);	
	}

	public function getTags() {
		$query ="SELECT GROUP_CONCAT( DISTINCT etiquetas SEPARATOR  ' ' ) AS etiquetas 
		FROM articulos 
		WHERE fecha<=CURDATE();";
		return $this->query($query);
	}
}
