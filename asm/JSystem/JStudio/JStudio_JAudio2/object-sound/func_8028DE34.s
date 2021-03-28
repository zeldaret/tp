lbl_8028DE34:
/* 8028DE34  2C 04 00 02 */	cmpwi r4, 2
/* 8028DE38  4C 82 00 20 */	bnelr 
/* 8028DE3C  80 85 00 00 */	lwz r4, 0(r5)
/* 8028DE40  30 04 FF FF */	addic r0, r4, -1
/* 8028DE44  7C 00 21 10 */	subfe r0, r0, r4
/* 8028DE48  98 03 01 44 */	stb r0, 0x144(r3)
/* 8028DE4C  4E 80 00 20 */	blr 
