<?php 
class Theme_Model extends Model
{
	public function __construct()
	{
		parent::__construct();
	}
	public function themes()
	{
		return $this->select('themes','*');
	}
}