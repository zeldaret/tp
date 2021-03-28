lbl_8035FE40:
/* 8035FE40  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8035FE44  80 82 CB 80 */	lwz r4, __GXData(r2)
/* 8035FE48  38 A0 00 00 */	li r5, 0
/* 8035FE4C  50 05 07 FE */	rlwimi r5, r0, 0, 0x1f, 0x1f
/* 8035FE50  50 65 0F BC */	rlwimi r5, r3, 1, 0x1e, 0x1e
/* 8035FE54  38 00 00 61 */	li r0, 0x61
/* 8035FE58  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035FE5C  98 03 80 00 */	stb r0, 0x8000(r3)
/* 8035FE60  38 00 00 44 */	li r0, 0x44
/* 8035FE64  50 05 C0 0E */	rlwimi r5, r0, 0x18, 0, 7
/* 8035FE68  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 8035FE6C  38 00 00 00 */	li r0, 0
/* 8035FE70  B0 04 00 02 */	sth r0, 2(r4)
/* 8035FE74  4E 80 00 20 */	blr 
