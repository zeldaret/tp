lbl_80BD3338:
/* 80BD3338  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80BD333C  7C 08 02 A6 */	mflr r0
/* 80BD3340  90 01 00 24 */	stw r0, 0x24(r1)
/* 80BD3344  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD3348  4B 78 EE 8D */	bl _savegpr_27
/* 80BD334C  7C 7B 1B 78 */	mr r27, r3
/* 80BD3350  3C 60 80 BD */	lis r3, l_arcName@ha /* 0x80BD4064@ha */
/* 80BD3354  38 63 40 64 */	addi r3, r3, l_arcName@l /* 0x80BD4064@l */
/* 80BD3358  80 63 00 00 */	lwz r3, 0(r3)
/* 80BD335C  3C 80 80 BD */	lis r4, d_a_obj_crvhahen__stringBase0@ha /* 0x80BD4048@ha */
/* 80BD3360  38 84 40 48 */	addi r4, r4, d_a_obj_crvhahen__stringBase0@l /* 0x80BD4048@l */
/* 80BD3364  38 84 00 09 */	addi r4, r4, 9
/* 80BD3368  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80BD336C  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80BD3370  3C A5 00 02 */	addis r5, r5, 2
/* 80BD3374  38 C0 00 80 */	li r6, 0x80
/* 80BD3378  38 A5 C2 F8 */	addi r5, r5, -15624
/* 80BD337C  4B 46 90 01 */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 80BD3380  7C 7C 1B 78 */	mr r28, r3
/* 80BD3384  3B A0 00 00 */	li r29, 0
/* 80BD3388  7F BF EB 78 */	mr r31, r29
/* 80BD338C  3F C0 11 00 */	lis r30, 0x1100 /* 0x11000084@ha */
lbl_80BD3390:
/* 80BD3390  7F 83 E3 78 */	mr r3, r28
/* 80BD3394  3C 80 00 02 */	lis r4, 2
/* 80BD3398  38 BE 00 84 */	addi r5, r30, 0x0084 /* 0x11000084@l */
/* 80BD339C  4B 44 18 B9 */	bl mDoExt_J3DModel__create__FP12J3DModelDataUlUl
/* 80BD33A0  38 1F 07 60 */	addi r0, r31, 0x760
/* 80BD33A4  7C 7B 01 2E */	stwx r3, r27, r0
/* 80BD33A8  7C 1B 00 2E */	lwzx r0, r27, r0
/* 80BD33AC  28 00 00 00 */	cmplwi r0, 0
/* 80BD33B0  40 82 00 0C */	bne lbl_80BD33BC
/* 80BD33B4  38 60 00 00 */	li r3, 0
/* 80BD33B8  48 00 00 18 */	b lbl_80BD33D0
lbl_80BD33BC:
/* 80BD33BC  3B BD 00 01 */	addi r29, r29, 1
/* 80BD33C0  2C 1D 00 0A */	cmpwi r29, 0xa
/* 80BD33C4  3B FF 00 04 */	addi r31, r31, 4
/* 80BD33C8  41 80 FF C8 */	blt lbl_80BD3390
/* 80BD33CC  38 60 00 01 */	li r3, 1
lbl_80BD33D0:
/* 80BD33D0  39 61 00 20 */	addi r11, r1, 0x20
/* 80BD33D4  4B 78 EE 4D */	bl _restgpr_27
/* 80BD33D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80BD33DC  7C 08 03 A6 */	mtlr r0
/* 80BD33E0  38 21 00 20 */	addi r1, r1, 0x20
/* 80BD33E4  4E 80 00 20 */	blr 
