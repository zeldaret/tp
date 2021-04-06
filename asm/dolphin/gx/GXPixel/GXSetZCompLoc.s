lbl_8035FCD0:
/* 8035FCD0  80 C2 CB 80 */	lwz r6, __GXData(r2)
/* 8035FCD4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8035FCD8  38 60 00 61 */	li r3, 0x61
/* 8035FCDC  80 A6 01 DC */	lwz r5, 0x1dc(r6)
/* 8035FCE0  50 05 36 72 */	rlwimi r5, r0, 6, 0x19, 0x19
/* 8035FCE4  3C 80 CC 01 */	lis r4, 0xCC01 /* 0xCC008000@ha */
/* 8035FCE8  90 A6 01 DC */	stw r5, 0x1dc(r6)
/* 8035FCEC  38 00 00 00 */	li r0, 0
/* 8035FCF0  98 64 80 00 */	stb r3, 0x8000(r4)  /* 0xCC008000@l */
/* 8035FCF4  80 66 01 DC */	lwz r3, 0x1dc(r6)
/* 8035FCF8  90 64 80 00 */	stw r3, -0x8000(r4)
/* 8035FCFC  B0 06 00 02 */	sth r0, 2(r6)
/* 8035FD00  4E 80 00 20 */	blr 
