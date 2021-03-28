lbl_80B316C8:
/* 80B316C8  2C 04 00 00 */	cmpwi r4, 0
/* 80B316CC  4D 80 00 20 */	bltlr 
/* 80B316D0  2C 04 00 06 */	cmpwi r4, 6
/* 80B316D4  4C 80 00 20 */	bgelr 
/* 80B316D8  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 80B316DC  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 80B316E0  38 00 FF FF */	li r0, -1
/* 80B316E4  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80B316E8  38 00 00 00 */	li r0, 0
/* 80B316EC  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 80B316F0  4E 80 00 20 */	blr 
