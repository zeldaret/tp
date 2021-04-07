lbl_8035BDFC:
/* 8035BDFC  80 C2 CB 80 */	lwz r6, __GXData(r2)
/* 8035BE00  54 65 06 3E */	clrlwi r5, r3, 0x18
/* 8035BE04  38 80 00 10 */	li r4, 0x10
/* 8035BE08  80 06 02 04 */	lwz r0, 0x204(r6)
/* 8035BE0C  50 60 07 3E */	rlwimi r0, r3, 0, 0x1c, 0x1f
/* 8035BE10  3C 60 CC 01 */	lis r3, 0xCC01 /* 0xCC008000@ha */
/* 8035BE14  90 06 02 04 */	stw r0, 0x204(r6)
/* 8035BE18  38 00 10 3F */	li r0, 0x103f
/* 8035BE1C  98 83 80 00 */	stb r4, 0x8000(r3)  /* 0xCC008000@l */
/* 8035BE20  90 03 80 00 */	stw r0, -0x8000(r3)
/* 8035BE24  90 A3 80 00 */	stw r5, -0x8000(r3)
/* 8035BE28  80 06 05 AC */	lwz r0, 0x5ac(r6)
/* 8035BE2C  60 00 00 04 */	ori r0, r0, 4
/* 8035BE30  90 06 05 AC */	stw r0, 0x5ac(r6)
/* 8035BE34  4E 80 00 20 */	blr 
