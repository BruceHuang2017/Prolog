%set transmition between lexeme and token.
trans([97], [id]).
trans([98], [id]).
trans([99], [id]).

%trans('(', [lt_paren]).
trans([40], [lt_paren]).
%trans(')', [rt_paren]).
trans([41], [rt_paren]).
%trans(+, [add_op]).
trans([43], [add_op]).
%trans(*, [mul_op]).
trans([42], [mul_op]).
%trans(-, [sub_op]).
trans([45], [sub_op]).
%trans(/, [div_op]).
trans([47], [div_op]).
%trans(^, [pow_op]).
trans([94], [pow_op]).
%trans(=, [equal_sign]).
trans([61], [equal_sign]).

trans([48], [0]).
trans([49], [1]).
trans([50], [2]).
trans([51], [3]).
trans([52], [4]).
trans([53], [5]).
trans([54], [6]).
trans([55], [7]).
trans([56], [8]).
trans([57], [9]).
trans([32], []).

% algorithem
tokenizer(Str, ) :- 
  name(Str, [StrH|StrT]),
  StrH is [].
tokenizer(Str, Result) :-
  name(Str, [StrH|StrT]),
  trans(StrH, Y),
  append(Result, Y, Result),
  tokenizer(StrT, Result).

  
