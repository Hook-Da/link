<?php
 class Model
 {
 	public function __construct()
 	{
 		$this->db = Database::getInstance();
 	}
	public function insert($table, $request = []){
		$keys = array_keys($request);
		$x = 1; $values = '';
		foreach($keys as $key)
               {
			$values .= '?';
			if($x<count($keys)){
				$values .= ', ';
			}
			$x++;
		}
		$sql = "INSERT INTO `$table` (`".implode('`,`',$keys)."`) VALUES ({$values})";
		//print_r($request); die();
		return $this->execution($sql,$request);
	}
	public function select($table, $what, $param = null,$column = null)
	{
		$sql = "SELECT $what FROM `$table`";
		if(count($param)) 
		{
			$sql .=" WHERE `$column` = '$param'";
			return $this->execution($sql);
		}
	 else 
         {
            return $this->execution($sql);
         }
	}
 	public function execution($sql,$params = null)
	{
		if(count($params))
		{
			$this->_query = $this->db->_pdo->prepare($sql);
			$x = 1;
			foreach($params as $param)
			{
				$this->_query->bindValue($x,$param);
				$x++;
			}
			$this->_query->execute();
			return $this->_query->fetchALL(PDO::FETCH_OBJ);
		}
		else
		{
                        //var_dump($sql);die();
			$this->_query = $this->db->_pdo->prepare($sql);	
			$this->_query->execute();
			return $this->_query->fetchALL(PDO::FETCH_OBJ);
		}
	}
 }