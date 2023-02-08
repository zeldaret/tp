lbl_80ABBBB0:
/* 80ABBBB0  2C 04 00 00 */	cmpwi r4, 0
/* 80ABBBB4  4D 80 00 20 */	bltlr 
/* 80ABBBB8  2C 04 00 08 */	cmpwi r4, 8
/* 80ABBBBC  4C 80 00 20 */	bgelr 
/* 80ABBBC0  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 80ABBBC4  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 80ABBBC8  38 00 FF FF */	li r0, -1
/* 80ABBBCC  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80ABBBD0  38 00 00 00 */	li r0, 0
/* 80ABBBD4  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 80ABBBD8  4E 80 00 20 */	blr 
