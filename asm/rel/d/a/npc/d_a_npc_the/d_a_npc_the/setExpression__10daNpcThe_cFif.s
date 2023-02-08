lbl_80AF8B50:
/* 80AF8B50  2C 04 00 00 */	cmpwi r4, 0
/* 80AF8B54  4D 80 00 20 */	bltlr 
/* 80AF8B58  2C 04 00 0E */	cmpwi r4, 0xe
/* 80AF8B5C  4C 80 00 20 */	bgelr 
/* 80AF8B60  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 80AF8B64  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 80AF8B68  38 00 FF FF */	li r0, -1
/* 80AF8B6C  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80AF8B70  38 00 00 00 */	li r0, 0
/* 80AF8B74  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 80AF8B78  4E 80 00 20 */	blr 
