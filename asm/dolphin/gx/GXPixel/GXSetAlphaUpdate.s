lbl_8035FC70:
/* 8035FC70  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 8035FC74  38 00 00 61 */	li r0, 0x61
/* 8035FC78  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8035FC7C  80 C5 01 D0 */	lwz r6, 0x1d0(r5)
/* 8035FC80  50 66 26 F6 */	rlwimi r6, r3, 4, 0x1b, 0x1b
/* 8035FC84  98 04 80 00 */	stb r0, 0x8000(r4)
/* 8035FC88  38 00 00 00 */	li r0, 0
/* 8035FC8C  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8035FC90  90 C5 01 D0 */	stw r6, 0x1d0(r5)
/* 8035FC94  B0 05 00 02 */	sth r0, 2(r5)
/* 8035FC98  4E 80 00 20 */	blr 
