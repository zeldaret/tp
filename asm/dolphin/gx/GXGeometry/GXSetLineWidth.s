lbl_8035C8BC:
/* 8035C8BC  80 E2 CB 80 */	lwz r7, __GXData(r2)
/* 8035C8C0  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8035C8C4  38 60 00 61 */	li r3, 0x61
/* 8035C8C8  80 C7 00 7C */	lwz r6, 0x7c(r7)
/* 8035C8CC  50 06 06 3E */	rlwimi r6, r0, 0, 0x18, 0x1f
/* 8035C8D0  3C A0 CC 01 */	lis r5, 0xCC01 /* 0xCC008000@ha */
/* 8035C8D4  90 C7 00 7C */	stw r6, 0x7c(r7)
/* 8035C8D8  38 00 00 00 */	li r0, 0
/* 8035C8DC  80 C7 00 7C */	lwz r6, 0x7c(r7)
/* 8035C8E0  50 86 83 5E */	rlwimi r6, r4, 0x10, 0xd, 0xf
/* 8035C8E4  90 C7 00 7C */	stw r6, 0x7c(r7)
/* 8035C8E8  98 65 80 00 */	stb r3, 0x8000(r5)  /* 0xCC008000@l */
/* 8035C8EC  80 67 00 7C */	lwz r3, 0x7c(r7)
/* 8035C8F0  90 65 80 00 */	stw r3, -0x8000(r5)
/* 8035C8F4  B0 07 00 02 */	sth r0, 2(r7)
/* 8035C8F8  4E 80 00 20 */	blr 
