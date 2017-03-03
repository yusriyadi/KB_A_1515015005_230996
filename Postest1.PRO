
predicates

  nondeterm mahasiswa(symbol)
  nondeterm lvkerajinan(symbol) 
  nondeterm lulus(symbol,symbol)
  nondeterm ternyata(symbol,symbol)
  nondeterm anaksd(symbol)

clauses
lulus(X,Y):-mahasiswa(X),lvkerajinan(berusaha),ternyata(X,Y). %SYARAT lulus 1.mahasiswa;2.rajin


  mahasiswa(yusri). 	
  mahasiswa(hasim).	
  mahasiswa(udin).	
  mahasiswa(marcopolo).	
  anaksd(otong).	
  
  %dosen(berbahaya).
  %dosen(mendukung).

  lvkerajinan(berusaha).	
  lvkerajinan(bodoamat).	

ternyata(yusri,berusaha).	%PEMBUKTIAN yusri mahasiswa dan maubelajar
ternyata(hasim,bodoamat).	%PEMBUKTIAN hasim mahasiswa dan bodoamat
ternyata(otong,berusaha).	%PEMBUKTIAN otong bukan mahasiswa tapi maubelajar {kesasar}
ternyata(marcopolo,bodoamat).	%PEMBUKTIAN marcopolo mahasiswa dan bodoamat
ternyata(udin,berusaha).	%PEMBUKTIAN udin mahasiswa dan berusaha 

goal
lulus(Yang_Lulus,berusaha); %GOAL tampilkan mahasiswa yg lulus dengan indikator mau berusaha
lulus(Yang_tidak_lulus,bodoamat).  %GOAL tampilkan mahasiswa yg tidak lulus dengan indikator bodoamat