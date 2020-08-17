<?php

class Conexion{

	static public function conectar(){

		try {

		$link = new PDO("mysql:host=localhost;dbname=pos",
			            "root",
			            "admin");

		$link->exec("set names utf8");

		return $link;

	 } catch (PDOException $e ) {
		 echo '<br>
				 <div class="alert alert-danger">Error en Conexion con la base de datos. Pongase en contacto con el administrador del Sistema</div>';
		die();
	 }

	}

}