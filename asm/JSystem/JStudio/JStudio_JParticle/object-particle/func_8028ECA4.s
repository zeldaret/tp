lbl_8028ECA4:
/* 8028ECA4  2C 04 00 02 */	cmpwi r4, 2
/* 8028ECA8  4C 82 00 20 */	bnelr 
/* 8028ECAC  80 85 00 00 */	lwz r4, 0(r5)
/* 8028ECB0  30 04 FF FF */	addic r0, r4, -1
/* 8028ECB4  7C 00 21 10 */	subfe r0, r0, r4
/* 8028ECB8  98 03 01 B6 */	stb r0, 0x1b6(r3)
/* 8028ECBC  4E 80 00 20 */	blr 
