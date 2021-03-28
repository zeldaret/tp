lbl_80B8F9CC:
/* 80B8F9CC  2C 04 00 00 */	cmpwi r4, 0
/* 80B8F9D0  4D 80 00 20 */	bltlr 
/* 80B8F9D4  2C 04 00 12 */	cmpwi r4, 0x12
/* 80B8F9D8  4C 80 00 20 */	bgelr 
/* 80B8F9DC  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 80B8F9E0  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 80B8F9E4  38 00 FF FF */	li r0, -1
/* 80B8F9E8  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80B8F9EC  38 00 00 00 */	li r0, 0
/* 80B8F9F0  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 80B8F9F4  4E 80 00 20 */	blr 
