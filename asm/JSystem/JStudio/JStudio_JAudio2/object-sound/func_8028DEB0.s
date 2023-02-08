lbl_8028DEB0:
/* 8028DEB0  2C 04 00 02 */	cmpwi r4, 2
/* 8028DEB4  4C 82 00 20 */	bnelr 
/* 8028DEB8  80 85 00 00 */	lwz r4, 0(r5)
/* 8028DEBC  30 04 FF FF */	addic r0, r4, -1
/* 8028DEC0  7C 00 21 10 */	subfe r0, r0, r4
/* 8028DEC4  98 03 01 1F */	stb r0, 0x11f(r3)
/* 8028DEC8  4E 80 00 20 */	blr 
