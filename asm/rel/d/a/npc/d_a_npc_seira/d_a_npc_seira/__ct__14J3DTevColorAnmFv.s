lbl_80ACBFD0:
/* 80ACBFD0  38 80 00 00 */	li r4, 0
/* 80ACBFD4  B0 83 00 00 */	sth r4, 0(r3)
/* 80ACBFD8  38 00 00 01 */	li r0, 1
/* 80ACBFDC  B0 03 00 02 */	sth r0, 2(r3)
/* 80ACBFE0  90 83 00 04 */	stw r4, 4(r3)
/* 80ACBFE4  4E 80 00 20 */	blr 
