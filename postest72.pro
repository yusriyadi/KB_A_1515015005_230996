/*****************************************************************************

		Copyright (c) 1984 - 2000 Prolog Development Center A/S

 Project:  
 FileName: CH07E02.PRO
 Purpose: 
 Written by: PDC
 Modifyed by: Eugene Akimov
 Comments: 
******************************************************************************/

domains
  list = integer* /* or whatever type you want to use */

predicates
  length_of(list,integer) - procedure (i,o)

clauses
  length_of([], 0)./* 
  2- karena isi list 1,2,3 , saat ini klausa di pending
  6- kemudian kita check lagi disini apakah length_of list nya sudah [] ternyata belum maka masih kita pending dulu 
  10- kita kembali ke klausa ini dan nilai length_of nya masih bernilai ([3],2) dan belum [] 
  14- saat kita kembali kesini saat kita lihat ya saat ini lenght_of nya telah menjadi ([],dan Lnya 3)*/
  
  length_of([_|T],L):-/*3- saat ini klausa ini yang kita ketahui adalah head nya 1 dan T nya 2,3,[],dan L masih 0
  7- pisahkan head dan tailnya untuk tahap ini, diketahui headnya adalah 2 dan T nya 3,[] dan L telah bernilai 1 
  11- pisahkan head dan tailnya jadi saat ini head nya 3 dan T nya [] Dan L nya 2
  */
	length_of(T,TailLength), /*
	4- dan Length_of nya saat ini (2,3,[] dan taillenght nya 0 karena pada klausa yg terpending sebelumnya L atau Tailenght itu masih bernilai 0
	8- length_of sekarang menjadi ([3], dan tailength bernilai 1 karena L dan TailLength itu sama
	12- kemudian Length_of nya ([],2)*/
	L = TailLength + 1. % 5. Lenght tadi yang awalnya dia bernilai 0 mengalami increment +1
	/*9- dan tailength nya pada tahap kedua ini 1+1 sehingga saat ini L atau TailLenght ini menjadi 2
	13- kemudian nilai L samadengan 2+1 menjadi tiga*/ 

goal
  length_of([1,2,3],L)./*1- goal mencari nilai L dimana dengan list [1,2,3] untuk mencari nilai dari L kemudian dilakukan pengecekan klausa*/
