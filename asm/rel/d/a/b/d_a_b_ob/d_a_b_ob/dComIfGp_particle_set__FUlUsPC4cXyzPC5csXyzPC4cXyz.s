lbl_80618574:
/* 80618574  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80618578  7C 08 02 A6 */	mflr r0
/* 8061857C  90 01 00 24 */	stw r0, 0x24(r1)
/* 80618580  7C 6C 1B 78 */	mr r12, r3
/* 80618584  7C 8B 23 78 */	mr r11, r4
/* 80618588  7C A8 2B 78 */	mr r8, r5
/* 8061858C  7C C9 33 78 */	mr r9, r6
/* 80618590  7C EA 3B 78 */	mr r10, r7
/* 80618594  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80618598  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8061859C  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 806185A0  38 00 00 FF */	li r0, 0xff
/* 806185A4  90 01 00 08 */	stw r0, 8(r1)
/* 806185A8  38 80 00 00 */	li r4, 0
/* 806185AC  90 81 00 0C */	stw r4, 0xc(r1)
/* 806185B0  38 00 FF FF */	li r0, -1
/* 806185B4  90 01 00 10 */	stw r0, 0x10(r1)
/* 806185B8  90 81 00 14 */	stw r4, 0x14(r1)
/* 806185BC  90 81 00 18 */	stw r4, 0x18(r1)
/* 806185C0  90 81 00 1C */	stw r4, 0x1c(r1)
/* 806185C4  7D 84 63 78 */	mr r4, r12
/* 806185C8  38 A0 00 00 */	li r5, 0
/* 806185CC  7D 66 5B 78 */	mr r6, r11
/* 806185D0  7D 07 43 78 */	mr r7, r8
/* 806185D4  39 00 00 00 */	li r8, 0
/* 806185D8  3D 60 80 62 */	lis r11, lit_3772@ha /* 0x8061AD84@ha */
/* 806185DC  C0 2B AD 84 */	lfs f1, lit_3772@l(r11)  /* 0x8061AD84@l */
/* 806185E0  4B A3 4E ED */	bl set__13dPa_control_cFUlUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806185E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806185E8  7C 08 03 A6 */	mtlr r0
/* 806185EC  38 21 00 20 */	addi r1, r1, 0x20
/* 806185F0  4E 80 00 20 */	blr 
