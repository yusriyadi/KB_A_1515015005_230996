DOMAINS
	nama, jender, pekerjaan, benda, alasan, zat = symbol
	umur = integer

PREDICATES
	nondeterm orang (nama,umur,jender,pekerjaan)
	nondeterm selingkuh (nama,nama)
	terbunuh_dengan (nama,benda)
	terbunuh (nama)
	nondeterm pembunuh (nama)
	motif (alasan)
	ternodai (nama,zat)
	milik (nama,benda)
	nondeterm cara_kerja_mirip (benda,benda)
	nondeterm kemungkinan_milik (nama,benda)
	nondeterm dicurigai (nama)

CLAUSES
	orang (budi,55,m,tukang_kayu).		/*deklarasi fakta orang, ada pembunuh diantara mereka*/
	orang (aldi,25,m,pemain_sepak_bola).  
	orang (aldi,25,m,tukang_jagal).
	orang (joni,25,m,pencopet).		/*deklarasi fakta orang, ada pembunuh diantara mereka*/
	selingkuh (ina,joni)./*selingkuh bisa menjadi motif pembunuhan*/
	selingkuh (ina,budi). /*selingkuh bisa menjadi motif pembunuhan*/
	selingkuh (siti,joni)./*selingkuh bisa menjadi motif pembunuhan*/
 	terbunuh_dengan (siti,pentungan). /*korbannya siti,terbunuh dengan pentungan*/
	terbunuh (siti).
	 motif (uang).	/*kemungkinan motif pembunuhan karena*/
	motif (cemburu). /*kemungkinan motif pembunuhan karena*/
	motif (dendam).	/*kemungkinan motif pembunuhan karena*/
 	ternodai (budi,darah). %ada tanda darah 
	ternodai (siti,darah).	%ada tanda darah
	ternodai (aldi,lumpur). %ada tanda lumpur	
	ternodai (joni,coklat). %ada tanda coklat
	ternodai (ina,coklat).
	milik (budi,kaki_palsu). /*ada barang bukti dan diketahui pemiliknya ada kemungkinan dapat menjadi pentungan*/
	milik (joni,pistol).	/*ada barang bukti dan diketahui pemiliknya*/
	
 	cara_kerja_mirip (kaki_palsu,pentungan). /*kemungkinan barang dapat digunakan untuk pembunuhan*/
	cara_kerja_mirip (balok,pentungan).	/*kemungkinan barang dapat digunakan untuk pembunuhan*/
	cara_kerja_mirip (gunting,pisau).	/*kemungkinan barang dapat digunakan untuk pembunuhan*/
	cara_kerja_mirip (sepatu_bola,pentungan)./*kemungkinan barang dapat digunakan untuk pembunuhan*/
	
	kemungkinan_milik (X,sepatu_bola):- /*disisni dibuat aturan untuk menentukan pemilik barang sesuai dengan pekerjaann orangnya*/
	orang (X,_,_,pemanin_bola). 
	
	kemungkinan_milik (X,gunting):- /*disisni dibuat aturan untuk menentukan pemilik barang sesuai dengan pekerjaann orangnya*/
	orang (X,_,_,pekerja_salon).
	
kemungkinan_milik (X,Benda):- /*kemungkinan orang lain juga memiliki barang */
	milik (X,Benda).
	
dicurigai (X):-
	terbunuh_dengan (siti,Senjata), /*mencari senjata yang kemungkinan dapat membunuh siti dengan pentungan*/
	cara_kerja_mirip (Benda,Senjata), /*mencari benda yang dapat digunakan sebagai pentungan*/
	kemungkinan_milik (X,Benda). /*budi dicurigai */
	
dicurigai (X):-
	motif (cemburu), /*mencari orang yg mempunyai motif pembunuhan berdasar motif cemburu*/
	orang (X,_,m,_),
	selingkuh (siti,X). /*aturan ini mencurigai budi karena kaki palsu dapat di jadikan pentungan*/
 dicurigai (X):-
	motif (cemburu),  /*disini dicari wanita pembunuh berdasar motif cemburu */
	orang (X,_,f,_),
	selingkuh (X,Lakilaki),
	selingkuh (siti,Lakilaki). 
	/*disini ina dicurigai sebgai pembunuhnya*/
	
 dicurigai (X):-
	motif (uang), /*mencari orang yg mempunyai motif pembunuhan berdasar motif uang*/
	orang (X,_,_,pencopet). /*aturan ini mencurigai doni*/
	
 pembunuh (Pembunuh):- /*aturan mencari the real pembunuh*/
	orang (Pembunuh,_,_,_), /*pembunuh harus orang*/
	terbunuh (Terbunuh), /*harus ada korban terbunuh*/
	Terbunuh <> Pembunuh, /*korban terbunuh bukan menjadi pembunuh*/
	dicurigai (Pembunuh), /*harus orang yg dicurigai sebagai pembunuh*/
	ternodai (Pembunuh,Zat),
	ternodai (Terbunuh,Zat). /*pembunuh harus memiliki noda yg sama dengan terbunuh*/
	
	
GOAL
pembunuh (X). /*budi lah pembunuhnya*/
