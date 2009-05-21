<?php
  // open database and retrieve last 5 statuses
  include "db.php";
  require "mysql_resultset.php";  

  $link = mysql_connect($server, $user, $pwd);
  if (!$link) { die('Could not connect: ' . mysql_error()); }
  $database = mysql_select_db("$dbName", $link);
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Simple Dashboard</title>
  <link rel="stylesheet" type="text/css" href="reset.css" />
  <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
<div id="page">	
	<div id="header">
		<div style="float:left;">
			<h1><a href="index.php">Simple Dashboard</a></h1>
		</div>
		<div style="float:left; padding: 8px;">
			<button style="font-size: 12px;">add a resource</button>
		</div>
		<div id="loginForm">
			remember me? <input type="checkbox" name="remember" /><input type="text" name="username" /> <input type="password" name="password" /><button>Login</button>
		</div>
	</div>
	<div id="content">
		
<?php		
$sqlGetResources = 'SELECT * FROM resource r';
$rsGetResources = new mysql_resultset(mysql_query($sqlGetResources));
while ($row = $rsGetResources->fetch()) {
  $sqlGetStatuses = 'SELECT * FROM status s WHERE resource_id = "'.$row["r"]["id"].'" ORDER BY posted desc LIMIT 0, 6';
  $rsGetStatuses = new mysql_resultset(mysql_query($sqlGetStatuses));
  $statuses = array();
  $i = 0;
  while ($rowStatus = $rsGetStatuses->fetch()) {
      $statuses[$i]["msg"] = $rowStatus["s"]["message"];
      $statuses[$i]["user_id"] = $rowStatus["s"]["user_id"];
      $statuses[$i]["posted"] = $rowStatus["s"]["posted"];
      $i++;  
  }
?>
		<div id="<?php echo $row["r"]["id"];?>" class="resource">
			<div class="resource-details">
				<div id="<?php echo $row["r"]["id"];?>-status" class="resource-status">
					<h2><?php echo $row["r"]["name"];?> (<?=$row["r"]["id"]?>)</h2>
					<h2>status: <span><?php echo $statuses[0]["msg"]; ?></span></h2>
				</div>
				<div id="<?=$row["r"]["id"]?>-status-form" class="resource-status-form">
					<h2><?=$row["r"]["name"]?> (<?=$row["r"]["id"]?>)</h2>
					<h2>status: <input class="resource-status-form-txt" type="text" name="status" value="<?php echo $statuses[0]["msg"];?>" /><button class="save"></button>&nbsp;<button class="cancel"></button></h2>
				</div>
				<h3>by <span><?=$statuses[0]["user_id"]?> @ <?=date("n/d/Y g:i:sa", strtotime($statuses[0]["posted"]))?></span></h3>
			</div>
			<div id="<?php echo $row["r"]["id"];?>-log" class="resource-log">
<?php 
$count = count($statuses);
for ($j = 1; $j < $count; $j++) { ?>
				<p><span class="datetime"><?=date("n/d/Y h:i:sa", strtotime($statuses[$j]["posted"]))?></span> <span class="userid"><?=$statuses[$j]["user_id"]?></span>: <?=htmlspecialchars($statuses[$j]["msg"])?></p>
<?php } ?>   				
    			<!-- <a href="#">more ...</a> -->
			</div>
		</div>
<?php
}
mysql_free_result($rsGetResources->getResults());
mysql_close($link);
?>		

	</div><!-- end content -->
	<div id="footer">
		<a href="#">faq</a> | <a href="#">help</a>
	</div>	
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="jquery-ui-1.7.1.custom.min.js"></script>
<script type="text/javascript" src="jquery.phpdate.js"></script>
<script type="text/javascript" src="ui.js"></script>
</body>
</html>