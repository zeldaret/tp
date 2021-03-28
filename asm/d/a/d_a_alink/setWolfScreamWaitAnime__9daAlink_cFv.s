lbl_80136EC4:
/* 80136EC4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80136EC8  7C 08 02 A6 */	mflr r0
/* 80136ECC  90 01 00 24 */	stw r0, 0x24(r1)
/* 80136ED0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80136ED4  7C 7F 1B 78 */	mr r31, r3
/* 80136ED8  38 80 00 7E */	li r4, 0x7e
/* 80136EDC  4B FF 27 9D */	bl setSingleAnimeWolfBase__9daAlink_cFQ29daAlink_c12daAlink_WANM
/* 80136EE0  7F E3 FB 78 */	mr r3, r31
/* 80136EE4  38 80 00 91 */	li r4, 0x91
/* 80136EE8  4B F7 89 B9 */	bl setFaceBasicTexture__9daAlink_cFQ29daAlink_c13daAlink_FTANM
/* 80136EEC  7F E3 FB 78 */	mr r3, r31
/* 80136EF0  3C 80 00 01 */	lis r4, 0x0001 /* 0x000100AA@ha */
/* 80136EF4  38 84 00 AA */	addi r4, r4, 0x00AA /* 0x000100AA@l */
/* 80136EF8  81 9F 06 28 */	lwz r12, 0x628(r31)
/* 80136EFC  81 8C 01 14 */	lwz r12, 0x114(r12)
/* 80136F00  7D 89 03 A6 */	mtctr r12
/* 80136F04  4E 80 04 21 */	bctrl 
/* 80136F08  38 00 00 01 */	li r0, 1
/* 80136F0C  B0 1F 30 0C */	sth r0, 0x300c(r31)
/* 80136F10  C0 22 92 C0 */	lfs f1, lit_6108(r2)
/* 80136F14  D0 21 00 08 */	stfs f1, 8(r1)
/* 80136F18  C0 02 92 B8 */	lfs f0, lit_6040(r2)
/* 80136F1C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80136F20  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80136F24  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80136F28  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80136F2C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80136F30  38 80 00 05 */	li r4, 5
/* 80136F34  38 A0 00 01 */	li r5, 1
/* 80136F38  38 C1 00 08 */	addi r6, r1, 8
/* 80136F3C  4B F3 8B D5 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80136F40  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80136F44  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80136F48  7C 08 03 A6 */	mtlr r0
/* 80136F4C  38 21 00 20 */	addi r1, r1, 0x20
/* 80136F50  4E 80 00 20 */	blr 
