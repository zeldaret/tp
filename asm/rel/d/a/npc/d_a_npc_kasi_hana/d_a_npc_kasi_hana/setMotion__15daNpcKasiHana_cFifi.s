lbl_80A1CFA0:
/* 80A1CFA0  7C 86 07 34 */	extsh r6, r4
/* 80A1CFA4  2C 05 00 00 */	cmpwi r5, 0
/* 80A1CFA8  40 82 00 10 */	bne lbl_80A1CFB8
/* 80A1CFAC  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80A1CFB0  7C 00 30 00 */	cmpw r0, r6
/* 80A1CFB4  4D 82 00 20 */	beqlr 
lbl_80A1CFB8:
/* 80A1CFB8  2C 04 00 00 */	cmpwi r4, 0
/* 80A1CFBC  4D 80 00 20 */	bltlr 
/* 80A1CFC0  2C 04 00 0C */	cmpwi r4, 0xc
/* 80A1CFC4  4C 80 00 20 */	bgelr 
/* 80A1CFC8  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80A1CFCC  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80A1CFD0  38 00 FF FF */	li r0, -1
/* 80A1CFD4  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80A1CFD8  38 00 00 00 */	li r0, 0
/* 80A1CFDC  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80A1CFE0  B0 03 14 3E */	sth r0, 0x143e(r3)
/* 80A1CFE4  4E 80 00 20 */	blr 
