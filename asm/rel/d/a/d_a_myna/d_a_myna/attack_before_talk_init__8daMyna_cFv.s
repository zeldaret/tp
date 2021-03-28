lbl_80946AEC:
/* 80946AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80946AF0  7C 08 02 A6 */	mflr r0
/* 80946AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80946AF8  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80946AFC  7C 7F 1B 78 */	mr r31, r3
/* 80946B00  38 7F 06 20 */	addi r3, r31, 0x620
/* 80946B04  7F E4 FB 78 */	mr r4, r31
/* 80946B08  A0 BF 09 1C */	lhz r5, 0x91c(r31)
/* 80946B0C  38 C0 00 00 */	li r6, 0
/* 80946B10  38 E0 00 00 */	li r7, 0
/* 80946B14  4B 90 34 7C */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80946B18  7F E3 FB 78 */	mr r3, r31
/* 80946B1C  38 80 00 0A */	li r4, 0xa
/* 80946B20  3C A0 80 95 */	lis r5, lit_3926@ha
/* 80946B24  C0 25 B1 F0 */	lfs f1, lit_3926@l(r5)
/* 80946B28  48 00 35 2D */	bl setAnimeType__8daMyna_cFUcf
/* 80946B2C  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80946B30  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80946B34  7C 08 03 A6 */	mtlr r0
/* 80946B38  38 21 00 10 */	addi r1, r1, 0x10
/* 80946B3C  4E 80 00 20 */	blr 
