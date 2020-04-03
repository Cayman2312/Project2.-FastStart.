<?php
include($_SERVER['DOCUMENT_ROOT'] . '/parts/db.php');

if (isset($_POST['fio'])) {
  $qr = "INSERT INTO messages (fio, email, message, time) 
  VALUES ('{$_POST['fio']}', '{$_POST['email']}', '{$_POST['message']}', Now())";

  $result = mysqli_query($link, $qr);

  if ($result) {
    echo "true";
  } else {
    echo "false";
  }
} else {
  echo "false";
}
