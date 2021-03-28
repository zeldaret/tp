lbl_80AF4130:
/* 80AF4130  7C 86 07 34 */	extsh r6, r4
/* 80AF4134  2C 05 00 00 */	cmpwi r5, 0
/* 80AF4138  40 82 00 10 */	bne lbl_80AF4148
/* 80AF413C  A8 03 09 E0 */	lha r0, 0x9e0(r3)
/* 80AF4140  7C 00 30 00 */	cmpw r0, r6
/* 80AF4144  4D 82 00 20 */	beqlr 
lbl_80AF4148:
/* 80AF4148  2C 04 00 00 */	cmpwi r4, 0
/* 80AF414C  4D 80 00 20 */	bltlr 
/* 80AF4150  2C 04 00 03 */	cmpwi r4, 3
/* 80AF4154  4C 80 00 20 */	bgelr 
/* 80AF4158  B0 C3 09 E0 */	sth r6, 0x9e0(r3)
/* 80AF415C  D0 23 09 7C */	stfs f1, 0x97c(r3)
/* 80AF4160  38 00 FF FF */	li r0, -1
/* 80AF4164  B0 03 09 DC */	sth r0, 0x9dc(r3)
/* 80AF4168  38 00 00 00 */	li r0, 0
/* 80AF416C  B0 03 09 DA */	sth r0, 0x9da(r3)
/* 80AF4170  4E 80 00 20 */	blr 
