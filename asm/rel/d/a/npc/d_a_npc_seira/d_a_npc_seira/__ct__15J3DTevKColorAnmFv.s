lbl_80ACBF7C:
/* 80ACBF7C  38 80 00 00 */	li r4, 0
/* 80ACBF80  B0 83 00 00 */	sth r4, 0(r3)
/* 80ACBF84  38 00 00 01 */	li r0, 1
/* 80ACBF88  B0 03 00 02 */	sth r0, 2(r3)
/* 80ACBF8C  90 83 00 04 */	stw r4, 4(r3)
/* 80ACBF90  4E 80 00 20 */	blr 
