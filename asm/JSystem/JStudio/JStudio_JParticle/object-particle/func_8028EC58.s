lbl_8028EC58:
/* 8028EC58  2C 04 00 02 */	cmpwi r4, 2
/* 8028EC5C  4C 82 00 20 */	bnelr 
/* 8028EC60  80 85 00 00 */	lwz r4, 0(r5)
/* 8028EC64  30 04 FF FF */	addic r0, r4, -1
/* 8028EC68  7C 00 21 10 */	subfe r0, r0, r4
/* 8028EC6C  98 03 01 D8 */	stb r0, 0x1d8(r3)
/* 8028EC70  4E 80 00 20 */	blr 
