lbl_80B0EB54:
/* 80B0EB54  2C 04 00 00 */	cmpwi r4, 0
/* 80B0EB58  4D 80 00 20 */	bltlr 
/* 80B0EB5C  2C 04 00 02 */	cmpwi r4, 2
/* 80B0EB60  4C 80 00 20 */	bgelr 
/* 80B0EB64  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 80B0EB68  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 80B0EB6C  38 00 FF FF */	li r0, -1
/* 80B0EB70  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80B0EB74  38 00 00 00 */	li r0, 0
/* 80B0EB78  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 80B0EB7C  4E 80 00 20 */	blr 
