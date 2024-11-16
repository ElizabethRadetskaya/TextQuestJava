package com.radetskaya.data;

import lombok.AllArgsConstructor;
import lombok.Data;

//User - клас, що описує користувача

@Data
@AllArgsConstructor
public class User {
    private String name;
    private int gamesNumber;
}