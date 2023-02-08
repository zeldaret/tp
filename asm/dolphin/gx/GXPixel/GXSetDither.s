lbl_8035FDD8:
/* 8035FDD8  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 8035FDDC  38 00 00 61 */	li r0, 0x61
/* 8035FDE0  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8035FDE4  80 C5 01 D0 */	lwz r6, 0x1d0(r5)
/* 8035FDE8  50 66 17 7A */	rlwimi r6, r3, 2, 0x1d, 0x1d
/* 8035FDEC  98 04 80 00 */	stb r0, 0x8000(r4)  /* 0xCC008000@l */
/* 8035FDF0  38 00 00 00 */	li r0, 0
/* 8035FDF4  90 C4 80 00 */	stw r6, -0x8000(r4)
/* 8035FDF8  90 C5 01 D0 */	stw r6, 0x1d0(r5)
/* 8035FDFC  B0 05 00 02 */	sth r0, 2(r5)
/* 8035FE00  4E 80 00 20 */	blr 
