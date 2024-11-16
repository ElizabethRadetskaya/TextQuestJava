package com.radetskaya.data;

import org.junit.jupiter.api.BeforeEach;
import org.junit.jupiter.api.Test;
import org.mockito.Mock;

import static org.junit.jupiter.api.Assertions.*;

public class AnswerTest {
    private Answer answer;

    @Mock
    Question question;

    @BeforeEach
    void setup() {
        answer = Answer.builder()
                .text("1")
                .nextQuestion(question)
                .build();
    }

    @Test
    void test_getText() {
        String expected = "1";
        String actual = answer.getText();

        assertEquals(expected, actual);
    }

    @Test
    void test_getNextQuestion() {
        Question expected = question;
        Question actual = answer.getNextQuestion();

        assertEquals(expected, actual);
    }
}
//Поле question позначено як @Mock, що означає, що це об'єкт-заглушка, створений для імітації поведінки реального об'єкта Question
//Метод setup() позначений анотацією @BeforeEach, що означає, що він виконується перед кожним тестом
//Метод getText(): він має повертати текст, заданий у будівельнику.
//Метод getNextQuestion(): він має повертати об'єкт наступного запитання (question), який був переданий у будівельнику.
