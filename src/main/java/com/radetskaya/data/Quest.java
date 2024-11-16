package com.radetskaya.data;

import java.util.List;

//Quest - клас, що описує логіку квесту (взаємозв'язок питань із відповідями)

public class Quest {

    // Спочатку оголошуємо всі змінні
    private Question defeatLies;
    private Question refuseChallenge;
    private Question retreatFromBattle;
    private Question victory;
    private Question confrontation;
    private Question negotiateChoice;
    private Question battleChoice;
    private Question trustBuilding;

    // Конструктор класу Quest, де ми ініціалізуємо всі питання
    public Quest() {
        // Ініціалізація кінцевих станів (поразка та перемога)
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

        // Ініціалізація основних питань з посиланням на кінцеві стани та інші питання
        battleChoice = Question.builder()
                .text("Чудовисько сильне. Чи будеш ти боротися до кінця?")
                .img("rock-8884129_1920.jpg")
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
                .text("Чудовисько не довіряє тобі і випробує твою чесність. Чи скажеш ти правду про свою місію?")
                .img("gargoyle-8788128_1920.jpg")
                .answers(List.of(
                        Answer.builder()
                                .text("Розповісти правду про свою місію")
                                .nextQuestion(trustBuilding)
                                .build(),
                        Answer.builder()
                                .text("Збрехати, сказавши, що ти мандрівний торговець")
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

    // Початкова точка квесту
    public Question getInitialQuestion() {
        return confrontation;
    }
}
