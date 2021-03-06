 domains
%mk = mata kuliah, m = mahasiswa, n = nilai
mk,m,n=symbol
predicates
nondeterm n(m,n)
nondeterm diambil(mk,m,m,m,m,m)
nondeterm nm(m,m,m,m,m,n,n,n,n,n)
nondeterm lulus(m)
nondeterm taklulus(m)

clauses
diambil(intelejensi_buatan,irfan,komeng,dati,fatima,maspion). %mahasiswa yg mengambil matkul intelejensi
diambil(pde,ricky,embang,salmin,vina,sondang).			%mahasiswa yg mengambil matkul PDE
diambil(sistem_operasi,pamuji,luki,sadek,yusida,eka).		%mahasiswa yg mengambil SO

nm(irfan,komeng,dati,fatima,maspion,a,d,c,b,c).	%nilai dari mahasiswa
nm(ricky,embang,salmin,vina,sondang,e,a,d,b,c).	%nilai dari mahasiswa
nm(pamuji,luki,sadek,yusida,eka,d,e,b,a,a).	%nilai dari mahasiswa

n(M,N):-nm(M,_,_,_,_,N,_,_,_,_);nm(_,M,_,_,_,_,N,_,_,_); %aturan nilai mahasiswa| N1 adlah nilai dari M1 (hingga N-n dan M-n)|menjelaskan logika bahwa n adlah nilai dari m
nm(_,_,M,_,_,_,_,N,_,_);nm(_,_,_,M,_,_,_,_,N,_);nm(_,_,_,_,M,_,_,_,_,N).%aturan nilai mahasiswa| N1 adlah nilai dari M1 (hingga N-n dan M-n)|menjelaskan logika bahwa n adlah nilai dari m

lulus(M):-n(M,N),N=a;n(M,N),N=b;n(M,N),N=c. %aturan mahasiswa lulus : mahsiswa harus punya nilai n(M,N) dan nilai masing mahasiswa harus : N=a; N=b; N=c 
taklulus(M):-n(M,_),not(lulus(M)).%aturan mahasiswa !lulus : mahasiswa harus punya nilai, dan ingakran dari aturan lulus ( NOT(lulus(M)) )

goal
write("Mahasiswa yang mengambil matkul Intelejensi Buatan:"),nl,diambil(intelejensi_buatan,M1,M2,M3,M4,M5); %menampilkan mahasiswa yang mengambil matkul intelejensi
nl,write("Mahasiswa yang tidak lulus:"),nl,taklulus(Mahasiswa); %menampilkan mahasiswa yang tak lulus 
nl,write("Mahasiswa yang lulus:"),nl,lulus(Mahasiswa); %menampilkan mahasiswa yang lulus
nl,write("Seluruh Mata Kuliah:"),nl,diambil(Matakuliah,_,_,_,_,_); %menampilkan seluruh matakuliah dan dengan mengabaikan siapa yg mengambil matkul tersebut
nl,write("Seluruh Mahasiswa:"),nl,diambil(_,M1,M2,M3,M4,M5).	%menampilkan seluruh mahasiswa dan dengan mengabaikan matkul yg ada