lbl_80945EC0:
/* 80945EC0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80945EC4  7C 08 02 A6 */	mflr r0
/* 80945EC8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80945ECC  2C 04 00 00 */	cmpwi r4, 0
/* 80945ED0  41 82 00 1C */	beq lbl_80945EEC
/* 80945ED4  38 00 00 01 */	li r0, 1
/* 80945ED8  B0 03 09 16 */	sth r0, 0x916(r3)
/* 80945EDC  38 80 00 0B */	li r4, 0xb
/* 80945EE0  3C A0 80 95 */	lis r5, lit_3926@ha /* 0x8094B1F0@ha */
/* 80945EE4  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)  /* 0x8094B1F0@l */
/* 80945EE8  48 00 41 6D */	bl setAnimeType__8daMyna_cFUcf
lbl_80945EEC:
/* 80945EEC  38 60 00 01 */	li r3, 1
/* 80945EF0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80945EF4  7C 08 03 A6 */	mtlr r0
/* 80945EF8  38 21 00 10 */	addi r1, r1, 0x10
/* 80945EFC  4E 80 00 20 */	blr 
