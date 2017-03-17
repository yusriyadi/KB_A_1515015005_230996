PREDICATES
putra(STRING,STRING)
saudara_perempuan(STRING,STRING)
saudara_laki(STRING,STRING)
menikah(STRING,STRING)
ayah(STRING ayah,STRING putra)
kakek(STRING kakek,STRING cucu)
nondeterm ipar_perempuan(STRING,STRING)

CLAUSES

putra("Ikhsan","Bentang").
saudara_perempuan("Dini","Dina"). %fakta 
saudara_laki("Adi","Lintang").
menikah("Ikhsan","Dini").
menikah("Lintang","Surga").

ayah(A,B):-putra(B,A). %bentang adlah ayah dari ikhsan karena ikhsan putra bentang
kakek(A,B):-ayah(A,C), ayah(C,B).

ipar_perempuan(A,B):-menikah(A,C), saudara_perempuan(C,B). %ikhsan menikah dengan dini saudara perempuan dina
ipar_perempuan(A,B):-saudara_laki(A,C), menikah(C,B).  %adi sodara laki-laki lintang, dan lintang menikasi surga berarti surga adalah ipar dari adi;

GOAL
ipar_perempuan("Ikhsan",X). %goalnya adlah menampil kan ipar dari ikhsan yaitu dina
%penjelasan : karena ikhsan menikah dengan dini berarti ipar ikhsan adalah dina; 