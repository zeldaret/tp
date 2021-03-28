lbl_809BBDC0:
/* 809BBDC0  38 80 00 00 */	li r4, 0
/* 809BBDC4  B0 83 00 00 */	sth r4, 0(r3)
/* 809BBDC8  38 00 00 01 */	li r0, 1
/* 809BBDCC  B0 03 00 02 */	sth r0, 2(r3)
/* 809BBDD0  90 83 00 04 */	stw r4, 4(r3)
/* 809BBDD4  4E 80 00 20 */	blr 
