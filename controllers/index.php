<?php 

class Index extends Controller
{
	public function __construct(){
		parent::__construct();
	}
	public function index()
	{
		$modal = $this->loadModel('Index');
                
		$popularLinks = $modal->popular();
		$kollektions = $modal->kollektion();
		$this->view->render('index/index',$popularLinks,$kollektions);
	}

}