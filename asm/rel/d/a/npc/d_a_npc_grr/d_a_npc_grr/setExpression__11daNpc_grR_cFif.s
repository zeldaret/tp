lbl_809E138C:
/* 809E138C  2C 04 00 00 */	cmpwi r4, 0
/* 809E1390  4D 80 00 20 */	bltlr 
/* 809E1394  2C 04 00 08 */	cmpwi r4, 8
/* 809E1398  4C 80 00 20 */	bgelr 
/* 809E139C  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 809E13A0  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 809E13A4  38 00 FF FF */	li r0, -1
/* 809E13A8  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 809E13AC  38 00 00 00 */	li r0, 0
/* 809E13B0  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 809E13B4  4E 80 00 20 */	blr 
