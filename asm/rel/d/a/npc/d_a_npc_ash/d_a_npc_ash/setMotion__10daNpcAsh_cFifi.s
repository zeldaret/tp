lbl_8095A67C:
/* 8095A67C  7C 86 07 34 */	extsh r6, r4
/* 8095A680  2C 05 00 00 */	cmpwi r5, 0
/* 8095A684  40 82 00 10 */	bne lbl_8095A694
/* 8095A688  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 8095A68C  7C 00 30 00 */	cmpw r0, r6
/* 8095A690  4D 82 00 20 */	beqlr 
lbl_8095A694:
/* 8095A694  2C 04 00 00 */	cmpwi r4, 0
/* 8095A698  4D 80 00 20 */	bltlr 
/* 8095A69C  2C 04 00 0A */	cmpwi r4, 0xa
/* 8095A6A0  4C 80 00 20 */	bgelr 
/* 8095A6A4  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 8095A6A8  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 8095A6AC  38 00 FF FF */	li r0, -1
/* 8095A6B0  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 8095A6B4  38 00 00 00 */	li r0, 0
/* 8095A6B8  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 8095A6BC  4E 80 00 20 */	blr 
