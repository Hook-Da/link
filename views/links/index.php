<?php ?>
<ul>
	<?php 
	//var_dump($popularLinks);
	foreach($popularLinks as $link)
		{
			echo($link->description);
			echo '<br>';
		}
		?>
</ul>