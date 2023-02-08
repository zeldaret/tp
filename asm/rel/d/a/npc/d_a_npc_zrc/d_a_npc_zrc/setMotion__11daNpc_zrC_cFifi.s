lbl_80B8FBE4:
/* 80B8FBE4  7C 86 07 34 */	extsh r6, r4
/* 80B8FBE8  2C 05 00 00 */	cmpwi r5, 0
/* 80B8FBEC  40 82 00 10 */	bne lbl_80B8FBFC
/* 80B8FBF0  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80B8FBF4  7C 00 30 00 */	cmpw r0, r6
/* 80B8FBF8  4D 82 00 20 */	beqlr 
lbl_80B8FBFC:
/* 80B8FBFC  2C 04 00 00 */	cmpwi r4, 0
/* 80B8FC00  4D 80 00 20 */	bltlr 
/* 80B8FC04  2C 04 00 0E */	cmpwi r4, 0xe
/* 80B8FC08  4C 80 00 20 */	bgelr 
/* 80B8FC0C  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80B8FC10  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80B8FC14  38 00 FF FF */	li r0, -1
/* 80B8FC18  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80B8FC1C  38 00 00 00 */	li r0, 0
/* 80B8FC20  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80B8FC24  4E 80 00 20 */	blr 
