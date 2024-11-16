package com.radetskaya.service;

import com.radetskaya.data.Question;
import com.radetskaya.data.User;
import com.radetskaya.repository.UserRepository;
import com.radetskaya.service.exception.GameException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
//QuestService - клас-сервіс, що відповідає за взаємодію класу QuestServlet з класом UserRepository, оновлення статистики та зміну питань
public class QuestService {
    private static final Logger LOGGER = LoggerFactory.getLogger(QuestService.class);
    private final UserRepository userRepository;

    public QuestService(UserRepository userRepository) {
        this.userRepository = userRepository;
        LOGGER.info("create userRepository");
    }

    public Question nextQuestion(Question currentQuestion, String numberAnswer) {
        isNull(currentQuestion);
        isNull(numberAnswer);

        int index;
        try {
            index = Integer.parseInt(numberAnswer);
        } catch (NumberFormatException e) {
            LOGGER.error("{} is not number", numberAnswer);
            throw new GameException("numberAnswer is not number", e);
        }

        lessThanZero(index);
        indexGreaterThanAnswerSize(currentQuestion, index);

        LOGGER.debug("nextQuestion({}, {}) return {}", currentQuestion, numberAnswer, currentQuestion.getAnswers().get(index).getNextQuestion());
        return currentQuestion.getAnswers().get(index).getNextQuestion();
    }

    private static void lessThanZero(int index) {
        if (index < 0) {
            LOGGER.error("response number [{}] < 0", index);
            throw new GameException("response number < 0");
        }
    }

    private static void indexGreaterThanAnswerSize(Question currentQuestion, int index) {
        if (index >= currentQuestion.getAnswers().size()) {
            LOGGER.error("response number [{}] >= answerSize {}", index, currentQuestion.getAnswers().size());
            throw new GameException("response number >= answerSize");
        }
    }

    private static void isNull(String numberAnswer) {
        if (numberAnswer == null) {
            LOGGER.error("numberAnswer is null");
            throw new GameException("numberAnswer is null");
        }
    }

    private static void isNull(Question currentQuestion) {
        if (currentQuestion == null) {
            LOGGER.error("currentQuestion is null");
            throw new GameException("currentQuestion is null");
        }
    }

    public int upgradeStatistics(String name) {
        if (name == null) {
            LOGGER.error("name is null");
            throw new GameException("name is null");
        }

        User user = userRepository.fetchByName(name);
        int gamesNumber = user.getGamesNumber() + 1;
        user.setGamesNumber(gamesNumber);
        userRepository.save(user);

        LOGGER.debug("upgradeStatistics({}) return {}", name, gamesNumber);
        return gamesNumber;
    }
}