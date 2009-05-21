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
  $sql = 'insert into status (resource_id, user_id, posted, message) values ("'.$_REQUEST["resourceId"].'", "'.$_REQUEST["userId"].'", now(), "'.$_REQUEST["msg"].'")';
  $rs = mysql_query($sql);
  if($rs === FALSE)
    echo FALSE;
  else
    echo TRUE;
  mysql_free_result($rs);
  mysql_close($link);
} else {
  echo "bad resource id";
}
?>