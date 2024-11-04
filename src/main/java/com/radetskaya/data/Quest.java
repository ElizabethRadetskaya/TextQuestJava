package com.radetskaya.data;

import java.util.List;

public class Quest {
    private Question q1 = Question.builder()
            .text("Твою ложь разоблачили. Поражение")
            .img("game_over.jpg")
            .isLoose(true)
            .build();
    private Question q2 = Question.builder()
            .text("Ты не пошел на переговоры. Поражение")
            .img("game_over.jpg")
            .isLoose(true)
            .build();
    private Question q3 = Question.builder()
            .text("Ты отклонил вызов. Поражение")
            .img("game_over.jpg")
            .isLoose(true)
            .build();
    private Question q4 = Question.builder()
            .text("Тебя вернули домой. Победа!")
            .img("victory.jpg")
            .isWin(true)
            .build();
    private Question q5 = Question.builder()
            .text("Ты поднялся на мостик. Ты кто?")
            .img("true_or_false.jpg")
            .answers(List.of(
                    Answer.builder()
                            .text("Рассказать правду о себе")
                            .nextQuestion(q4)
                            .build(),
                    Answer.builder()
                            .text("Солгать о себе")
                            .nextQuestion(q1)
                            .build()))
            .build();
    private Question q6 = Question.builder()
            .text("Ты принял вызов. Поднимаешься на мостик к капитану?")
            .img("bridge_of_ship.jpg")
            .answers(List.of(
                    Answer.builder()
                            .text("Подняться на мостик")
                            .nextQuestion(q5)
                            .build(),
                    Answer.builder()
                            .text("Отказаться подниматься на мостик")
                            .nextQuestion(q2)
                            .build()))
            .build();
    private Question q7 = Question.builder()
            .text("Ты потерял память. Принять вызов НЛО?")
            .img("ufo.jpg")
            .answers(List.of(
                    Answer.builder()
                            .text("Принять вызов")
                            .nextQuestion(q6)
                            .build(),
                    Answer.builder()
                            .text("Отклонить вызов")
                            .nextQuestion(q3)
                            .build()))
            .build();

    public Question getInitialQuestion() {
        return q7;
    }
}