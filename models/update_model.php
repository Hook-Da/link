<?php 
	class Update_Model extends Model
	{
		public function __construct()
		{
			parent::__construct();
		}
		public function editSave()
		{
			if(isset($_GET)) 
				{
					$keys = array_keys($_GET);
					$newName = htmlspecialchars($_GET[$keys[1]]);
					if(strpos($newName,'&') !== false) 
						{
							echo json_encode(['false'=>false]);
						 	return false;
						}
					$sql = "UPDATE `popular` SET `name` = '$newName' WHERE `name` = '$keys[1]'";
					$this->execution($sql);
					echo json_encode($sql);
					return;
				}
		}
		public function editDelete($someData)
		{
			$sql = "DELETE FROM `popular` WHERE `name` = '$someData'";
			$this->execution($sql);
			echo json_encode($sql);
			return;
		}
		public function addTheme()
		{
			if(!empty(trim($_POST['theme'])))
			{
				$this->insert('Themes',['theme'=>$_POST['theme']]);
				header("Location:../..");
				exit();
			}
		}
		public function addPopular()
		{
			if(!empty(trim($_POST['name'])) && !empty(trim($_POST['link'])))
{
		$url = $_POST['link'];
	function downFavIcon($url)
	{
		$doc = new DOMDocument();
		$doc->strictErrorChecking = FALSE;
		@$doc->loadHTML(file_get_contents($url));
		$xml = simplexml_import_dom($doc);
		$arr = $xml->xpath('//link[@rel="shortcut icon"]');
		if(!sizeof($arr))
		{
			$arr = $xml->xpath('//link[@rel="icon"]');
		}
		$path = ''.$arr[0]['href'];

		$url = parse_url($url);
		$host = $url['host'];
		$url = $url['scheme'].'://'.$url['host'];
		/*if(substr($url['host'], -3) === 'net')
		{
			$url = $url['scheme'].'://'.$url['host'];
		}
		else
	{
		if(substr($url['host'],0,4) === 'www.') 
		{
			$url = $url['scheme'].'://'.$url['host'];
		}
		else
		{
			$url = $url['scheme'].'://www.'.$url['host'];
		}
	}*/ 
		if(substr($path,0,4) === 'http')
		{
			//echo 'here';
		}
		else if(substr($path,0,2) === '//' )
		{
			$path = 'https:'.$path;
		}
		else if(substr($path,0,1) === '/')
		{
			$path = trim($url,'/').$path;
		}
		else
		{
			$path = $url.'/'.$path;
		}
		/*echo '<pre>';
		var_dump($path); die();*/
		
		$name = 'public/img/'.$host.'.ico';

		$ch = curl_init($path);
		$fp = fopen($name, 'wb');
		curl_setopt($ch, CURLOPT_FILE, $fp);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_exec($ch);
		curl_close($ch);
		fclose($fp);
		return $host.'.ico';
	}
	$img = downFavIcon($url);

	$name = str_replace(' ', '_', $_POST['name']);
	$this->insert('popular',['name' => $name,'link' => $_POST['link'],'img'=>$img]);
	header("Location:../..");
	exit();
}
		}
		public function addLink()
		{
			if(!empty(trim($_POST['description'])) && !empty(trim($_POST['link'])))
			{
				$theme = $_POST['theme'];
				$description = $_POST['description'];
				$link = $_POST['link'];
				$theme_id = $this->select('Themes','*',$theme,'theme');
				$this->insert('links',['theme'=>$theme,'description' => $description,'link'=>$link,'theme_id'=>$theme_id[0]->id]);
				header("Location:../..");
				exit();
				//theme,description,link,theme_id) VALUES(?,?,?,?)";
				//$theme_id[0]->id
			}
		}
	}