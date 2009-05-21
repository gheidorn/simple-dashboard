<?php
if($_REQUEST["resourceId"] != "") {
  // open database and retrieve last 5 statuses
  include "db.php";
  require "mysql_resultset.php";  

  $link = mysql_connect($server, $user, $pwd);
  if (!$link) {
    die('Could not connect: ' . mysql_error());
  }
  $database = mysql_select_db("$dbName", $link);
  $sql = 'SELECT * FROM status s WHERE resource_id = "'.$_REQUEST["resourceId"].'" ORDER_BY posted LIMIT 0, 1';
  $rs = new mysql_resultset(mysql_query($sql));

  while ($row = $rs->fetch()) {
    echo $row["s"]["resource_id"] . ", " .$row["s"]["user_id"] . "<br/>";
  }
  
  mysql_free_result($rs->getResults());
  mysql_close($link);
} else {
  echo "bad resource id";
}
?>