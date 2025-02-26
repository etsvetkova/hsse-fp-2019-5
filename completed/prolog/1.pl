% есть набор фактов вида father(person1, person2) (person1 is the father of person2)
% Необходимо определить набор предикатов:
% 1. brother(X,Y)    -  определяющий являются ли аргументы братьями
% 2. cousin(X,Y)     -  определяющий являются ли аргументы двоюродными братьями
% 3. grandson(X,Y)   -  определяющий является ли аргумент Х внуком аргумента Y
% 4. descendent(X,Y) -  определяющий является ли аргумент X потомком аргумента Y
% 5. используя в качестве исходных данных следующий граф отношений
	father(a,b).  % 1                 
	father(a,c).  % 2
	father(b,d).  % 3
	father(b,e).  % 4
	father(c,f).  % 5
%	 a
%   b c
%  de  f
%Y         X 
%a c f d e g
% указать в каком порядке и какие ответы генерируются вашими методами
	
	brother(X,Y):-father(Z,X),father(Z,Y), X\=Y.
	cousin(X,Y):-brother(M,N),father(M,X),father(N,Y).
	grandson(X,Y):-father(Y,M),father(M,X).
	
	descendent(X,Y):-father(Y,X).
	descendent(X,Y):-father(Y,B),descendent(X,B).
	
	?- brother(X,Y).
	?- cousin(X,Y).
	?- grandson(X,Y).
	?- descendent(X,Y).