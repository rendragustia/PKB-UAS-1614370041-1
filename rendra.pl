man(suwilo).
man(jodi).
man(ferdinan).
man(suwardi).
man(dani).
man(widodo).
man(wisnu).
man(boni).
man(erianto).

women(mirna).
women(kandi).
women(widya).
women(cindi).
women(jamila).
women(winarni).
women(kandi).

parents(suwilo, mirna).
parents(suwilo, jodi).
parents(suwilo, ferdinan).
parents(jodi, kandi).
parents(jodi, suwardi).
parents(mirna, dani).
parents(ferdinan, cindi).
parents(ferdinan, widodo).
parents(kandi, wisnu).
parents(suwardi, widya).
parents(suwardi, boni).
parents(cindi, erianto).
parents(cindi, jamila).
parents(widodo, wiharni).

child(Y,X):-parents(X,Y).
boy(X,Y):-parents(Y,X),man(X).
daughter(X,Y):-parents(Y,X),women(X).

keturunan(X,Y):-child(X,Y).
keturunan(X,Y):-child(X,Z),keturunan(Z,Y).

penerus(X,Y):-child(X,Y),man(X).
penerus(X,Y):-child(X,Z),penerus(Z,Y),man(X).