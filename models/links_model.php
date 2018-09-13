<?php 
class Links_Model extends Model
{
	public function __construct()
	{
		parent::__construct();
	}
	public function links()
	{
		return $this->select('links','*');
	}
}