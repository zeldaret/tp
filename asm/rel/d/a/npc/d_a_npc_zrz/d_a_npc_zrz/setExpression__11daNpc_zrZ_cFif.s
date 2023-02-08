lbl_80B95F10:
/* 80B95F10  2C 04 00 00 */	cmpwi r4, 0
/* 80B95F14  4D 80 00 20 */	bltlr 
/* 80B95F18  2C 04 00 02 */	cmpwi r4, 2
/* 80B95F1C  4C 80 00 20 */	bgelr 
/* 80B95F20  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 80B95F24  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 80B95F28  38 00 FF FF */	li r0, -1
/* 80B95F2C  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80B95F30  38 00 00 00 */	li r0, 0
/* 80B95F34  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 80B95F38  4E 80 00 20 */	blr 
