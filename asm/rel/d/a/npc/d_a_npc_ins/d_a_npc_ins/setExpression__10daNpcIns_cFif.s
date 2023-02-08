lbl_80A0FFC4:
/* 80A0FFC4  2C 04 00 00 */	cmpwi r4, 0
/* 80A0FFC8  4D 80 00 20 */	bltlr 
/* 80A0FFCC  2C 04 00 0A */	cmpwi r4, 0xa
/* 80A0FFD0  4C 80 00 20 */	bgelr 
/* 80A0FFD4  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 80A0FFD8  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 80A0FFDC  38 00 FF FF */	li r0, -1
/* 80A0FFE0  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 80A0FFE4  38 00 00 00 */	li r0, 0
/* 80A0FFE8  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 80A0FFEC  4E 80 00 20 */	blr 
