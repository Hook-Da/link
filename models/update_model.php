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
				exit();
			}
		}
		/**============================================================== */
		public function addPopular()
		{
			if(!empty(trim($_POST['name'])) && !empty(trim($_POST['link'])))
		{
			$url = $_POST['link'];
			function downFavIcon($url)
	{
		/**
		* 1)Решить проблему с выкидыванием ошибки в случае если не может * найти иконку.
		*	2) Сделать проверку на существование файла в папке с иконками
		* 	3) Узнать возможно ли грузануть иконку без cURL
		*/
		$url = parse_url($url);
		$host = $url['host'];
		$picture_name = $host; 
		$url = $url['scheme'].'://'.$url['host'];
		$name = 'public/img/'.$host;
		$host = file_exists("$name.ico") ? "$host.ico":(file_exists("$name.png")?"$host.png":(file_exists("$name.jpg")?"$host.jpg":false));

		/*$doc = new DOMDocument();
		$doc->strictErrorChecking = FALSE;
		@$doc->loadHTML(file_get_contents($url));
		$xml = simplexml_import_dom($doc);
		//var_dump($xml->xpath('//title')[0]);
		$im = @imagecreate(50, 50)
    	or die("Невозможно создать поток изображения");
		$background_color = imagecolorallocate($im, 0, 0, 0);
		$text_color = imagecolorallocate($im, 40, 230, 15);
		imagestring($im, 1, 5, 5,  'Some Text', $text_color);
		imagepng($im);
		var_dump($im);
		die();*/

		if($host){return $host;}
		else{
		$doc = new DOMDocument();
		$doc->strictErrorChecking = FALSE;

		$source = mb_convert_encoding(file_get_contents($url), 'HTML-ENTITIES', 'utf-8');
		@$doc->loadHTML($source);

		$xml = simplexml_import_dom($doc);
		$arr = $xml->xpath('//link[@rel="shortcut icon"]');
		if(!sizeof($arr))
		{
			$arr = $xml->xpath('//link[@rel="icon"]');
		}
		if(!sizeof($arr))
		{
			$name = $xml->xpath('//title')[0];

			$length = 60;
			if(strlen($name)*9.3 > 60) $length = 100;
			$im = @imagecreate($length, 60);

			$background_color = imagecolorallocate($im, 0, 0, 0);
			$text_color = imagecolorallocate($im, 233, 14, 91);

			imagestring($im, 10, 5, 20, $name, $text_color);
			$save = "public/img/$name.png";
			imagepng($im,$save);
			return "$name.png";
		}
		
		$path = ''.$arr[0]['href'];

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
		/** 
		 * Name of a picture
		 */
		$picture_name = $picture_name.".".substr($path,-3);
		$name = "public/img/$picture_name";
		//echo '<pre>'; var_dump($path);die();
				
		$ch = curl_init($path);
		$fp = fopen($name, 'wb');
		curl_setopt($ch, CURLOPT_FILE, $fp);
		curl_setopt($ch, CURLOPT_HEADER, 0);
		curl_exec($ch);
		curl_close($ch);
		fclose($fp);
		return $picture_name;}}

	$img = downFavIcon($url);

	$name = str_replace(' ', '_', $_POST['name']);
	$this->insert('popular',['name' => $name,'link' => $_POST['link'],'img'=>$img]);
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
		exit();
	}
}
	
}