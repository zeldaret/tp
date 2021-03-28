lbl_80A7CCC8:
/* 80A7CCC8  38 80 00 00 */	li r4, 0
/* 80A7CCCC  B0 83 00 00 */	sth r4, 0(r3)
/* 80A7CCD0  38 00 00 01 */	li r0, 1
/* 80A7CCD4  B0 03 00 02 */	sth r0, 2(r3)
/* 80A7CCD8  90 83 00 04 */	stw r4, 4(r3)
/* 80A7CCDC  4E 80 00 20 */	blr 
