lbl_809EAB34:
/* 809EAB34  2C 04 00 00 */	cmpwi r4, 0
/* 809EAB38  4D 80 00 20 */	bltlr 
/* 809EAB3C  2C 04 00 0B */	cmpwi r4, 0xb
/* 809EAB40  4C 80 00 20 */	bgelr 
/* 809EAB44  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 809EAB48  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 809EAB4C  38 00 FF FF */	li r0, -1
/* 809EAB50  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 809EAB54  38 00 00 00 */	li r0, 0
/* 809EAB58  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 809EAB5C  4E 80 00 20 */	blr 
