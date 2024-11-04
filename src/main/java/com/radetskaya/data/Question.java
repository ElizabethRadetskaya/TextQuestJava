package com.radetskaya.data;

import lombok.Builder;
import lombok.Getter;

import java.util.List;


@Builder
@Getter
public class Question {
    String text;
    String img;

    @Builder.Default
    List<Answer> answers = List.of();
    boolean isWin;
    boolean isLoose;
}