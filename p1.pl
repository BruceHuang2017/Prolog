tokenizer([], []).

tokenizer([97 | T], [id | R]) :- tokenizer(T, R).
tokenizer([98 | T], [id | R]) :- tokenizer(T, R).
tokenizer([99 | T], [id | R]) :- tokenizer(T, R).

tokenizer([40 | T], [lt_paren | R]) :- tokenizer(T, R).
tokenizer([41 | T], [rt_paren | R]) :- tokenizer(T, R).
tokenizer([42 | T], [mul_op | R]) :- tokenizer(T, R).
tokenizer([43 | T], [add_op | R]) :- tokenizer(T, R).
tokenizer([45 | T], [sub_op | R]) :- tokenizer(T, R).
tokenizer([47 | T], [div_op | R]) :- tokenizer(T, R).
tokenizer([61 | T], [equal_sign | R]) :- tokenizer(T, R).
tokenizer([94 | T], [pow_op | R]) :- tokenizer(T, R).

tokenizer([48 | T], [0 | R]) :- tokenizer(T, R).
tokenizer([49 | T], [1 | R]) :- tokenizer(T, R).
tokenizer([50 | T], [2 | R]) :- tokenizer(T, R).
tokenizer([51 | T], [3 | R]) :- tokenizer(T, R).
tokenizer([52 | T], [4 | R]) :- tokenizer(T, R).
tokenizer([53 | T], [5 | R]) :- tokenizer(T, R).
tokenizer([54 | T], [6 | R]) :- tokenizer(T, R).
tokenizer([55 | T], [7 | R]) :- tokenizer(T, R).
tokenizer([56 | T], [8 | R]) :- tokenizer(T, R).
tokenizer([57 | T], [9 | R]) :- tokenizer(T, R).

tokenizer([32 | T], R) :- tokenizer(T, R).
