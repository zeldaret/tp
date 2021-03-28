lbl_8095A6C0:
/* 8095A6C0  2C 04 00 00 */	cmpwi r4, 0
/* 8095A6C4  4D 80 00 20 */	bltlr 
/* 8095A6C8  2C 04 00 08 */	cmpwi r4, 8
/* 8095A6CC  4C 80 00 20 */	bgelr 
/* 8095A6D0  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 8095A6D4  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 8095A6D8  38 00 FF FF */	li r0, -1
/* 8095A6DC  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 8095A6E0  38 00 00 00 */	li r0, 0
/* 8095A6E4  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 8095A6E8  4E 80 00 20 */	blr 
