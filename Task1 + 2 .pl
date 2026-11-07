%%Task 1

square_area(S, A) :- A is S * S.
square_perimeter(S, P) :- P is 4 * S.

rectangle_area(L, W, A) :- A is L * W.
rectangle_perimeter(L, W, P) :- P is 2 * (L + W).

triangle_area(B, H, A) :- A is 0.5 * B * H.
triangle_perimeter(S1, S2, S3, P) :- P is S1 + S2 + S3.

%%Task2
user(ali, pass1).
user(ahmad, pass2).
user(sara, pass3).

login :- attempt(1).

attempt(N) :-
    N =< 3,
    write('Username: '), read(U),
    write('Password: '), read(P),
    check(U, P, N).

attempt(N) :-
    N > 3,
    write('Sorry, you exceeded the maximum number of attempts, try again later.'), nl.

check(U, P, _) :-
    user(U, P),
    write('Login Successful'), nl.

check(U, P, N) :-
    \+ user(U, P),
    write('Login Unsuccessful'), nl,
    N1 is N + 1,
    attempt(N1).
