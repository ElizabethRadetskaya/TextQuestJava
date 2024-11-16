package com.radetskaya.data;

import lombok.Builder;
import lombok.Getter;

//Answer - клас, що описує відповідь на запитання

@Getter
@Builder
public class Answer {
    private String text;
    private Question nextQuestion;
}
