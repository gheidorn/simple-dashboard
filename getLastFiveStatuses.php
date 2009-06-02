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
  $sql = 'SELECT * FROM status s WHERE resource_id = "'.$_REQUEST["resourceId"].'" ORDER BY posted desc LIMIT 1, 10';
  $rs = new mysql_resultset(mysql_query($sql));
  $ctr = 0;
  while ($row = $rs->fetch()) {
    if($ctr == 0) {
      echo "<p class=\"recent\">";
    } elseif ($ctr % 2 == 1) {
      echo "<p class=\"odd\">";
    } else {
      echo "<p>";
    }
    echo "<span class=\"datetime\">" . date("n/d/Y h:i:sa", strtotime($row["s"]["posted"])) . "</span> <span class=\"userid\">" . $row["s"]["user_id"] . "</span>: " . $row["s"]["message"] . "</p>";
    //echo $row["s"]["message"] . " - <span class=\"userid\">" . $row["s"]["user_id"] . "</span> <span class=\"datetime\">" . date("n/d/Y g:i:sa", $row["s"]["posted"]) . "</span></p>";
    $ctr++;
  }
  //echo "<a href=\"#\">more ...</a>";
  mysql_free_result($rs->getResults());
  mysql_close($link);
} else {
  echo "bad resource id";
}
?>