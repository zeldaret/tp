lbl_80AFD0D0:
/* 80AFD0D0  38 80 00 00 */	li r4, 0
/* 80AFD0D4  B0 83 00 00 */	sth r4, 0(r3)
/* 80AFD0D8  38 00 00 01 */	li r0, 1
/* 80AFD0DC  B0 03 00 02 */	sth r0, 2(r3)
/* 80AFD0E0  90 83 00 04 */	stw r4, 4(r3)
/* 80AFD0E4  4E 80 00 20 */	blr 
