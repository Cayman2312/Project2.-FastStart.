<?php
  if (!empty($_GET['delay'])) {
    sleep((int) $_GET['delay']);
  }
?>