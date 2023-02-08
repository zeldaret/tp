lbl_80B7C308:
/* 80B7C308  7C 86 07 34 */	extsh r6, r4
/* 80B7C30C  2C 05 00 00 */	cmpwi r5, 0
/* 80B7C310  40 82 00 10 */	bne lbl_80B7C320
/* 80B7C314  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80B7C318  7C 00 30 00 */	cmpw r0, r6
/* 80B7C31C  4D 82 00 20 */	beqlr 
lbl_80B7C320:
/* 80B7C320  2C 04 00 00 */	cmpwi r4, 0
/* 80B7C324  4D 80 00 20 */	bltlr 
/* 80B7C328  2C 04 00 24 */	cmpwi r4, 0x24
/* 80B7C32C  4C 80 00 20 */	bgelr 
/* 80B7C330  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80B7C334  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80B7C338  38 00 FF FF */	li r0, -1
/* 80B7C33C  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80B7C340  38 00 00 00 */	li r0, 0
/* 80B7C344  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80B7C348  4E 80 00 20 */	blr 
