lbl_809E5B1C:
/* 809E5B1C  2C 04 00 00 */	cmpwi r4, 0
/* 809E5B20  4D 80 00 20 */	bltlr 
/* 809E5B24  2C 04 00 04 */	cmpwi r4, 4
/* 809E5B28  4C 80 00 20 */	bgelr 
/* 809E5B2C  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 809E5B30  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 809E5B34  38 00 FF FF */	li r0, -1
/* 809E5B38  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 809E5B3C  38 00 00 00 */	li r0, 0
/* 809E5B40  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 809E5B44  4E 80 00 20 */	blr 
