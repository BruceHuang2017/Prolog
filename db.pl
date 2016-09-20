% Prolog programs are a collection of Facts, and Rules that we can
% Query.

% Prolog focuses on describing facts and relationships about problems
% rather then on creating a series of steps to solve that problem.

% These Facts and Rules are stored in a file called a Database
% or Knowledge Base

% You load a knowledge base like this [knowledge]. or this
% consult('knowledge.pl').
% halt. exits the prolog system
% listing. Displays the contents of the database
% All these commands are called predicates

% ---------- INTRODUCTION ----------
% write prints text between quotes to the screen
% nl stands for new line and \'s allows you to use quotes
% write('Hello World'),nl,write('Let\'s Program').

% This is a fact where loves is a predicate and romeo and
% juliet are atoms (constants) and loves arguments
loves(romeo, juliet).

% This is a rule where :- (if) says if the item on the right is
% true, then so is the item on the left
loves(juliet, romeo) :- loves(romeo, juliet).

% Evaluating whether the goal was met in the terminal
% loves(juliet, romeo). = yes

% Facts and Rules are called clauses

% A Variable is an object we can't name at the time of execution
% Variables are uppercase while atoms are lowercase
% loves(romeo, X). = X = juliet

% ---------- FACTS ----------
% Write the relationship first followed by the objects between
% parenthese followed by a dot

% albert, male, female are atom constants that must begin with a
% lowercase letter unless they are between single quotes
% An atom can contain letters, numbers, +, -, _, *, /, <, >, :, ., ~, &
% AN ATOM CANNOT START WITH _

% The name before parenthese is called the predicate
% The names in parenthese are called arguments

% Let's define information about the people above

male(albert).
male(bob).
male(bill).
male(carl).
male(charlie).
male(dan).
male(edward).

female(alice).
female(betsy).
female(diana).

% We can find out if alice is a woman with
% female(alice). = yes
% listing(male). = list all clauses defining the predicate male
% male(X), female(Y). = Show all combinations of male and female

% ---------- RULES ----------
% Rules are used when you want to say that a fact depends on a group of facts

% NOTE : You'll get the discontiguous predicate warning if you
% don't keep your predicates together

happy(albert).
happy(alice).
happy(bob).
happy(bill).
with_albert(alice).

% We can define the Fact that when Bob is happy he runs
% :- stands for if
runs(albert) :- happy(albert).
% runs(albert). = yes

