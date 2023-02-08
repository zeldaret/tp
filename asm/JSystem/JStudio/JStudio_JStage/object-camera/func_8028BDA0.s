lbl_8028BDA0:
/* 8028BDA0  2C 04 00 02 */	cmpwi r4, 2
/* 8028BDA4  4C 82 00 20 */	bnelr 
/* 8028BDA8  80 85 00 00 */	lwz r4, 0(r5)
/* 8028BDAC  30 04 FF FF */	addic r0, r4, -1
/* 8028BDB0  7C 00 21 10 */	subfe r0, r0, r4
/* 8028BDB4  98 03 01 20 */	stb r0, 0x120(r3)
/* 8028BDB8  4E 80 00 20 */	blr 
