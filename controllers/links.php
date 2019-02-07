<?php 

class Links extends Controller
{
	public function __construct(){
		//parent::__construct();
	}
	public function index()
	{
		$model = $this->loadModel('Links');
                
		//$popularLinks =  $modal->popular();
		//$kollektions = $modal->kollektion();
		$links = $model->links();
		$this->view->render('links/index', $links);
	}

}