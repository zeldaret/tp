lbl_80B159E0:
/* 80B159E0  7C 86 07 34 */	extsh r6, r4
/* 80B159E4  2C 05 00 00 */	cmpwi r5, 0
/* 80B159E8  40 82 00 10 */	bne lbl_80B159F8
/* 80B159EC  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80B159F0  7C 00 30 00 */	cmpw r0, r6
/* 80B159F4  4D 82 00 20 */	beqlr 
lbl_80B159F8:
/* 80B159F8  2C 04 00 00 */	cmpwi r4, 0
/* 80B159FC  4D 80 00 20 */	bltlr 
/* 80B15A00  2C 04 00 08 */	cmpwi r4, 8
/* 80B15A04  4C 80 00 20 */	bgelr 
/* 80B15A08  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80B15A0C  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80B15A10  38 00 FF FF */	li r0, -1
/* 80B15A14  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80B15A18  38 00 00 00 */	li r0, 0
/* 80B15A1C  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80B15A20  4E 80 00 20 */	blr 
