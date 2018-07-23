<?php 
	class Update extends Controller
	{
		public function __construct()
		{
			parent::__construct();
		}
		public function editSave()
		{
			$this->model->editSave();
		}
		public function editDelete($someData)
		{
			$this->model->editDelete($someData);
		}
		public function addTheme()
		{
			$this->model->addTheme();
		}
		public function addPopular()
		{
			$this->model->addPopular();
		}
		public function addLink()
		{
			$this->model->addLink();
		}
	}