package com.radetskaya;

import com.radetskaya.data.Question;
import com.radetskaya.service.QuestService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;

import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;
//QuestServlet - сервлет, який відповідає за зміну питань квесту
@WebServlet(name = "questServlet", value = "/quest")
public class QuestServlet extends HttpServlet {
    private static final Logger LOGGER = LoggerFactory.getLogger(QuestServlet.class);
    private QuestService questService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        questService = (QuestService) config.getServletContext().getAttribute("questService");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        if (request.getParameter("numberAnswer") != null) {
            HttpSession currentSession = request.getSession();

            Question currentQuestion = (Question) currentSession.getAttribute("currentQuestion");
            String numberAnswer = request.getParameter("numberAnswer");

            currentQuestion = questService.nextQuestion(currentQuestion, numberAnswer);

            currentSession.setAttribute("currentQuestion", currentQuestion);

            if (currentQuestion.isWin()) {
                // Якщо перемога, перенаправляємо на `victory.jsp`
                LOGGER.debug("Перемога досягнута, перенаправлення на victory.jsp");
                getServletContext().getRequestDispatcher("/WEB-INF/victory.jsp").forward(request, response);
                return;
            } else if (currentQuestion.isLoose()) {
                // Якщо поразка, перенаправляємо на `game_over.jsp`
                LOGGER.debug("Поразка, перенаправлення на game_over.jsp");
                getServletContext().getRequestDispatcher("/WEB-INF/game_over.jsp").forward(request, response);
                return;
            }
        }

        LOGGER.debug("start quest.jsp");
        getServletContext()
                .getRequestDispatcher("/WEB-INF/quest.jsp")
                .forward(request, response);
    }
}
