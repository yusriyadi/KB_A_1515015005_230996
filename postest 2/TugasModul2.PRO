Predicates

nondeterm wanita(Symbol)
nondeterm pria(Symbol)
nondeterm ayah(Symbol,Symbol)
nondeterm istri(Symbol,Symbol)
nondeterm anak(Symbol,Symbol)
nondeterm ibu(Symbol,Symbol)
nondeterm adik(Symbol,Symbol)
nondeterm cucu(Symbol,Symbol)
nondeterm kakek(Symbol,Symbol)
nondeterm usia(Symbol,Integer)

Clauses
anak("jhon","james").
anak("james","peter").
anak("sue","ann").
istri("mary","peter").
istri("ann","james").

pria("jhon").
pria("james").
pria("peter").

wanita("mary").
wanita("sue").
wanita("ann").

usia("sue",13).
usia("jhon",10).

ayah(A,B):-anak(B,A),pria(A).
kakek(A,B):-ayah(A,C),ayah(C,B).
ibu(A,B):-istri(A,C),anak(B,C).
cucu(A,B):-anak(A,C),anak(C,B).
cucu(A,B):-anak(A,C),istri(C,D),anak(D,B).
adik(A,B):-usia(A,C),usia(B,D),C<D.

goal
ayah(Ayah,_);
cucu(Cucu,_);
ibu(Ibu,_);
adik(AdiK,_);
kakek(Kakek,_).