lbl_80B31680:
/* 80B31680  7C 86 07 34 */	extsh r6, r4
/* 80B31684  2C 05 00 00 */	cmpwi r5, 0
/* 80B31688  40 82 00 10 */	bne lbl_80B31698
/* 80B3168C  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80B31690  7C 00 30 00 */	cmpw r0, r6
/* 80B31694  4D 82 00 20 */	beqlr 
lbl_80B31698:
/* 80B31698  2C 04 00 00 */	cmpwi r4, 0
/* 80B3169C  4D 80 00 20 */	bltlr 
/* 80B316A0  2C 04 00 1E */	cmpwi r4, 0x1e
/* 80B316A4  4C 80 00 20 */	bgelr 
/* 80B316A8  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80B316AC  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80B316B0  38 00 FF FF */	li r0, -1
/* 80B316B4  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80B316B8  38 00 00 00 */	li r0, 0
/* 80B316BC  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80B316C0  B0 03 0E 92 */	sth r0, 0xe92(r3)
/* 80B316C4  4E 80 00 20 */	blr 
