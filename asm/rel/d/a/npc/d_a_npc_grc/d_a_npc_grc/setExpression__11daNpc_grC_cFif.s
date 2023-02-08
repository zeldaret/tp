lbl_809CCCA4:
/* 809CCCA4  2C 04 00 00 */	cmpwi r4, 0
/* 809CCCA8  4D 80 00 20 */	bltlr 
/* 809CCCAC  2C 04 00 0F */	cmpwi r4, 0xf
/* 809CCCB0  4C 80 00 20 */	bgelr 
/* 809CCCB4  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 809CCCB8  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 809CCCBC  38 00 FF FF */	li r0, -1
/* 809CCCC0  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 809CCCC4  38 00 00 00 */	li r0, 0
/* 809CCCC8  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 809CCCCC  4E 80 00 20 */	blr 
