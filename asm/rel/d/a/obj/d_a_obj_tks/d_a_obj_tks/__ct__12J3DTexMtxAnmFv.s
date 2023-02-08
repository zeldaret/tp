lbl_80D0FCC8:
/* 80D0FCC8  38 80 00 00 */	li r4, 0
/* 80D0FCCC  B0 83 00 00 */	sth r4, 0(r3)
/* 80D0FCD0  38 00 00 01 */	li r0, 1
/* 80D0FCD4  B0 03 00 02 */	sth r0, 2(r3)
/* 80D0FCD8  90 83 00 04 */	stw r4, 4(r3)
/* 80D0FCDC  4E 80 00 20 */	blr 
