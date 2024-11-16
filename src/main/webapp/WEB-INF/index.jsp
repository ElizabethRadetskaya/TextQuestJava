<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html lang="en">
<head> <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>TextQuest</title>
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Montserrat:ital,wght@0,100..900;1,100..900&display=swap" rel="stylesheet"/>
    <link rel="preload" href="./img/gus-anim.gif" as="image">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/steles.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

    <style>
        body {margin: 0;}

        ul.topnav {
            list-style-type: none;
            margin: 0;
            padding: 0;
            overflow: hidden;
            background-color: #333;
        }

        ul.topnav li {float: left;}

        ul.topnav li a {
            display: block;
            color: white;
            text-align: center;
            padding: 14px 16px;
            text-decoration: none;
        }

        ul.topnav li a:hover:not(.active) {background-color: #111;}
        ul.topnav li a.active {background-color: #4CAF50;}
        ul.topnav li.right {float: right;}

        @media screen and (max-width: 600px) {
            ul.topnav li.right,
            ul.topnav li {float: none;}
        }


    </style>
</head>
<body>

<ul class="topnav">
     <li><a class="active" href="#home">Гловна</a></li>
     <li><a href="#news">Новини</a></li>
     <li><a href="#contact">Контакти</a></li>
     <li class="right"><a href="#about">Про нас</a></li>
</ul>

<section class="main-page">

    <div class="wrapper">

        <div class="main-page-text-container">
            <p class="main-page-text-hello">Тебе вітає королівство</p>
            <h1 class="main-page-title">Аретус</h1>
            <p class="main-page-descr">Ти стоїш на пагорбі й дивишся на землі королівства Аретус,
             які простягаються аж до горизонту. Колись квітучі та багаті, ці землі тепер перетворилися на пустку, огорнуту темрявою і страхом.<br>
             Усе почалося кілька місяців тому, коли Темний маг на ім’я Моракс з’явився у королівстві,
             принесши із собою прокляття, яке пожирає життя й надію. Він перетворив ріки на отруту,
             а ліси на згарища, і тепер жодна людина, жодна тварина не може спокійно жити на цих землях.
             Король Аретус, старий і мудрий володар, зібрав усіх лицарів і закликав їх на пошуки легендарного
             артефакту — Амулету Сонця. Згідно з давніми легендами, Амулет має силу знищити найтемніші закляття і
             розсіяти будь-яку магічну пітьму. Але знайти його непросто — він схований у далекій пустелі за горами,
             у печері, яку охороняють древні магічні пастки і створіння.<br>
             Ти, молодий лицар на ім'я Ельдар, виявив бажання прийняти цей виклик. <br>
             Твоє серце сповнене рішучості й хоробрості, але ти знаєш, що шлях буде важким
             і небезпечним. У королівстві поширюються чутки, що інші лицарі, які вирушили на пошуки,
             так і не повернулися.<br>
             Король прощається з тобою біля воріт замку:
             "Ельдаре, моє королівство покладає на тебе останню надію.
             Амулет Сонця — єдиний спосіб врятувати наші землі. Будь пильним і хоробрим, бо на шляху
             тебе чекають випробування, яким і назви не можна знайти. Якщо ж ти зможеш здолати всі перешкоди,
             знайдеш Амулет і принесеш його сюди — ти отримаєш вічну славу та станеш захисником нашого народу".
             Ти підіймаєш меч, киваєш королю і вирушаєш у невідомість, розуміючи, що твоя подорож тільки починається.<br>
            Чи зможеш ти знайти Амулет Сонця, здолати Моракса і врятувати королівство?
             </p>
            <button class="main-page-btn" id="go-to-form-btn">Докладніше</button>
        </div> <img src="img/warrior-1982054_1920.png" alt="Bandergus">
    </div>
</section>

<section class="facts" >
    <img src="img/trezub.svg" alt="Trezub" class="facts-trezub">
    <h2 class="facts-title">Вітаю у квесті, лицаре!</h2>
    <p class="facts-deskr"> Ти — молодий лицар королівства Аретус. Темний маг наклав прокляття на землі, і
        король звернувся до тебе з проханням знайти легендарний артефакт — Амулет Сонця,
        що захований у далекій пустелі. Артефакт здатен знищити прокляття і врятувати
        королівство. Ти вирушаєш у небезпечну подорож. На шляху тебе чекають різні
        випробування, що визначатимуть твою долю.
        Так що вперед!</p>
    <form action="${pageContext.request.contextPath}/initial" method="post">
         <label for="name"></label>
         <input type="text" id="name" name="name" required size="20" maxlength="20">
         <button type="submit" class="btn btn-success">Представтеся</button>
         </form>
    <img src="img/ai-generated-8736872_1920.jpg" alt="Lizar" class="lizar">



</section>
<section class="form-container">
    <form action="#" class="form" id="form">
        <img src="img/trezub.svg" alt="Trezub" class="form-trezub"/>
        <h4 class="fom-title">Поділися, будь ласка, поштою</h4>
        <p class="form-descr">та підпиши лицаря на нові квести</p>

        <div class="form-field form-field-name">
            <label for="user-name" class="form-field-label">Ім'я</label>
            <input type="text" id="user-name" class="form-input" required>
        </div>
        <div class="form-field form-field-email">
            <label for="user-email" class="form-field-label">Email</label>
            <input type="email" id="user-email" class="form-input" required>
        </div>

        <button type="submit" class="form-btn" id="launch-btn">Відправити</button>
    </form>

</section>
<script src="js/form.js"></script>

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

