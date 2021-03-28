lbl_8028EC74:
/* 8028EC74  2C 04 00 02 */	cmpwi r4, 2
/* 8028EC78  4C 82 00 20 */	bnelr 
/* 8028EC7C  80 05 00 00 */	lwz r0, 0(r5)
/* 8028EC80  90 03 01 CC */	stw r0, 0x1cc(r3)
/* 8028EC84  4E 80 00 20 */	blr 
