lbl_80B7BE74:
/* 80B7BE74  2C 04 00 00 */	cmpwi r4, 0
/* 80B7BE78  4D 80 00 20 */	bltlr 
/* 80B7BE7C  2C 04 00 15 */	cmpwi r4, 0x15
/* 80B7BE80  4C 80 00 20 */	bgelr 
/* 80B7BE84  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 80B7BE88  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 80B7BE8C  38 00 FF FF */	li r0, -1
/* 80B7BE90  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80B7BE94  38 00 00 00 */	li r0, 0
/* 80B7BE98  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 80B7BE9C  4E 80 00 20 */	blr 
