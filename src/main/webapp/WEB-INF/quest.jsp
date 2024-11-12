<%@ page contentType="text/html;charset=UTF-8" %>
<<html lang="en">
<head>
     <title>Текстовий квест</title>
     <link rel="stylesheet" href="${pageContext.request.contextPath}/css/bootstrap.css">
    <link rel="stylesheet" href="${pageContext.request.contextPath}/css/steles.css" />
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
    <script src="${pageContext.request.contextPath}/js/bootstrap.js"></script>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
</head>
 <body>
 <!-- Панель навігації -->
 <ul class="topnav">
     <li><a href="${pageContext.request.contextPath}/index.jsp">Головна</a></li>
    <li><a href="${pageContext.request.contextPath}/news.jsp">Новини</a></li>
     <li><a href="${pageContext.request.contextPath}/quests.jsp">Квести</a></li>
    <li class="right"><a href="${pageContext.request.contextPath}/about.jsp">Про нас</a></li>
     </ul>

<!-- Основний контент сторінки -->
 <section class="main-page victory-page">
     <div class="wrapper">
     <div class="main-page-text-container">
     <h1 style="color: green">${currentQuestion.getText()}</h1>

     <c:if test="${currentQuestion.isWin() || currentQuestion.isLoose()}">
     <button class="btn btn-danger btn-lg" type="submit">Почати занову</button>
     </form>
     </c:if>

     <c:if test="${!currentQuestion.isWin() && !currentQuestion.isLoose()}">
     <form action="${pageContext.request.contextPath}/quest" method="post">
     <c:forEach var="i" begin="1" end="${currentQuestion.getAnswers().size()}">
     <input class="ms-3 me-1" type="radio" name="numberAnswer"
            value="${i - 1}"/>${currentQuestion.getAnswers().get(i - 1).getText()}
     <br>
     </c:forEach>
    <div class="btn2">
     <button class="mt-3 btn btn-success" type="submit">Відповісти</button>
     </div>
     </form>
     </c:if>
     </div>
    <div class="victory-image-container">
     <img class="victory-image" src=${pageContext.request.contextPath}/img/${currentQuestion.getImg()}  alt="Victory Image">
     </div>

     <div class="btn1">
     <button class="btn btn-primary" type="button" data-bs-toggle="collapse"
                         data-bs-target="#collapseWidthExample" aria-expanded="false" aria-controls="collapseWidthExample">
     Статистика
     </button>
     </div>
     <div style="min-height: 120px">
     <div class="collapse collapse-horizontal" id="collapseWidthExample">
     <div class="card card-body" style="width: 300px">
     <b>IP address:</b> <i>${pageContext.getRequest().getRemoteAddr()}</i>
     <br>
     <b>Ім'я в грі:</b> <i>${name}</i>
     <br>
     <b>Кількість зіграних ігор:</b> <i>${count}</i>
    </div>
    </div>
     </div>

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

