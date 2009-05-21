<?php
class mysql_resultset
{
  var $results, $map;

  function mysql_resultset($results)
  {
    $this->results = $results;
    $this->map = array();

    $index = 0;
    while ($column = mysql_fetch_field($results))
    {
      $this->map[$index++] = array($column->table, $column->name);
    }
  }

  function fetch()
  {
    if ($row = mysql_fetch_row($this->results))
    {
      $drow = array();

      foreach ($row as $index => $field)
      {
        list($table, $column) = $this->map[$index];
        $drow[$table][$column] = $row[$index];
      }

      return $drow;
    }
    else
    return false;
  }
  
  function size() {
    return count($map);
  }
  function getResults() {
    return $this->results;
  }
}
?>