lbl_8028DE50:
/* 8028DE50  2C 04 00 02 */	cmpwi r4, 2
/* 8028DE54  4C 82 00 20 */	bnelr 
/* 8028DE58  80 85 00 00 */	lwz r4, 0(r5)
/* 8028DE5C  30 04 FF FF */	addic r0, r4, -1
/* 8028DE60  7C 00 21 10 */	subfe r0, r0, r4
/* 8028DE64  98 03 01 1E */	stb r0, 0x11e(r3)
/* 8028DE68  4E 80 00 20 */	blr 
