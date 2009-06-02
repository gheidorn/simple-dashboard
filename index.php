<?php
  // open database and retrieve last 5 statuses
  include "db.php";
  require "mysql_resultset.php";  

  $link = mysql_connect($server, $user, $pwd);
  if (!$link) { die('Could not connect: ' . mysql_error()); }
  $database = mysql_select_db("$dbName", $link);
?>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01//EN" "http://www.w3.org/TR/html4/strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Simple Dashboard</title>
  <link rel="stylesheet" type="text/css" href="reset.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="stylesheet.css" media="screen" />
  <link rel="stylesheet" type="text/css" href="thickbox.css" media="screen" />
</head>
<body>
<div id="header">
  <div id="header-in">
    <div class="left">
      <h1><a href="index.php">Simple Dashboard</a></h1>
    </div>
    <div class="right">
      <a href="#TB_inline?height=155&width=300&inlineId=loginForm&modal=true" class="thickbox">Login Form</a>
      <input alt="#TB_inline?height=150&width=250&inlineId=loginForm" title="" class="thickbox" type="button" value="Login" />  
      <div id="loginForm" style="display:none;">
        <form action="login.php" method="post">
          <label>Username</label><input type="text" name="username" />
          <label>Password</label><input type="password" name="password" /><br />
          <span style="padding: 5px;"><input type="checkbox" name="remember" /><label>Remember Me</label></span><br />
          <button>Login</button>
        </form>
      </div>
    </div>
    <div class="fix"></div>
  </div>
</div>
<div id="content">
  <div id="content-in">
<?php		
$sqlGetResources = 'SELECT * FROM resource r';
$rsGetResources = new mysql_resultset(mysql_query($sqlGetResources));
while ($row = $rsGetResources->fetch()) {
  $sqlGetStatuses = 'SELECT * FROM status s WHERE resource_id = "'.$row["r"]["id"].'" ORDER BY posted desc LIMIT 0, 10';
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
					<h2><span><?php echo $statuses[0]["msg"]; ?></span></h2>
				</div>
				<div id="<?=$row["r"]["id"]?>-status-form" class="resource-status-form">
					<h2><?=$row["r"]["name"]?> (<?=$row["r"]["id"]?>)</h2>
          <h2><textarea class="resource-status-form-txt" name="status" rows="2" cols="45" ><?php echo $statuses[0]["msg"];?></textarea>
          <br/><button class="save">Accept</button>&nbsp;<button class="cancel">Cancel</button></h2>
				</div>
				<h3>by <span><?=$statuses[0]["user_id"]?> @ <?=date("n/d/Y g:i:sa", strtotime($statuses[0]["posted"]))?></span></h3>
        <button class="view-log">View Log</button> <button class="edit">Edit Resource</button>
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
  </div><!-- end content-in -->
</div><!-- end content -->

<div id="footer">
  <div id="footer-in">
    <a href="#">faq</a> | <a href="#">help</a>
  </div>
</div>	
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="jquery-ui-1.7.1.custom.min.js"></script>
<script type="text/javascript" src="jquery.phpdate.js"></script>
<script type="text/javascript" src="thickbox.js"></script>
<script type="text/javascript" src="ui.js"></script>
</body>
</html>