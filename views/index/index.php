<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<title>New Links</title>
	<link href="<?=URL;?>public/img/duckduckgo.com.ico" rel="shortcut icon">
	<link rel="stylesheet" type="text/css" href="<?=URL?>public/css/style.css">
</head>
<body>
	<header class="mainHeader">
		<nav>
			<ul>
				<li><button class="btn">+ Theme</button></li>
				<li><button class="btn">+ Popular</button></li>
				<li><button class="btn">+ New Link</button></li>
				<li><button id="time"></button></li>
			</ul>
		</nav>
	</header>
<div class="container">
	<div id="someDivLeft" class="left">
		<ul>
<?php 
	/*$checkingArr = []; 
	foreach($popularLinks as $link)
	{
		$urls = $link->link;
		$parsedUrl = parse_url($urls);
		if(!in_array($parsedUrl['host'], $checkingArr))
		{	
			$urls = $parsedUrl['scheme'].'://'.$parsedUrl['host'];
			array_push($checkingArr, $parsedUrl['host']);
			$doc = new DOMDocument();
			$doc->strictErrorChecking = FALSE;
			@$doc->loadHTML(file_get_contents($urls));
			$xml = simplexml_import_dom($doc);
			$arr = $xml->xpath('//link[@rel="shortcut icon"]');
			echo $arr[0]['href'].'=========';

			$urlArr = parse_url($arr[0]['href']);
			$someKeys = array_keys($urlArr);

			if(in_array('scheme', $someKeys))
				$path = $arr[0]['href'];
			else
			{
				$x = ltrim($arr[0]['href'],'/');
				$path = $urls.'/'.$x;
				echo $path;
			}
			$pathArr = parse_url($path);
			$name = str_replace('/', '', $pathArr['host']); echo $pathArr['host'];
			$name = 'public/img/'.$name.'.png';
			echo $name;
			$ch = curl_init($path);
			$fp = fopen($name, 'wb');
			curl_setopt($ch, CURLOPT_FILE, $fp);
			curl_setopt($ch, CURLOPT_HEADER, 0);
			curl_exec($ch);
			curl_close($ch);
			sleep(1);
			fclose($fp);

		}
	}*/
	foreach ($popularLinks as $link => $value) 
	{
		$valueName = str_replace('_', ' ', $value->name);
		echo '<div><li class="position border"><a href=',$value->link,' target="_blank" ><img src="',URL,'public/img/'.$value->img.'"><p><h6>',$valueName,'</h6></p></a><span class="close"></span><span class="edit"></span></li></div>';
	}

?>	
		</ul>
	</div>
<div id="someDivRight" class="right">
	<div class="obertka">
<?php
		foreach($kollektions as $item => $rules)
		{
			echo '<div class="selects"><button class="deleteUpdate">'.$item.':</button><button class="buttonSel">Go to</button><select>';
			foreach($rules as $rule )
			{
				echo '<option value="'.$rule->link.'">'.$rule->description.'</option>';
			}
			echo "</select></div>";
		}
	?>
	</div>
</div>

<div id="myModal">
	<div class="modal-content">
	<div class="modal-header">
		<span class="close-modal">&times;</span>
		<h1>Modal header</h1>
	</div>
		<form class="linkForm border" action="<?=URL?>update/addTheme" method="post">
			<table>
				<tr>
			<td>Theme:</td>
			<td><input type="text" name="theme" class="border input-width"></td>
				</tr>
			<tr>
			<td></td>
			<td>
				<input type="submit" value="Add Theme">
			</td>
			</tr>
			</table>
		</form>

		<form class="linkForm border display" action="<?=URL?>update/addPopular" method="post">
			<table>
				<tr>
			<td>Описание:</td>
			<td><input type="text" class="border size" name="name"></td>
				</tr>
				<tr>
			<td>Link:</td>
			<td><input type="text" class="border size" name="link"></td>
				</tr>
			<tr>
				<td></td>
				<td><input type="submit" value="Save"></td>
			</tr>
			</table>

		</form>

	<form action="<?=URL?>update/addLink" class="linkForm border" method="POST">
	<table>
		<tr>
			<td>
				Theme:
			</td>
			<td>
		<?php 
		$keys = array_keys($kollektions);
	echo '<select name="theme" class="border select-class input-width">';
		foreach($keys as $key)
		{
			echo '<option>'.$key.'</option>';
		}
		echo '</select>';?>
		</td>
		</tr>
		<tr>
			<td>Описание:</td>
			<td><input type="text" class="border input-width" name="description">
		</td></tr>
		<tr>
			<td>Ссылка:</td>
			<td><input type="text" class="border input-width" name="link"></td>
		</tr>
		<tr>
			<td></td>
			<td><input type="submit" value="Save"></td>
		</tr>
	</table>
</form>	
	</div>
</div>
<div id="myModal2">
	<div class="modal-content">
	<div class="modal-header">
		<span class="close-modal">&times;</span>
		<h1>Modal header</h1>
	</div>
		<ul class="editRightPart"></ul>
	</div>
</div>
</div>
</body>
<script type="text/javascript" src="<?= URL?>public/javascript/js1.js"></script>
</html>