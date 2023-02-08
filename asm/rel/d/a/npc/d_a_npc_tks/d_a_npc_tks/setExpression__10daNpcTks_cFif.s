lbl_80B16FDC:
/* 80B16FDC  2C 04 00 00 */	cmpwi r4, 0
/* 80B16FE0  4D 80 00 20 */	bltlr 
/* 80B16FE4  2C 04 00 02 */	cmpwi r4, 2
/* 80B16FE8  4C 80 00 20 */	bgelr 
/* 80B16FEC  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 80B16FF0  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 80B16FF4  38 00 FF FF */	li r0, -1
/* 80B16FF8  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80B16FFC  38 00 00 00 */	li r0, 0
/* 80B17000  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 80B17004  4E 80 00 20 */	blr 
