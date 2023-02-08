lbl_8098DB44:
/* 8098DB44  2C 04 00 00 */	cmpwi r4, 0
/* 8098DB48  4D 80 00 20 */	bltlr 
/* 8098DB4C  2C 04 00 0F */	cmpwi r4, 0xf
/* 8098DB50  4C 80 00 20 */	bgelr 
/* 8098DB54  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 8098DB58  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 8098DB5C  38 00 FF FF */	li r0, -1
/* 8098DB60  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 8098DB64  38 00 00 00 */	li r0, 0
/* 8098DB68  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 8098DB6C  4E 80 00 20 */	blr 
