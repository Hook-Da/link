<?php 

class View
{
	function __construct()
	{
		
	}
	public function render ($name, $popularLinks = null,$kollektions = null){
				require_once "views/$name.php";
				/*require 'views/header.php';
				require 'views/'.$name.'.php';
				require 'views/footer.php';*/
	}
}