lbl_809DC118:
/* 809DC118  2C 04 00 00 */	cmpwi r4, 0
/* 809DC11C  4D 80 00 20 */	bltlr 
/* 809DC120  2C 04 00 0D */	cmpwi r4, 0xd
/* 809DC124  4C 80 00 20 */	bgelr 
/* 809DC128  B0 83 09 DE */	sth r4, 0x9de(r3)
/* 809DC12C  D0 23 09 74 */	stfs f1, 0x974(r3)
/* 809DC130  38 00 FF FF */	li r0, -1
/* 809DC134  B0 03 09 D8 */	sth r0, 0x9d8(r3)
/* 809DC138  38 00 00 00 */	li r0, 0
/* 809DC13C  B0 03 09 D6 */	sth r0, 0x9d6(r3)
/* 809DC140  4E 80 00 20 */	blr 
