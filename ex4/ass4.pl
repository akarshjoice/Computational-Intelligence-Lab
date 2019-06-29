amount_saved(22000).
earnings(25000,0).
dependents(3).


investment(savings):- savings_account(inadequate).
investment(stocks):- savings_account(adequate),income(adequate).
investment(combination):-savings_account(adequate),income(inadequate).
savings_account(adequate):-amount_saved(X),dependents(Y),minsavings(Y,Z),greater(X,Z).
savings_account(inadequate):-amount_saved(X),dependents(Y),minsavings(Y,Z),smaller(X,Z).
income(inadequate):-earnings(X,0),dependents(Y),minincome(Y,Z),smaller(X,Z).
income(adequate):-earnings(X,0),dependents(Y),minincome(Y,Z),greater(X,Z).
income(inadequate):-earnings(X,1).
minsavings(Y,Z):-Z is Y*5000.
minincome(Y,Z) :-Z is 15000+(4000*Y).
greater(X,Y):- X>Y.
smaller(X,Y) :- X<Y.