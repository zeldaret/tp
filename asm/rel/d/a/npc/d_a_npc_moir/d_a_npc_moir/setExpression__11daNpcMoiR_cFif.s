lbl_80A7DDD8:
/* 80A7DDD8  2C 04 00 00 */	cmpwi r4, 0
/* 80A7DDDC  4D 80 00 20 */	bltlr 
/* 80A7DDE0  2C 04 00 13 */	cmpwi r4, 0x13
/* 80A7DDE4  4C 80 00 20 */	bgelr 
/* 80A7DDE8  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 80A7DDEC  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 80A7DDF0  38 00 FF FF */	li r0, -1
/* 80A7DDF4  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80A7DDF8  38 00 00 00 */	li r0, 0
/* 80A7DDFC  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 80A7DE00  4E 80 00 20 */	blr 
