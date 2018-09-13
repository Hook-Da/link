<?php 

class Theme extends Controller
{
	public function __construct(){
		parent::__construct();
	}
	public function index()
	{
		$model = $this->loadModel('Theme');
                
		//$popularLinks =  $modal->popular();
		//$kollektions = $modal->kollektion();
		$themes = $model->themes();
		$this->view->render('theme/index', $themes);
	}

}