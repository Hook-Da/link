<?php 

class Index_Model extends Model
{
	public function __construct()
	{
		parent::__construct();
	}
	public function popular()
	{
		$results = $this->select('popular',"*");
		$x = [];
		foreach($results as $result)
		{
			$x[$result->id] = $result;
		}
		return $x;
	}
	public function kollektion()
	{
		$results = $this->select('Themes','*');
		$x = [];
		foreach($results as $result)
		{
			$x[$result->theme] = $this->select('links','*',$result->id,'theme_id');
		}
		return $x;
	}
		
}