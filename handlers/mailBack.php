<?php
include($_SERVER['DOCUMENT_ROOT'] . '/parts/db.php');

if (isset($_GET['fio']) && isset($_GET['email']) && !empty($_GET['fio']) && !empty($_GET['email'])) {

  $query = "INSERT INTO mailback (name, email, time) 
  VALUES ('{$_GET['fio']}', '{$_GET['email']}', Now())";

  $result = mysqli_query($link, $query);

  if ($result) {
    echo "true";
  } else {
    echo "false";
  }
} else {
  echo "false";
}
