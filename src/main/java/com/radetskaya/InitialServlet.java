package com.radetskaya;

import com.radetskaya.data.Question;
import com.radetskaya.data.User;
import com.radetskaya.service.InitialService;
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
//InitialServlet - сервлет, який відповідає за ініціалізацію користувача та першого питання квесту
//Він обробляє HTTP-запит POST, зберігає дані в сесії та перенаправляє користувача на сторінку quest.jsp, де починається квест
@WebServlet(name = "initialServlet", value = "/initial")
public class InitialServlet extends HttpServlet {
    private static final Logger LOGGER = LoggerFactory.getLogger(InitialServlet.class);

    private Question currentQuestion;
    private InitialService initialService;

    @Override
    public void init(ServletConfig config) throws ServletException {
        super.init(config);
        initialService = (InitialService) config.getServletContext().getAttribute("initialService");
        currentQuestion = (Question) config.getServletContext().getAttribute("initialQuestion");
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession currentSession = request.getSession();

        currentSession.setAttribute("currentQuestion", currentQuestion);

        String name = request.getParameter("name");
        User user = initialService.initOrCreateUser(name);

        currentSession.setAttribute("name", name);
        LOGGER.debug("currentSession.setAttribute(name, {})", name);
        currentSession.setAttribute("count", user.getGamesNumber());
        LOGGER.debug("currentSession.setAttribute(count, {})", user.getGamesNumber());

        LOGGER.debug("start quest.jsp");
        getServletContext()
                .getRequestDispatcher("/WEB-INF/quest.jsp")
                .forward(request, response);
    }
}