package com.radetskaya.service;

import com.radetskaya.data.Answer;
import com.radetskaya.data.Question;

import java.util.List;

public class Quest {
    private Question defeatLies;
    private Question refuseChallenge;
    private Question retreatFromBattle;
    private Question victory;
    private Question battleChoice;
    private Question confrontation;
    private Question negotiateChoice;
    private Question trustBuilding;

    public Quest() {
        defeatLies = Question.builder()
                .text("Твою брехню викрито. Поразка.")
                .img("game_over.jpg")
                .isLoose(true)
                .build();

        refuseChallenge = Question.builder()
                .text("Ти відмовився від виклику. Поразка.")
                .img("game_over.jpg")
                .isLoose(true)
                .build();

        retreatFromBattle = Question.builder()
                .text("Ти втік з бою. Поразка.")
                .img("game_over.jpg")
                .isLoose(true)
                .build();

        victory = Question.builder()
                .text("Ти знайшов Амулет Сонця та врятував королівство! Перемога!")
                .img("victory.jpg")
                .isWin(true)
                .build();

        battleChoice = Question.builder()
                .text("Чудовисько сильне. Чи будеш ти боротися до кінця?")
                .img("battle_choice.jpg")
                .answers(List.of(
                        Answer.builder()
                                .text("Боротися до кінця")
                                .nextQuestion(victory)
                                .build(),
                        Answer.builder()
                                .text("Відступити з бою")
                                .nextQuestion(retreatFromBattle)
                                .build()))
                .build();

        negotiateChoice = Question.builder()
                .text("Чудовисько не довіряє тобі і випробує твою чесність. Чи скажеш ти правду про себе?")
                .img("fantasy-8082366_1920.jpg")
                .answers(List.of(
                        Answer.builder()
                                .text("Розповісти правду про свою місію")
                                .nextQuestion(trustBuilding)
                                .build(),
                        Answer.builder()
                                .text("Збрехати, сказавши, що ти торговець")
                                .nextQuestion(defeatLies)
                                .build()))
                .build();

        trustBuilding = Question.builder()
                .text("Чудовисько довіряє тобі і дозволяє пройти. Ти опинився перед входом у печеру. Увійдеш?")
                .img("gargoyle-8788128_1920.jpg")
                .answers(List.of(
                        Answer.builder()
                                .text("Увійти до печери")
                                .nextQuestion(victory)
                                .build(),
                        Answer.builder()
                                .text("Відступити")
                                .nextQuestion(refuseChallenge)
                                .build()))
                .build();

        confrontation = Question.builder()
                .text("На твоєму шляху стоїть чудовисько, яке охороняє перехід через ущелину. Ти готовий до бою?")
                .img("dragon-9159542_1920.png")
                .answers(List.of(
                        Answer.builder()
                                .text("Прийняти виклик і битися")
                                .nextQuestion(battleChoice)
                                .build(),
                        Answer.builder()
                                .text("Спробувати домовитися з чудовиськом")
                                .nextQuestion(negotiateChoice)
                                .build()))
                .build();
    }

    public Question getInitialQuestion() {
        return confrontation;
    }
}