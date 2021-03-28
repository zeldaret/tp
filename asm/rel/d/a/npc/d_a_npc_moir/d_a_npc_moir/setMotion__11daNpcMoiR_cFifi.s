lbl_80A7DD94:
/* 80A7DD94  7C 86 07 34 */	extsh r6, r4
/* 80A7DD98  2C 05 00 00 */	cmpwi r5, 0
/* 80A7DD9C  40 82 00 10 */	bne lbl_80A7DDAC
/* 80A7DDA0  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80A7DDA4  7C 00 30 00 */	cmpw r0, r6
/* 80A7DDA8  4D 82 00 20 */	beqlr 
lbl_80A7DDAC:
/* 80A7DDAC  2C 04 00 00 */	cmpwi r4, 0
/* 80A7DDB0  4D 80 00 20 */	bltlr 
/* 80A7DDB4  2C 04 00 2B */	cmpwi r4, 0x2b
/* 80A7DDB8  4C 80 00 20 */	bgelr 
/* 80A7DDBC  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80A7DDC0  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80A7DDC4  38 00 FF FF */	li r0, -1
/* 80A7DDC8  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80A7DDCC  38 00 00 00 */	li r0, 0
/* 80A7DDD0  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80A7DDD4  4E 80 00 20 */	blr 
