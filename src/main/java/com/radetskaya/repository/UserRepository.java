package com.radetskaya.repository;

import com.radetskaya.data.User;
import com.radetskaya.service.exception.GameException;
import org.slf4j.LoggerFactory;

import java.util.Map;


import org.slf4j.Logger;
//UserRepository - клас, що описує сховище користувачів
public class UserRepository {
    private static final Logger LOGGER = LoggerFactory.getLogger(UserRepository.class);
    private final Map<String, User> users;

    public UserRepository(Map<String, User> users) {
        this.users = users;
        LOGGER.info("create userRepository");
    }

    public void save(User user) {
        isNull(user);
        users.put(user.getName(), user);
        LOGGER.debug("users put {}", user.getName());
    }

    public User fetchByName(String name) {
        isNull(name);
        LOGGER.debug("fetchByName({}) return {}", name, users.get(name));
        return users.get(name);
    }

    public boolean isExists(String name) {
        isNull(name);
        LOGGER.debug("isExists({}) return user from userRepository", name);
        return users.containsKey(name);
    }

    private static void isNull(User user) {
        if (user == null) {
            LOGGER.error("user is null");
            throw new GameException("user is null");
        }
    }

    private static void isNull(String name) {
        if (name == null) {
            LOGGER.error("name is null");
            throw new GameException("name is null");
        }
    }
}