DOMAINS
orang = orang(nama,alamat) %deklarasi objek orang dengan memiliki terdiri dari 2 argumen nama dan alamat
nama = nama(pertama,kedua)	%dan nama tediri dari 2 argumen nama pertama dan kedua
alamat = alamat(jalan,kota_kab,propinsi)  %alamat terdiri dari  3 argumen jalan, kota kabupaten, dan provinsi
jalan = jalan(nama_jalan,nomor) %jalan terdiri dari namajalan dan nomer	

kota_kab,propinsi,nama_jalan = string %pendlarasian tipe data
pertama,kedua = symbol			%pendlarasian tipe data
nomor = integer				%pendlarasian tipe data

GOAL
P1 = orang(nama(diena,fatihah),alamat(jalan("Wijaya Kusuma", 12), "Berbah", "DIY")),%flag0 
P1 = orang(nama(_,fatihah),Alamat), %flag1
P2 = orang(nama(nur,fatihah),Alamat), %flag2

write("P1=",P1),nl, %akan menampilkan flag1
write("P2=",P2),nl. %akan menampilkan flag2

%pertama write akan di tampilkan terlebih dahulu, kemudian menampil kan goals yg pertma yaitu flag0-2