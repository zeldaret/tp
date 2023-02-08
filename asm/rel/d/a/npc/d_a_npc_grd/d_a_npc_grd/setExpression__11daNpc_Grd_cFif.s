lbl_809D1794:
/* 809D1794  2C 04 00 00 */	cmpwi r4, 0
/* 809D1798  4D 80 00 20 */	bltlr 
/* 809D179C  2C 04 00 04 */	cmpwi r4, 4
/* 809D17A0  4C 80 00 20 */	bgelr 
/* 809D17A4  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 809D17A8  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 809D17AC  38 00 FF FF */	li r0, -1
/* 809D17B0  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 809D17B4  38 00 00 00 */	li r0, 0
/* 809D17B8  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 809D17BC  4E 80 00 20 */	blr 
