У кореневому пакеті проекту src/main/java/com/radetskaya знаходяться класи:

AppContextListener, який ініціалізується під час завантаження програми
IndexServlet - початковий сервлет
InitialServlet - сервлет, який відповідає за ініціалізацію користувача та першого питання квесту
QuestServlet - сервлет, який відповідає за зміну питань квесту

У пакеті data містяться класи:

Answer - клас, що описує відповідь на запитання
Quest - клас, що описує логіку квесту (взаємозв'язок питань із відповідями)
Question - клас, що описує питання квесту
User - клас, що описує користувача
UserRepository - клас, що описує сховище користувачів

У пакеті service міститься пакет exception c класом GameException, що описує власний виняток програми, та класи:

InitialService - клас-сервіс, що відповідає за взаємодію класу InitialServlet з класом UserRepository
QuestService - клас-сервіс, що відповідає за взаємодію класу QuestServlet з класом UserRepository, оновлення статистики та зміну питань

У пакеті src/main/webapp/WEB-INF міститься:

index.jsp - відповідальний за побудову привітальної (точки входу в квест) html-сторінки
quest.jsp - відповідальний за побудову html-сторінки з питанням та відповідями