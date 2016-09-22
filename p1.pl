trans(97, id).
trans(98, id).
trans(99, id).

trans(40, lt_paren).
trans(41, rt_paren).
trans(43, add_op).
trans(42, mul_op).
trans(45, sub_op).
trans(47, div_op).
trans(94, pow_op).
trans(61, equal_sign).

trans(48, 0).
trans(49, 1).
trans(50, 2).
trans(51, 3).
trans(52, 4).
trans(53, 5).
trans(54, 6).
trans(55, 7).
trans(56, 8).
trans(57, 9).

tokenizer([], []).
tokenizer([StrH | StrT], Result):-
    del([32], StrT, StrT),
    trans(StrH, X),
    append(Result, X, Result),
    tokenizer(StrT, Result).


