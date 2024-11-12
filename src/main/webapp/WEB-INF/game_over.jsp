<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <title>Ви перемогли!</title>
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/steles.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

</head>
<body>
<!-- Панель навігації -->
<ul class="topnav">
    <li><a class="active" href="#home">Гловна</a></li>
    <li><a href="#news">Новини</a></li>
    <li><a href="#contact">Контакти</a></li>
    <li class="right"><a href="#about">Про нас</a></li>
</ul>

<!-- Основний контент сторінки -->
<section class="main-page victory-page">
    <div class="wrapper">
        <div class="main-page-text-container">
            <h1 class="main-page-title1">Поразка!</h1>
            <p class="main-page-descr1">На жаль, ви зазнали поразки. Не хвилюйтесь, у вас буде шанс спробувати знову!</p>
            <button class="main-page-btn1" onclick="window.location.href='${pageContext.request.contextPath}/';">На головну</button>
        </div>
        <div class="victory-image-container">
            <img src="${pageContext.request.contextPath}/img/monster-3255249_1920.png" alt="Victory Image" class="victory-image">

        </div>
        <p class="main-page-descr2">Дякуємо за гру!</p>
    </div>
</section>

<footer id="footer" class="footer-1">
    <div class="main-footer widgets-dark typo-light">
        <div class="container">
            <div class="row">
                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="widget subscribe no-box">
                        <h5 class="widget-title">Company TextQuestJava<span></span></h5>
                        <p>TextQuestJava — компанія-розробник інтерактивних текстових квестів, що занурюють гравців у захоплюючі історії. Ми спеціалізуємось на створенні квестів, які випробовують логіку, кмітливість та уяву користувачів. Наша мета — дарувати незабутні емоції через інтерактивні пригоди. </p>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="widget no-box">
                        <h5 class="widget-title">Швидкі посилання<span></span></h5>
                        <ul class="thumbnail-widget">
                            <li>
                                <div class="thumb-content"><a href="#.">Почати роботу</a></div>  
                            </li>
                            <li>
                                <div class="thumb-content"><a href="#.">Toп лідери</a></div>  
                            </li>
                            <li>
                                <div class="thumb-content"><a href="#.">Історії успіху</a></div>  
                            </li>
                            <li>
                                <div class="thumb-content"><a href="#.">Подія/Квитки</a></div>  
                            </li>
                            <li>
                                <div class="thumb-content"><a href="#.">Новини</a></div>  
                            </li>
                            <li>
                                <div class="thumb-content"><a href="#.">Спосіб життя</a></div>  
                            </li>
                            <li>
                                <div class="thumb-content"><a href="#.">Про нас</a></div>  
                            </li>
                        </ul>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-3">
                    <div class="widget no-box">
                        <h5 class="widget-title">Почніть роботу<span></span></h5>
                        <p>Отримайте доступ до свого повного пакету навчання та маркетингу.</p>
                        <a class="btn" href="#." target="_blank">Зареєструватися зараз</a>
                    </div>
                </div>

                <div class="col-xs-12 col-sm-6 col-md-3">

                    <div class="widget no-box">
                        <h5 class="widget-title">Наші контакти<span></span></h5>

                        <p><a href="mailto:info@domain.com" title="glorythemes">questjava@gmail.com</a></p>
                        <ul class="social-footer2">
                            <li class=""><a title="youtube" target="_blank" href="/"><img alt="youtube" width="30" height="30" src="img/youtube-svgrepo-com.svg"></a></li>
                            <li class=""><a href="/" target="_blank" title="Facebook"><img alt="Facebook" width="30" height="30" src="img/facebook-svgrepo-com.svg"></a></li>
                            <li class=""><a href="/" target="_blank" title="Twitter"><img alt="Twitter" width="30" height="30" src="img/twitter-svgrepo-com.svg"></a></li>
                            <li class=""><a title="instagram" target="_blank" href="/"><img alt="instagram" width="30" height="30" src="img/instagram-svgrepo-com.svg"></a></li>
                        </ul>
                    </div>
                </div>

            </div>
        </div>
    </div>

    <div class="footer-copyright">
        <div class="container">
            <div class="row">
                <div class="col-md-12 text-center">
                    <p>TextQuestJava © 2024. Усі права захищено.</p>
                </div>
            </div>
        </div>
    </div>
</footer>

</body>
</html>
