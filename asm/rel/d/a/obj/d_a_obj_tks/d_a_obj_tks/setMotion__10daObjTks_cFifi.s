lbl_80D103A4:
/* 80D103A4  7C 86 07 34 */	extsh r6, r4
/* 80D103A8  2C 05 00 00 */	cmpwi r5, 0
/* 80D103AC  40 82 00 10 */	bne lbl_80D103BC
/* 80D103B0  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80D103B4  7C 00 30 00 */	cmpw r0, r6
/* 80D103B8  4D 82 00 20 */	beqlr 
lbl_80D103BC:
/* 80D103BC  2C 04 00 00 */	cmpwi r4, 0
/* 80D103C0  4D 80 00 20 */	bltlr 
/* 80D103C4  2C 04 00 04 */	cmpwi r4, 4
/* 80D103C8  4C 80 00 20 */	bgelr 
/* 80D103CC  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80D103D0  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80D103D4  38 00 FF FF */	li r0, -1
/* 80D103D8  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80D103DC  38 00 00 00 */	li r0, 0
/* 80D103E0  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80D103E4  4E 80 00 20 */	blr 
