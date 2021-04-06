lbl_8035FE78:
/* 8035FE78  7C 08 02 A6 */	mflr r0
/* 8035FE7C  90 01 00 04 */	stw r0, 4(r1)
/* 8035FE80  54 80 06 3E */	clrlwi r0, r4, 0x18
/* 8035FE84  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8035FE88  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8035FE8C  3F E0 CC 01 */	lis r31, 0xCC01 /* 0xCC008000@ha */
/* 8035FE90  93 C1 00 18 */	stw r30, 0x18(r1)
/* 8035FE94  3B C0 00 61 */	li r30, 0x61
/* 8035FE98  93 A1 00 14 */	stw r29, 0x14(r1)
/* 8035FE9C  7C 7D 1B 78 */	mr r29, r3
/* 8035FEA0  80 A2 CB 80 */	lwz r5, __GXData(r2)
/* 8035FEA4  80 85 00 7C */	lwz r4, 0x7c(r5)
/* 8035FEA8  50 04 B2 52 */	rlwimi r4, r0, 0x16, 9, 9
/* 8035FEAC  90 85 00 7C */	stw r4, 0x7c(r5)
/* 8035FEB0  9B DF 80 00 */	stb r30, 0x8000(r31)  /* 0xCC008000@l */
/* 8035FEB4  80 05 00 7C */	lwz r0, 0x7c(r5)
/* 8035FEB8  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 8035FEBC  4B FF F2 B9 */	bl __GXFlushTextureState
/* 8035FEC0  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8035FEC4  9B DF 80 00 */	stb r30, -0x8000(r31)
/* 8035FEC8  64 00 68 00 */	oris r0, r0, 0x6800
/* 8035FECC  90 1F 80 00 */	stw r0, -0x8000(r31)
/* 8035FED0  4B FF F2 A5 */	bl __GXFlushTextureState
/* 8035FED4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8035FED8  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8035FEDC  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 8035FEE0  83 A1 00 14 */	lwz r29, 0x14(r1)
/* 8035FEE4  38 21 00 20 */	addi r1, r1, 0x20
/* 8035FEE8  7C 08 03 A6 */	mtlr r0
/* 8035FEEC  4E 80 00 20 */	blr 
