lbl_8028DE6C:
/* 8028DE6C  2C 04 00 02 */	cmpwi r4, 2
/* 8028DE70  4C 82 00 20 */	bnelr 
/* 8028DE74  80 85 00 00 */	lwz r4, 0(r5)
/* 8028DE78  30 04 FF FF */	addic r0, r4, -1
/* 8028DE7C  7C 00 21 10 */	subfe r0, r0, r4
/* 8028DE80  98 03 01 1D */	stb r0, 0x11d(r3)
/* 8028DE84  4E 80 00 20 */	blr 
