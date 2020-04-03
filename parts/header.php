<?php
$Root_path = $_SERVER['DOCUMENT_ROOT'];
include($Root_path . '/parts/db.php');
?>

<!DOCTYPE html>
<html lang="ru">

<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>FASTSTART - <?= $title ?></title>
  <link rel="stylesheet" href="./fonts/icon-7-stroke/css/pe-icon-7-stroke.css">
  <link rel="stylesheet" href="./css/style.css">
  <link rel="stylesheet" href="./css/swiper.min.css">
  <link rel="stylesheet" href="./css/font-awesome.min.css">
</head>

<body>

  <div class="overlay">
    <header class="wrapper header">
      <div class="header__about">
        <a href="/"><img src="./images/logo.png" alt="Логотив" class="img_logo start"></a>
        <h1 class="header__about-title start">Разработка сайтов <br>любой сложности</h1>
        <p class="header__about-text start">
          FastStart - команда опытных профессионалов по реализации задач любой
          сложности в области web-разработки и программирования. В кратчайшие
          сроки мы реализуем все ваши идеи и мысли и дадим мощный толчок вашему
          бизнесу!
        </p>
        <a href="#about" class="header__about-button start header__about-button--active scrollTo">
          О нас
        </a>
        <a href="#price" class="header__about-button start scrollTo">
          Стоимость
        </a>
      </div>
      <div class="header__feedback start">
        <h3 class="header__feedback-title">Свяжитесь со мной</h3>
        <form name="mailBack" class="header__feedback-form" action="#" method="">
          <p class="error-text hide">Необходимо заполнить все поля формы перед отправкой</p>
          <input type="text" name="fio" placeholder="Мое имя">
          <input type="email" name="email" placeholder="Мой email">
          <input type="submit" value="Отправить запрос">
        </form>
        <p class="header__feedback-text">Нажимая кнопку "ОТПРАВИТЬ ЗАПРОС"
          Вы даете согласие на обработку личных данных в соотстветствии правилами
          политики конфиденциальности.
        </p>
      </div>
    </header>
    <nav class="navbar">
      <div class="navbar__scroll-bar"></div>
      <div class="wrapper">
        <div class="navbar__image"></div>
        <div class="navbar__toggle">
          <div class="navbar__toggle-item"></div>
        </div>

        <div class="navbar__menu hide">
          <a href="#about" class="navbar__menu-item scrollTo">О нас</a>
          <a href="#advantages" class="navbar__menu-item scrollTo">Преимущества</a>
          <a href="#order" class="navbar__menu-item scrollTo">Как заказать</a>
          <a href="#price" class="navbar__menu-item scrollTo">Стоимость</a>
          <a href="#feedback" class="navbar__menu-item scrollTo">Отзывы</a>
          <a href="#contacts" class="navbar__menu-item scrollTo">Контакты</a>
        </div>
      </div>
    </nav>
  </div>