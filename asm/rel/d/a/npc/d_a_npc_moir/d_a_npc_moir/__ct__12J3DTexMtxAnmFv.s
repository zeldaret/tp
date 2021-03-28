lbl_80A7CDDC:
/* 80A7CDDC  38 80 00 00 */	li r4, 0
/* 80A7CDE0  B0 83 00 00 */	sth r4, 0(r3)
/* 80A7CDE4  38 00 00 01 */	li r0, 1
/* 80A7CDE8  B0 03 00 02 */	sth r0, 2(r3)
/* 80A7CDEC  90 83 00 04 */	stw r4, 4(r3)
/* 80A7CDF0  4E 80 00 20 */	blr 
