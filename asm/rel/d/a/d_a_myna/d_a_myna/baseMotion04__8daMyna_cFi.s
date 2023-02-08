lbl_80945FA0:
/* 80945FA0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80945FA4  7C 08 02 A6 */	mflr r0
/* 80945FA8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80945FAC  2C 04 00 00 */	cmpwi r4, 0
/* 80945FB0  41 82 00 20 */	beq lbl_80945FD0
/* 80945FB4  38 00 00 04 */	li r0, 4
/* 80945FB8  B0 03 09 16 */	sth r0, 0x916(r3)
/* 80945FBC  38 80 00 0A */	li r4, 0xa
/* 80945FC0  3C A0 80 95 */	lis r5, lit_3926@ha /* 0x8094B1F0@ha */
/* 80945FC4  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)  /* 0x8094B1F0@l */
/* 80945FC8  48 00 40 8D */	bl setAnimeType__8daMyna_cFUcf
/* 80945FCC  48 00 00 20 */	b lbl_80945FEC
lbl_80945FD0:
/* 80945FD0  A0 03 09 1E */	lhz r0, 0x91e(r3)
/* 80945FD4  28 00 00 00 */	cmplwi r0, 0
/* 80945FD8  41 82 00 14 */	beq lbl_80945FEC
/* 80945FDC  38 80 00 0C */	li r4, 0xc
/* 80945FE0  3C A0 80 95 */	lis r5, lit_3926@ha /* 0x8094B1F0@ha */
/* 80945FE4  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)  /* 0x8094B1F0@l */
/* 80945FE8  48 00 40 6D */	bl setAnimeType__8daMyna_cFUcf
lbl_80945FEC:
/* 80945FEC  38 60 00 01 */	li r3, 1
/* 80945FF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80945FF4  7C 08 03 A6 */	mtlr r0
/* 80945FF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80945FFC  4E 80 00 20 */	blr 
