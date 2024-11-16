package com.radetskaya.service;

import com.radetskaya.data.User;
import com.radetskaya.repository.UserRepository;
import com.radetskaya.service.exception.GameException;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
//InitialService - клас-сервіс, що відповідає за взаємодію класу InitialServlet з класом UserRepository

public class InitialService {
    private static final Logger LOGGER = LoggerFactory.getLogger(InitialService.class);
    private final UserRepository userRepository;

    public InitialService(UserRepository userRepository) {
        this.userRepository = userRepository;
        LOGGER.info("create initialService");
    }

    public User initOrCreateUser(String name) {
        if (name == null) {
            LOGGER.error("name is null");
            throw new GameException("name is null");
        }

        User user;
        if (userRepository.isExists(name)) {
            user = userRepository.fetchByName(name);
        } else {
            user = new User(name, 0);
            LOGGER.info("create new user");
            userRepository.save(user);
        }

        LOGGER.debug("initOrCreateUser({}) return new user", name);
        return user;
    }
}