lbl_80B0EB10:
/* 80B0EB10  7C 86 07 34 */	extsh r6, r4
/* 80B0EB14  2C 05 00 00 */	cmpwi r5, 0
/* 80B0EB18  40 82 00 10 */	bne lbl_80B0EB28
/* 80B0EB1C  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80B0EB20  7C 00 30 00 */	cmpw r0, r6
/* 80B0EB24  4D 82 00 20 */	beqlr 
lbl_80B0EB28:
/* 80B0EB28  2C 04 00 00 */	cmpwi r4, 0
/* 80B0EB2C  4D 80 00 20 */	bltlr 
/* 80B0EB30  2C 04 00 02 */	cmpwi r4, 2
/* 80B0EB34  4C 80 00 20 */	bgelr 
/* 80B0EB38  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80B0EB3C  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80B0EB40  38 00 FF FF */	li r0, -1
/* 80B0EB44  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80B0EB48  38 00 00 00 */	li r0, 0
/* 80B0EB4C  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80B0EB50  4E 80 00 20 */	blr 
