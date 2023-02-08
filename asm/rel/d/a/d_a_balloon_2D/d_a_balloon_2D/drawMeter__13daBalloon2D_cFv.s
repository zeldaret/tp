lbl_80653F04:
/* 80653F04  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80653F08  7C 08 02 A6 */	mflr r0
/* 80653F0C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80653F10  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80653F14  7C 7F 1B 78 */	mr r31, r3
/* 80653F18  48 00 01 A1 */	bl update__13daBalloon2D_cFv
/* 80653F1C  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 80653F20  3C 80 80 65 */	lis r4, lit_3896@ha /* 0x806555AC@ha */
/* 80653F24  C0 24 55 AC */	lfs f1, lit_3896@l(r4)  /* 0x806555AC@l */
/* 80653F28  FC 40 08 90 */	fmr f2, f1
/* 80653F2C  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80653F30  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80653F34  80 84 5F 50 */	lwz r4, 0x5f50(r4)
/* 80653F38  4B CA 4F 9D */	bl draw__9J2DScreenFffPC14J2DGrafContext
/* 80653F3C  7F E3 FB 78 */	mr r3, r31
/* 80653F40  48 00 07 F1 */	bl drawAddScore__13daBalloon2D_cFv
/* 80653F44  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80653F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80653F4C  7C 08 03 A6 */	mtlr r0
/* 80653F50  38 21 00 10 */	addi r1, r1, 0x10
/* 80653F54  4E 80 00 20 */	blr 
