DOMAINS

benda = buku(judul, pengarang) ;kuda(nama) ; kapal ; %pendeklarasian objek benda yaitu buku,kuda,kapal. buku memiliki 2 argumen judul dan pengarang. kuda terdiri dari 1 argumen . kapal 

bukubank(saldo)
judul, pengarang, nama = symbol
saldo = real

PREDICATES
nondeterm milik(nama,benda)

CLAUSES
milik(erwin, buku("Markesot Bertutur", "Emha Ainun Najib")). %ini fakta
milik(erwin, kuda(buraq)).					%ini fakta
milik(erwin, kapal).						%ini fakta
milik(erwin, bukubank(1000)).						%ini fakta

GOAL
milik(erwin, Benda). %menampilkan semua benda milik erwin