lbl_809C0E18:
/* 809C0E18  2C 04 00 00 */	cmpwi r4, 0
/* 809C0E1C  4D 80 00 20 */	bltlr 
/* 809C0E20  2C 04 00 18 */	cmpwi r4, 0x18
/* 809C0E24  4C 80 00 20 */	bgelr 
/* 809C0E28  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 809C0E2C  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 809C0E30  38 00 FF FF */	li r0, -1
/* 809C0E34  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 809C0E38  38 00 00 00 */	li r0, 0
/* 809C0E3C  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 809C0E40  4E 80 00 20 */	blr 
