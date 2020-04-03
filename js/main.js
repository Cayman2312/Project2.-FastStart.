window.onload = function() {
  //слайдер
  var swiper = new Swiper('.swiper-container', {
    spaceBetween: 30,
    pagination: {
      el: '.swiper-pagination',
      clickable: true
    }
  });

  //скрытие/появление меню
  let $navbarMenu = document.querySelector('.navbar__menu');

  document
    .querySelector('.navbar__toggle')
    .addEventListener('click', function() {
      $navbarMenu.classList.toggle('hide');
    });

  //фиксация меню при прокрутке
  let $navbar = document.querySelector('.navbar');
  let $about = document.querySelector('.about');

  if ($navbar.getBoundingClientRect().top < 0) {
    $navbar.style.position = 'fixed';
    $navbar.style.top = '0';
    $navbar.style.zIndex = '100';
  }

  window.addEventListener('scroll', function() {
    if ($navbar.getBoundingClientRect().top < 0) {
      $navbar.style.position = 'fixed';
      $navbar.style.top = '0';
      $navbar.style.zIndex = '100';
    } else if ($about.getBoundingClientRect().top > 0) {
      $navbar.style.position = '';
      $navbar.style.top = '';
      $navbar.style.zIndex = '';
    }
  });

  //перемещение к пунктам меню
  function scrollUp($next, nextY) {
    if (nextY < -20) {
      nextY = $next.getBoundingClientRect().top;
      let speed = 10 + (nextY / 600) ** 2;
      window.scrollBy(0, -speed);
      setTimeout(() => {
        scrollUp($next, nextY);
      }, 5);
    }
  }

  function scrollDown($next, nextY) {
    if (nextY > 10) {
      nextY = $next.getBoundingClientRect().top;
      let speed = 10 + (nextY / 600) ** 2;
      window.scrollBy(0, speed);
      if (pageYOffset + window.innerHeight >= document.body.clientHeight) {
        return;
      } else {
        setTimeout(() => {
          scrollDown($next, nextY);
        }, 5);
      }
    }
  }

  document.querySelectorAll('.scrollTo').forEach(function(item) {
    item.addEventListener('click', function menuClick(e) {
      document.querySelectorAll('.scrollTo').forEach(function(item) {
        item.removeEventListener('click', menuClick);
      });
      setTimeout(() => {
        document.querySelectorAll('.scrollTo').forEach(function(item) {
          item.addEventListener('click', menuClick);
        });
      }, 4000);

      let href = this.getAttribute('href');
      let $next = document.querySelector('.' + href.slice(1));
      let nextY = $next.getBoundingClientRect().top;

      if (nextY < -20) {
        scrollUp($next, nextY);
      } else if (nextY > 10) {
        scrollDown($next, nextY);
      }

      e.preventDefault();
    });
  });

  //активация пунктов меню при прокручивании страницы
  let menu = [];
  document
    .querySelectorAll('.navbar__menu-item.scrollTo')
    .forEach(function(item, index) {
      let href = item.getAttribute('href');

      menu[index] = document.querySelector('.' + href.slice(1));
      window.addEventListener('scroll', () => {
        if (
          menu[index].getBoundingClientRect().bottom > 0 &&
          menu[index].getBoundingClientRect().top < 0
        ) {
          item.classList.add('navbar__menu-item--active');
        } else {
          item.classList.remove('navbar__menu-item--active');
        }
      });
    });

  //активация скроллбара меню
  let $scrollBar = document.querySelector('.navbar__scroll-bar');
  window.addEventListener('scroll', () => {
    let currentPosition = Math.round(
      (100 *
        (-document.body.getBoundingClientRect().top + window.innerHeight)) /
        document.body.clientHeight
    );
    $scrollBar.style.width = currentPosition + '%';
  });

  //добавляем подергивание заднего фона
  let currentY;
  setInterval(() => {
    currentY = pageYOffset;
  }, 1000);

  function isScrollDown(currentY) {
    if (pageYOffset > currentY) {
      return true;
    } else {
      return false;
    }
  }
  let i = 0;
  window.addEventListener('scroll', () => {
    if (isScrollDown(currentY)) {
      i += 1;
    } else {
      i -= 1;
    }
    document.querySelectorAll('.overlay').forEach(function(item) {
      item.style.backgroundPositionY = i / 2 + 'px';
    });
  });

  //добавляем появление элементов при загрузке страницы
  document.querySelectorAll('.start').forEach(function(item) {
    if (
      item.getBoundingClientRect().bottom > 0 &&
      window.innerHeight - item.getBoundingClientRect().top > 0
    ) {
      item.classList.remove('start');
    }
  });

  //добавляем появление элементов при скролле страницы
  window.addEventListener('scroll', function elementsAppear() {
    let $items = document.querySelectorAll('.start');
    if ($items.length == 0) {
      window.removeEventListener('scroll', elementsAppear);
      return;
    }
    $items.forEach(function(item) {
      if (
        item.getBoundingClientRect().bottom > 0 &&
        window.innerHeight - item.getBoundingClientRect().top > 0
      ) {
        item.classList.remove('start');
      }
    });
  });

  //добавляем валидацию данных к первой форме
  document.forms[0].addEventListener('submit', function(e) {
    let $error = document.querySelector('p.error-text');

    this.querySelectorAll('input').forEach(function(item) {
      if (item.value == '') {
        item.classList.add('input-error');
        $error.classList.remove('hide');
      } else {
        item.classList.remove('input-error');
      }
    });

    let $fio = this.elements.fio;
    let $email = this.elements.email;

    [$fio, $email].forEach(function(item) {
      item.addEventListener('input', () => {
        if (item.value == '') {
          item.classList.add('input-error');
          $error.classList.remove('hide');
        } else {
          item.classList.remove('input-error');
        }
      });
    });

    this.style.maxHeight = this.clientHeight + 'px';

    //добавляем Ajax к первой форме
    if ($fio.value != '' && $email.value != '') {
      if (!$error.classList.contains('hide')) {
        $error.classList.add('hide');
      }

      let xhr = new XMLHttpRequest();
      xhr.open(
        'GET',
        `/handlers/mailBack.php?fio="${$fio.value}"&email="${$email.value}"`
      );
      xhr.send();

      xhr.onload = () => {
        this.style.maxHeight = '0';
        let $text = document.querySelector('.header__feedback-text');
        $text.style.opacity = '0';
        if (xhr.response) {
          $text.innerHTML =
            'Спасибо за Вашу заявку.</br> Наш менеджер в ближайшее время свяжется с Вами!';
        } else {
          $text.innerHTML =
            'К сожалению по техническим причинам отправка не удалась... </br>Попробуйте повторить запрос позднее.';
        }
        setTimeout(() => {
          $text.style.opacity = '1';
        }, 700);
      };
    }
    e.preventDefault();
  });

  //добавляем валидацию данных ко второй форме
  document.forms[1].addEventListener('submit', function(e) {
    let $error = document.querySelector('p.error-text--2');

    for (let i = 0; i < this.elements.length - 1; i++) {
      let $item = this.elements[i];

      if ($item.value == '') {
        $item.classList.add('input-error');
        $error.classList.remove('hide');
      } else {
        $item.classList.remove('input-error');
      }

      $item.addEventListener('input', () => {
        if ($item.value == '') {
          $item.classList.add('input-error');
          $error.classList.remove('hide');
        } else {
          $item.classList.remove('input-error');
        }
      });
    }

    if (
      this.elements[0].value != '' &&
      this.elements[1].value != '' &&
      this.elements[2].value != ''
    ) {
      if (!$error.classList.contains('hide')) {
        $error.classList.add('hide');
      }

      this.style.maxHeight = this.clientHeight + 'px';

      let xhr = new XMLHttpRequest();
      let data = new FormData(this);

      xhr.open('POST', '/handlers/messages.php');
      xhr.send(data);
      xhr.onload = () => {
        this.style.maxHeight = '0';
        let response;
        if (xhr.response) {
          response =
            'Спасибо за Ваш вопрос!<br>В ближайшее время с Вами свяжется наш менеджер.';
        } else {
          response =
            'К сожалению по техническим причинам отправка на сервер не удалась...<br>Просим повторить запрос позднее.';
        }
        setTimeout(() => {
          this.style.display = 'none';
          document.querySelector(
            '.contacts__form-success'
          ).innerHTML = response;
          document
            .querySelector('.contacts__form-success')
            .classList.remove('hide');
        }, 1000);
      };
    }

    e.preventDefault();
  });
};