% We can check if 2 conditions are true by putting a comma (and)
% between questions (CONJUCTIONS)
dances(alice) :-
  happy(alice),
    with_albert(alice).

    % We can define predicates to keep commands brief
    does_alice_dance :- dances(alice),
           write('When Alice is happy and with Albert she dances').
           % Just type does_alice_dance. in the terminal

           % Both rules must be true to get a yes result
           swims(bob) :-
             happy(bob),
               near_water(bob).
               % swims(bob). = no

               % We can create 2 instances and if either comes back true the result
               % will be yes
               swims(bill) :-
                 happy(bill).

                 swims(bill) :-
                   near_water(bill).
                   % swims(bill). = yes

                   % ---------- VARIABLES ----------
                   % A variable is an object we are unable to name when writing a program.
                   % An instantiated variable is one that stands for an object.
                   % A variable begins with an uppercase letter or _ and can contain
                   % the same symbols as atoms.
                   % The same variable name used in 2 different questions represents 2
                   % completely different variables.

                   % An uninstantiated variable can be used to search for any match.

                   % Return all females (Type ; to cycle through them)
                   % female(X). X = alice X = betsy X = diana

                   parent(albert, bob).
                   parent(albert, betsy).
                   parent(albert, bill).

                   parent(alice, bob).
                   parent(alice, betsy).
                   parent(alice, bill).

                   parent(bob, carl).
                   parent(bob, charlie).

                   % When you are cycling through the results the no at the end signals
                   % that there are no more results
                   % parent(X, bob). X = albert, X = alice

                   % parent(X, bob), dances(X). X = alice

                   % Who is Bobs parent? Does he have parents?
                   % parent(Y, carl), parent(X, Y). = X = albert, Y = bob, X = alice
                   % Y = bob

                   % Find Alberts grandchildren
                   % Is Albert a father? Does his children have any children?
                   % parent(albert, X), parent(X, Y). = X = bob, Y = carl, X = bob,
                   % Y = charlie

                   % Use custom predicate for multiple results
                   get_grandchild :- parent(albert, X), parent(X, Y),
                                 write('Alberts grandchild is '),
                                               write(Y), nl.

                                               % Do Carl and Charlie share a parent
                                               % Who is Carls parent? Is this same X a parent of Charlie
                                               % parent(X, carl), parent(X, charlie). = X = bob

                                               % Use format to get the results
                                               % ~w represents where to put each value in the list at the end
                                               % ~n is a newline
                                               % ~s is used to input strings
                                               get_grandparent :- parent(X, carl),
                                                               parent(X, charlie),
                                                                               format('~w ~s grandparent~n', [X, "is the"]).

                                                                               % Does Carl have an Uncle?
                                                                               % Who is Carls parent? Who is Carls fathers brother?
                                                                               brother(bob, bill).
                                                                               % parent(X, carl), brother(X, Y). = X = bob, Y = bill

                                                                               % Demonstrate axioms and derived facts
                                                                               % We can also use variables in the database
                                                                               % If you get the singleton warning, that means you defined a variable
                                                                               % that you didn't do anything with. (This is ok sometiltiple results
                                                                               get_grandchild :- parent(albert, X), parent(X, Y),
                                                                                             write('Alberts t,
                                                                                                           write('Alberts grandchild is '),
                                                                                                                         wum share a parent
                                                                                                                         % Who is Carls parent? Is this same X a parent of Charlie
                                                                                                                         % parent(X, carl), partcCharlie
                                                                                                                         % parent(X, carl), parent(X, charlie). = X = bob

                                                                                                                         % Use  =esents where to put each value in the list at the end
                                                                                                                         % ~n is a newline
                                                                                                                         % ~s is used to input strs(wline
                                                                                                                     % ~s is used to input strings
                                                                                                                 get_grandparent :- parent(X,seharlie),
                                                                                                                             format('~w ~s grandparent~n', [X, "is the"]).

                                                                                                                         % Does Carl have an Uncle v"]).

                                                                                                                         % Does Carl have an Uncle?
                                                                                                                         % Who is Carls parent? Who is Cleill).
                                                                                                                     % parent(X, carl), brother(X, Y). = X = bob, Y = bill

                                                                                                                     % Demonstrate axioms and derived facthaonstrate axioms and derived facts
                                                                                                                     % We can also use variables inwreton warning, that means you defined a variable
                                                                                                                     % that you didn't do anything with. (This is ok sorado anything with. (This is ok sometiltiple results
                                                                                                                     get_grandchilru,
                                                                                                                                   write('Alberts t,
                                                                                                                                                 write('Alberts grandchild is '),
                                                                                                                                                               wumxtndchild is '),
                                                                                                                                                                             wum share a parent
                                                                                                                                                                             % Who is Carls p Darlie
                                                                                                                                                                             % parent(X, carl), partcCharlie
                                                                                                                                                                             % parent(X, carl), parent(X, charlie). = X = bob

                                                                                                                                                                             % Use  =esun charlie). = X = bob

                                                                                                                                                                             % Use  =esents where to put each value in  Se
                                                                                                                                                                             % ~s is used to input strs(wline
                                                                                                                                                                             % ~s is used to input strings
                                                                                                                                                                             get_grandparent :- parent(X,sehare
                                                                                                                                                                             et_grandparent :- parent(X,seharlie),
                                                                                                                                                                                             format('~w

                                                                                                                                                                                             % owns(albert, pet(cat, X)). : X = olive

                                                                                                                                                                                             customer(tom, smith, 20.55).
                                                                                                                                                                                             customer(sally, smith, 120.55 is Carls parent? Who is Cleill).
                                                                                                                                                                                             % parent(X, carl), brother(X, ette axioms and derived facthaonstrate axioms and derived facts
                                                                                                                                                                                             % We can also use variables inwretonts can also use variables inwreton warning, that means you defined fthing with. (This is ok sorado anything with. (This is ok sometiltiple results
                                                                                                                                                                                             get_grandchilru,
                                                                                                                                                                                               b(iple results
                                                                                                                                                                                               get_grandchilru,
                                                                                                                                                                                                             write('Alberts t,
                                                                                                                                                                                                               exd is '),
                                                                                                                                                                                                                             wumxtndchild is '),
                                                                                                                                                                                                                                           wum share a parent
                                                                                                                                                                                                                                           % Who is Carls p Darli), a parent
                                                                                                                                                                                                                                           % Who is Carls p Darlie
                                                                                                                                                                                                                                           % parent(X, carl), partcCharli vie). = X = bob

                                                                                                                                                                                                                                           % Use  =esun charlie). = X = bob

                                                                                                                                                                                                                                           % Use  =esents where to put each value in  Se
                                                                                                                                                                                                                                           %

                                                                                                                                                                                                                                           here to put each value in  Se
                                                                                                                                                                                                                                           % ~s is used to input strs(wline
                                                                                                                                                                                                                                           %icndparent :- parent(X,sehare
                                                                                                                                                                                                                                           et_grandparent :- parent(X,seharlie),
                                                                                                                                                                                                                                                           format('~w

                                                                                                                                                                                                                                                           % owts                format('~w

                                                                                                                                                                                                                                                           % owns(albert, pet(cat, X)). : X = o--ustomer(sally, smith, 120.55 is Carls parent? Who is Cleill).
                                                                                                                                                                                                                                                           % parent(X, carl), brother(X, ette aberent(X, carl), brother(X, ette axioms and derived facthaonstrateualso use variables inwretonts can also use variables inwreton warning, that means you defined fthinsing, that means you defined fthing with. (This is ok sorado anyth Results
                                                                                                                                                                                                                                                           get_grandchilru,
                                                                                                                                                                                                                                                             b(iple results
                                                                                                                                                                                                                                                             get_grandchilru,
                                                                                                                                                                                                                                                                           write('Alberts t,
                                                                                                                                                                                                                                                                             exd isgs is another variable

                                                                                                                                                                                                                                                                             % If variables can be matched up between 2 cent
                                                                                                                                                                                                                                                                             % Who is Carls p Darli), a parent
                                                                                                                                                                                                                                                                             % Who is Carls p Darlie
                                                                                                                                                                                                                                                                             % parent(X, carl), partcCharli vie).(Yrent(X, carl), partcCharli vie). = X = bob

                                                                                                                                                                                                                                                                             % Use  =esun charlieseo put each value in  Se
                                                                                                                                                                                                                                                                             %

                                                                                                                                                                                                                                                                             here to put each value in  Se
                                                                                                                                                                                                                                                                             % ~s is used to input strs(wline
                                                                                                                                                                                                                                                                             %icndpa_mused to input strs(wline
                                                                                                                                                                                                                                                                             %icndparent :- parent(X,sehare
                                                                                                                                                                                                                                                                             et_grand_h          format('~w

                                                                                                                                                                                                                                                                             % owts                format('~w

                                                                                                                                                                                                                                                                             % owns(albert, pet(cat, X)). : X = o--ustol(ert, pet(cat, X)). : X = o--ustomer(sally, smith, 120.55 is Carlll, carl), brother(X, ette aberent(X, carl), brother(X, ette axioms and derived facthaonstrateualso miand derived facthaonstrateualso use variables inwretonts can als4 at means you defined fthinsing, that means you defined fthing with. (This is ok sorado anyth Resulal. (This is ok sorado anyth Results
                                                                                                                                                                                                                                                                             get_grandchilru,
                                                                                                                                                                                                                                                                               b(iple res(pwrite('Alberts t,
                                                                                                                                                                                                                                                                                 exd isgs is another variable

                                                                                                                                                                                                                                                                                 % If variables can be matched up between 2 cent
                                                                                                                                                                                                                                                                                 ) an be matched up between 2 cent
                                                                                                                                                                                                                                                                                 % Who is Carls p Darli), a parenEx, carl), partcCharli vie).(Yrent(X, carl), partcCharli vie). = X = bob

                                                                                                                                                                                                                                                                                 % Use  =esun charlieseo puha bob

                                                                                                                                                                                                                                                                                 % Use  =esun charlieseo put each value in  Se
                                                                                                                                                                                                                                                                                 %

                                                                                                                                                                                                                                                                                 here to oto input strs(wline
                                                                                                                                                                                                                                                                                 %icndpa_mused to input strs(wline
                                                                                                                                                                                                                                                                                 %icndparent :- parent(X,sehare
                                                                                                                                                                                                                                                                                 et_grand_h    write(X),nl.

                                                                                                                                                                                                                                                                                 % ---------- RECURSION ----------

                                                                                                                                                                                                                                                                                 /*
                                                                                                                                                                                                                                                                                 parent(albert, bet(cat, X)). : X = o--ustol(ert, pet(cat, X)). : X = o--ustomer(sally, smith, 120.55 is Carlll, cat(lly, smith, 120.55 is Carlll, carl), brother(X, ette aberent(X, rkrived facthaonstrateualso miand derived facthaonstrateualso use variables inwretonts can als4 at mh riables inwretonts can als4 at means you defined fthinsing, that ps is ok sorado anyth Resulal. (This is ok sorado anyth Results
                                                                                                                                                                                                                                                                                 get_grandchilru,
                                                                                                                                                                                                                                                                                   b(iple res(pwrit= _grandchilru,
                                                                                                                                                                                                                                                                                     b(iple res(pwrite('Alberts t,
                                                                                                                                                                                                                                                                                       exd isgs is anot--matched up between 2 cent
                                                                                                                                                                                                                                                                                       ) an be matched up between 2 cent
                                                                                                                                                                                                                                                                                       % Who is Carls p Darli), a parenEx, ca= is Carls p Darli), a parenEx, carl), partcCharli vie).(Yrent(X, % % Use  =esun charlieseo puha bob

                                                                                                                                                                                                                                                                                       % Use  =esun charlieseo put each value in  Se
                                                                                                                                                                                                                                                                                       %

                                                                                                                                                                                                                                                                                       here to oto in to check for not equal)
                                                                                                                                                                                                                                                                                       % 5+4 =:= 4+5. = yes (Check for equality bent(X,sehare
                                                                                                                                                                                                                                                                                       et_grand_h    write(X),nl.

                                                                                                                                                                                                                                                                                       % ---------- RECURSION ----------

                                                                                                                                                                                                                                                                                       /*
                                                                                                                                                                                                                                                                                       parent(albert, bet(c < 100. (Checks if 1 OR the other is true)

                                                                                                                                                                                                                                                                                       % X is mod(7,2). = X = 1mith, 120.55 is Carlll, cat(lly, smith, 120.55 is Carlll, carl), brother(X, ette aberent(X, rkriveultiply it times 2 and return it as the
                                                                                                                                                                                                                                                                                       % 2nd argument

                                                                                                                                                                                                                                                                                       % Get randoms inwretonts can als4 at mh riables inwretonts can als4 at means you defined fthinsing, that ps is Aou defined fthinsing, that ps is ok sorado anyth Resulal. (This
                                                                                                                                                                                                                                                                                       %chilru,
                                                                                                                                                                                                                                                                                         b(iple res(pwrit= _grandchilru,
                                                                                                                                                                                                                                                                                           b(iple res(pwrite('Alberts t,
                                                                                                                                                                                                                                                                                             exd isgs is anot--matcouerts t,
                                                                                                                                                                                                                                                                                               exd isgs is anot--matched up between 2 cent
                                                                                                                                                                                                                                                                                               ) an be maisls p Darli), a parenEx, ca= is Carls p Darli), a parenEx, carl), partcCharli vie).(Yrent(X, % % Us iartcCharli vie).(Yrent(X, % % Use  =esun charlieseo puha bob

                                                                                                                                                                                                                                                                                               % )
                                                                                                                                                                                                                                                                                                in  Se
                                                                                                                                                                                                                                                                                                %

                                                                                                                                                                                                                                                                                                here to oto in to check for not equal)
                                                                                                                                                                                                                                                                                                % 5+4 =:= 4+5. = yes (Check for equality bent(X t= yes (Check for equality bent(X,sehare
                                                                                                                                                                                                                                                                                                et_grand_h    write(X),n I-

                                                                                                                                                                                                                                                                                                /*
                                                                                                                                                                                                                                                                                                parent(albert, bet(c < 100. (Checks if 1 OR the other is true)

                                                                                                                                                                                                                                                                                                % X is mod(7,2). = X = 1mithd e)

                                                                                                                                                                                                                                                                                                % X is mod(7,2). = X = 1mith, 120.55 is Carlll, cat(lly, smiX)(X, ette aberent(X, rkriveultiply it times 2 and return it as the
                                                                                                                                                                                                                                                                                                % 2nd argument

                                                                                                                                                                                                                                                                                                % Get randoms init% 2nd argument

                                                                                                                                                                                                                                                                                                % Get randoms inwretonts can als4 at mh riables  sined fthinsing, that ps is Aou defined fthinsing, that ps is ok sorado anyth Resulal. (This
                                                                                                                                                                                                                                                                                                %chillurado anyth Resulal. (This
                                                                                                                                                                                                                                                                                                %chilru,
                                                                                                                                                                                                                                                                                                  b(iple res(pwrit= _grandchle, text to write, connection
                                                                                                                                                                                                                                                                                                  % to the file (Stream)
                                                                                                                                                                                                                                                                                                  write_to_file(File, Text) :-
                                                                                                                                                                                                                                                                                                    open(File, write,  between 2 cent
                                                                                                                                                                                                                                                                                                    ) an be maisls p Darli), a parenEx, ca= is Carlsm arli vie).(Yrent(X, % % Us iartcCharli vie).(Yrent(X, % % Use  =esun charlieseo puha bob

                                                                                                                                                                                                                                                                                                    % )
                                                                                                                                                                                                                                                                                                     in   un charlieseo puha bob

                                                                                                                                                                                                                                                                                                     % )
                                                                                                                                                                                                                                                                                                      in  Se
                                                                                                                                                                                                                                                                                                      %

                                                                                                                                                                                                                                                                                                      here to oto in to check nt(Check for equality bent(X t= yes (Check for equality bent(X,sehare
                                                                                                                                                                                                                                                                                                      et_grand_h    write(X),n I-

                                                                                                                                                                                                                                                                                                      /hae
                                                                                                                                                                                                                                                                                                      et_grand_h    write(X),n I-

                                                                                                                                                                                                                                                                                                      /*
                                                                                                                                                                                                                                                                                                      parent(albert, bet(c < 100. (C oX is mod(7,2). = X = 1mithd e)

                                                                                                                                                                                                                                                                                                      % X is mod(7,2). = X = 1mith, 120.55 is Carlll, cat(lly, smiX)(X, te55 is Carlll, cat(lly, smiX)(X, ette aberent(X, rkriveultiply itChargument

                                                                                                                                                                                                                                                                                                      % Get randoms init% 2nd argument

                                                                                                                                                                                                                                                                                                      % Get randoms inwretonts can als4 at mh riables  sinedtets can als4 at mh riables  sined fthinsing, that ps is Aou defint_nyth Resulal. (This
                                                                                                                                                                                                                                                                                                      %chillurado anyth Resulal. (This
                                                                                                                                                                                                                                                                                                      %chilru,
                                                                                                                                                                                                                                                                                                        b(iple res(pwrit= _grandchle, teigb(iple res(pwrit= _grandchle, text to write, connection
                                                                                                                                                                                                                                                                                                        % to the Aext) :-
                                                                                                                                                                                                                                                                                                          open(File, write,  between 2 cent
                                                                                                                                                                                                                                                                                                          ) an be maisls p Darli), a parenEx, ca= is Carlsm arli 1), a parenEx, ca= is Carlsm arli vie).(Yrent(X, % % Us iartcCharowrlieseo puha bob

                                                                                                                                                                                                                                                                                                          % )
                                                                                                                                                                                                                                                                                                           in   un charlieseo puha bob

                                                                                                                                                                                                                                                                                                           % )
                                                                                                                                                                                                                                                                                                            in  Se
                                                                                                                                                                                                                                                                                                            %

                                                                                                                                                                                                                                                                                                            here to oto in to check nt(Chert

                                                                                                                                                                                                                                                                                                            here to oto in to check nt(Check for equality bent(X t= yes (Cy rand_h    write(X),n I-

                                                                                                                                                                                                                                                                                                            /hae
                                                                                                                                                                                                                                                                                                            et_grand_h    write(X),n I-

                                                                                                                                                                                                                                                                                                            /*
                                                                                                                                                                                                                                                                                                            parent(albert, bet(c < 100. (C oX is('nt(albert, bet(c < 100. (C oX is mod(7,2). = X = 1mithd e)

                                                                                                                                                                                                                                                                                                            % X  the number'), nl,
                                                                                                                                                                                                                                                                                                              loop(Guess).

                                                                                                                                                                                                                                                                                                              % guess_num.
                                                                                                                                                                                                                                                                                                              % Guess Number 12.
                                                                                                                                                                                                                                                                                                              % 12 is not the number
                                                                                                                                                                                                                                                                                                              % Guess Numbberent(X, rkriveultiply itChargument

                                                                                                                                                                                                                                                                                                              % Get randoms init% 2nd arAN als4 at mh riables  sinedtets can als4 at mh riables  sined fthinsing, that ps is Aou defint_nyth
                                                                                                                                                                                                                                                                                                              %sing, that ps is Aou defint_nyth Resulal. (This
                                                                                                                                                                                                                                                                                                              %chillurado anymi res(pwrit= _grandchle, teigb(iple res(pwrit= _grandchle, text to write, connection
                                                                                                                                                                                                                                                                                                              % to the Aext)apwrite, connection
                                                                                                                                                                                                                                                                                                              % to the Aext) :-
                                                                                                                                                                                                                                                                                                                open(File, write,  between
                                                                                                                                                                                                                                                                                                                larenEx, ca= is Carlsm arli 1), a parenEx, ca= is Carlsm arli vie).(Yrent(X, % % Us iartcCharowrlieo,(Yrent(X, % % Us iartcCharowrlieseo puha bob

                                                                                                                                                                                                                                                                                                                % )
                                                                                                                                                                                                                                                                                                                 in   un charlro to oto in to check nt(Chert

                                                                                                                                                                                                                                                                                                                 here to oto in to check nt(Check for equality bent(X t= yes (Cy randse equality bent(X t= yes (Cy rand_h    write(X),n I-

                                                                                                                                                                                                                                                                                                                 /hae
                                                                                                                                                                                                                                                                                                                 et_grad(ert, bet(c < 100. (C oX is('nt(albert, bet(c < 100. (C oX is mod(7,2). = X = 1mithd e)

                                                                                                                                                                                                                                                                                                                 % X  the nat,2). = X = 1mithd e)

                                                                                                                                                                                                                                                                                                                 % X  the number'), nl,
                                                                                                                                                                                                                                                                                                                   loop(Guess).

                                                                                                                                                                                                                                                                                                                   % g benvolio). = yes

                                                                                                                                                                                                                                                                                                                   % Delete a clause
                                                                                                                                                                                                                                                                                                                   % retract(likes(mercutio,dancing)).
                                                                                                                                                                                                                                                                                                                   % likes(mercutio,dancing). = % Get randoms init% 2nd arAN als4 at mh riables  sinedtets can a fthat ps is Aou defint_nyth
                                                                                                                                                                                                                                                                                                                   %sing, that ps is Aou defint_nyth Resulal. (This
                                                                                                                                                                                                                                                                                                                   %chillurado anymi reslial. (This
                                                                                                                                                                                                                                                                                                                   %chillurado anymi res(pwrit= _grandchle, teigb(iple ror connection
                                                                                                                                                                                                                                                                                                                   % to the Aext)apwrite, connection
                                                                                                                                                                                                                                                                                                                   % to the Aext) :-
                                                                                                                                                                                                                                                                                                                     open(File, write,  between
                                                                                                                                                                                                                                                                                                                     larentaopen(File, write,  between
                                                                                                                                                                                                                                                                                                                     larenEx, ca= is Carlsm arli 1), a par l(X, % % Us iartcCharowrlieo,(Yrent(X, % % Us iartcCharowrlieseo puha bob

                                                                                                                                                                                                                                                                                                                     % )
                                                                                                                                                                                                                                                                                                                      in   un charlro to % ha bob

                                                                                                                                                                                                                                                                                                                      % )
                                                                                                                                                                                                                                                                                                                       in   un charlro to oto in to check nt(Chert

                                                                                                                                                                                                                                                                                                                       here tility bent(X t= yes (Cy randse equality bent(X t= yes (Cy rand_h    write(X),n I-

                                                                                                                                                                                                                                                                                                                       /hae
                                                                                                                                                                                                                                                                                                                       et_grad(ert,iables to the left
                                                                                                                                                                                                                                                                                                                       % of |

                                                                                                                                                                                                                                                                                                                       %[X1, X2, X3, X4|T] = [a,b,c,d].

                                                                                                                                                                                                                                                                                                                       % We can use the anonymous variable _ when we need to reference a
                                                                                                                                                                                                                                                                                                                       % variable, but we don't want its value
                                                                                                                                                                                                                                                                                                                       %), nl,
                                                                                                                                                                                                                                                                                                                         loop(Guess).

                                                                                                                                                                                                                                                                                                                         % g benvolio). = yes

                                                                                                                                                                                                                                                                                                                         % Delete a clause
                                                                                                                                                                                                                                                                                                                         %,c likes(mercutio,dancing). = % Get randoms init% 2nd arAN als4 at mh riables  sinedtets can a fthat, h riables  sinedtets can a fthat ps is Aou defint_nyth
                                                                                                                                                                                                                                                                                                                         %sing, th1 his
                                                                                                                                                                                                                                                                                                                         %chillurado anymi reslial. (This
                                                                                                                                                                                                                                                                                                                         %chillurado anymi res(pwrit= _grandchle, teigb(iple ror conme= _grandchle, teigb(iple ror connection
                                                                                                                                                                                                                                                                                                                         % to the Aext)apwrite, cX)ile, write,  between
                                                                                                                                                                                                                                                                                                                         larentaopen(File, write,  between
                                                                                                                                                                                                                                                                                                                         larenEx, ca= is Carlsm arli 1), a par l(X, it= is Carlsm arli 1), a par l(X, % % Us iartcCharowrlieo,(Yrent(Xte

                                                                                                                                                                                                                                                                                                                         % )
                                                                                                                                                                                                                                                                                                                          in   un charlro to % ha bob

                                                                                                                                                                                                                                                                                                                          % )
                                                                                                                                                                                                                                                                                                                           in   un charlro to oto in to check nt(Chert

                                                                                                                                                                                                                                                                                                                           here tility er to check nt(Chert

                                                                                                                                                                                                                                                                                                                           here tility bent(X t= yes (Cy randse equalit, X),n I-

                                                                                                                                                                                                                                                                                                                           /hae
                                                                                                                                                                                                                                                                                                                           et_grad(ert,iables to the left
                                                                                                                                                                                                                                                                                                                           % of |

                                                                                                                                                                                                                                                                                                                           %[X1, X2, X3, X4|T] = [a,b,c,d].

                                                                                                                                                                                                                                                                                                                           % We can us,1 X4|T] = [a,b,c,d].

                                                                                                                                                                                                                                                                                                                           % We can use the anonymous variable _ when Stut we don't want its value
                                                                                                                                                                                                                                                                                                                           %), nl,
                                                                                                                                                                                                                                                                                                                             loop(Guess).

                                                                                                                                                                                                                                                                                                                             % g benvolio). = yes

                                                                                                                                                                                                                                                                                                                             % Delete a clause
                                                                                                                                                                                                                                                                                                                             %,c likCo= yes

                                                                                                                                                                                                                                                                                                                             % Delete a clause
                                                                                                                                                                                                                                                                                                                             %,c likes(mercutio,dancing). = % Get rastles  sinedtets can a fthat, h riables  sinedtets can a fthat ps is Aou defint_nyth
                                                                                                                                                                                                                                                                                                                             %sing, th1 his do Aou defint_nyth
                                                                                                                                                                                                                                                                                                                             %sing, th1 his
                                                                                                                                                                                                                                                                                                                             %chillurado anymi reslial. (Thi from a string
                                                                                                                                                                                                                                                                                                                             /*
                                                                                                                                                                                                                                                                                                                             name('Derek', List),
                                                                                                                                                                                                                                                                                                                             nth0(0, List, FChar),
                                                                                                                                                                                                                                                                                                                             put(FChar).
                                                                                                                                                                                                                                                                                                                             */

                                                                                                                                                                                                                                                                                                                             % Get length of the strinn
                                                                                                                                                                                                                                                                                                                             % to the Aext)apwrite, ))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))')))")')'))

