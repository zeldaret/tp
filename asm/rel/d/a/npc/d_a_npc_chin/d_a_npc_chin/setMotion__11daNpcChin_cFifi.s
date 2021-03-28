lbl_8098DB70:
/* 8098DB70  7C 86 07 34 */	extsh r6, r4
/* 8098DB74  2C 05 00 00 */	cmpwi r5, 0
/* 8098DB78  40 82 00 10 */	bne lbl_8098DB88
/* 8098DB7C  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 8098DB80  7C 00 30 00 */	cmpw r0, r6
/* 8098DB84  4D 82 00 20 */	beqlr 
lbl_8098DB88:
/* 8098DB88  2C 04 00 00 */	cmpwi r4, 0
/* 8098DB8C  4D 80 00 20 */	bltlr 
/* 8098DB90  2C 04 00 12 */	cmpwi r4, 0x12
/* 8098DB94  4C 80 00 20 */	bgelr 
/* 8098DB98  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 8098DB9C  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 8098DBA0  38 00 FF FF */	li r0, -1
/* 8098DBA4  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 8098DBA8  38 00 00 00 */	li r0, 0
/* 8098DBAC  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 8098DBB0  4E 80 00 20 */	blr 
