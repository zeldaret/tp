lbl_806D24C0:
/* 806D24C0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806D24C4  7C 08 02 A6 */	mflr r0
/* 806D24C8  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D24CC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806D24D0  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806D24D4  7C 7F 1B 78 */	mr r31, r3
/* 806D24D8  3C 80 80 6D */	lis r4, lit_3906@ha /* 0x806D79A0@ha */
/* 806D24DC  3B C4 79 A0 */	addi r30, r4, lit_3906@l /* 0x806D79A0@l */
/* 806D24E0  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D24E4  2C 00 00 00 */	cmpwi r0, 0
/* 806D24E8  40 82 00 68 */	bne lbl_806D2550
/* 806D24EC  38 00 00 01 */	li r0, 1
/* 806D24F0  98 1F 0A 69 */	stb r0, 0xa69(r31)
/* 806D24F4  3C 60 80 6D */	lis r3, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D24F8  38 63 7A F0 */	addi r3, r3, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D24FC  38 80 00 09 */	li r4, 9
/* 806D2500  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D2504  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D2508  3C A5 00 02 */	addis r5, r5, 2
/* 806D250C  38 C0 00 80 */	li r6, 0x80
/* 806D2510  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D2514  4B 96 9D D9 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D2518  7C 64 1B 78 */	mr r4, r3
/* 806D251C  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D2520  38 A0 00 02 */	li r5, 2
/* 806D2524  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 806D2528  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806D252C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 806D2530  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 806D2534  4B 93 E9 3D */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D2538  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806D253C  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 806D2540  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 806D2544  38 03 00 01 */	addi r0, r3, 1
/* 806D2548  90 1F 0A 3C */	stw r0, 0xa3c(r31)
/* 806D254C  48 00 00 84 */	b lbl_806D25D0
lbl_806D2550:
/* 806D2550  2C 00 FF FF */	cmpwi r0, -1
/* 806D2554  41 82 00 7C */	beq lbl_806D25D0
/* 806D2558  38 80 00 00 */	li r4, 0
/* 806D255C  4B 94 81 71 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D2560  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 806D2564  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D2568  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D256C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D2570  4B 9A 45 3D */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806D2574  80 7F 04 A4 */	lwz r3, 0x4a4(r31)
/* 806D2578  38 81 00 08 */	addi r4, r1, 8
/* 806D257C  4B 94 74 41 */	bl fopAcM_SearchByID__FUiPP10fopAc_ac_c
/* 806D2580  2C 03 00 00 */	cmpwi r3, 0
/* 806D2584  41 82 00 4C */	beq lbl_806D25D0
/* 806D2588  80 61 00 08 */	lwz r3, 8(r1)
/* 806D258C  28 03 00 00 */	cmplwi r3, 0
/* 806D2590  40 82 00 08 */	bne lbl_806D2598
/* 806D2594  48 00 00 3C */	b lbl_806D25D0
lbl_806D2598:
/* 806D2598  A8 03 1C 8C */	lha r0, 0x1c8c(r3)
/* 806D259C  2C 00 00 15 */	cmpwi r0, 0x15
/* 806D25A0  41 82 00 30 */	beq lbl_806D25D0
/* 806D25A4  3C 60 80 6D */	lis r3, lit_4483@ha /* 0x806D7C18@ha */
/* 806D25A8  38 83 7C 18 */	addi r4, r3, lit_4483@l /* 0x806D7C18@l */
/* 806D25AC  80 64 00 00 */	lwz r3, 0(r4)
/* 806D25B0  80 04 00 04 */	lwz r0, 4(r4)
/* 806D25B4  90 61 00 0C */	stw r3, 0xc(r1)
/* 806D25B8  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D25BC  80 04 00 08 */	lwz r0, 8(r4)
/* 806D25C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D25C4  7F E3 FB 78 */	mr r3, r31
/* 806D25C8  38 81 00 0C */	addi r4, r1, 0xc
/* 806D25CC  4B FF EC FD */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
lbl_806D25D0:
/* 806D25D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806D25D4  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806D25D8  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D25DC  7C 08 03 A6 */	mtlr r0
/* 806D25E0  38 21 00 20 */	addi r1, r1, 0x20
/* 806D25E4  4E 80 00 20 */	blr 
