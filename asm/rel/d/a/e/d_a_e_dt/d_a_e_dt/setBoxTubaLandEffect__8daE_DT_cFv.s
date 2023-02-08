lbl_806AFBBC:
/* 806AFBBC  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 806AFBC0  7C 08 02 A6 */	mflr r0
/* 806AFBC4  90 01 00 54 */	stw r0, 0x54(r1)
/* 806AFBC8  39 61 00 50 */	addi r11, r1, 0x50
/* 806AFBCC  4B CB 26 05 */	bl _savegpr_26
/* 806AFBD0  7C 7F 1B 78 */	mr r31, r3
/* 806AFBD4  80 63 05 C8 */	lwz r3, 0x5c8(r3)
/* 806AFBD8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 806AFBDC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 806AFBE0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AFBE4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AFBE8  4B C9 68 C9 */	bl PSMTXCopy
/* 806AFBEC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 806AFBF0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 806AFBF4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 806AFBF8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 806AFBFC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 806AFC00  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 806AFC04  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 806AFC08  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 806AFC0C  3B 40 00 00 */	li r26, 0
/* 806AFC10  3B C0 00 00 */	li r30, 0
/* 806AFC14  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806AFC18  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806AFC1C  3C 60 80 6B */	lis r3, w_eff_id_4815@ha /* 0x806B60A0@ha */
/* 806AFC20  3B 83 60 A0 */	addi r28, r3, w_eff_id_4815@l /* 0x806B60A0@l */
/* 806AFC24  3C 60 80 6B */	lis r3, lit_3868@ha /* 0x806B5CFC@ha */
/* 806AFC28  3B A3 5C FC */	addi r29, r3, lit_3868@l /* 0x806B5CFC@l */
lbl_806AFC2C:
/* 806AFC2C  80 7B 5D 3C */	lwz r3, 0x5d3c(r27)
/* 806AFC30  38 80 00 00 */	li r4, 0
/* 806AFC34  90 81 00 08 */	stw r4, 8(r1)
/* 806AFC38  38 00 FF FF */	li r0, -1
/* 806AFC3C  90 01 00 0C */	stw r0, 0xc(r1)
/* 806AFC40  90 81 00 10 */	stw r4, 0x10(r1)
/* 806AFC44  90 81 00 14 */	stw r4, 0x14(r1)
/* 806AFC48  90 81 00 18 */	stw r4, 0x18(r1)
/* 806AFC4C  38 80 00 00 */	li r4, 0
/* 806AFC50  7C BC F2 2E */	lhzx r5, r28, r30
/* 806AFC54  38 C1 00 20 */	addi r6, r1, 0x20
/* 806AFC58  38 FF 01 0C */	addi r7, r31, 0x10c
/* 806AFC5C  39 00 00 00 */	li r8, 0
/* 806AFC60  39 20 00 00 */	li r9, 0
/* 806AFC64  39 40 00 FF */	li r10, 0xff
/* 806AFC68  C0 3D 00 00 */	lfs f1, 0(r29)
/* 806AFC6C  4B 99 CE 25 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 806AFC70  3B 5A 00 01 */	addi r26, r26, 1
/* 806AFC74  2C 1A 00 02 */	cmpwi r26, 2
/* 806AFC78  3B DE 00 02 */	addi r30, r30, 2
/* 806AFC7C  41 80 FF B0 */	blt lbl_806AFC2C
/* 806AFC80  39 61 00 50 */	addi r11, r1, 0x50
/* 806AFC84  4B CB 25 99 */	bl _restgpr_26
/* 806AFC88  80 01 00 54 */	lwz r0, 0x54(r1)
/* 806AFC8C  7C 08 03 A6 */	mtlr r0
/* 806AFC90  38 21 00 50 */	addi r1, r1, 0x50
/* 806AFC94  4E 80 00 20 */	blr 
