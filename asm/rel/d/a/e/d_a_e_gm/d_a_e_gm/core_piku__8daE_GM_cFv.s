lbl_806D344C:
/* 806D344C  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 806D3450  7C 08 02 A6 */	mflr r0
/* 806D3454  90 01 00 34 */	stw r0, 0x34(r1)
/* 806D3458  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 806D345C  93 C1 00 28 */	stw r30, 0x28(r1)
/* 806D3460  7C 7F 1B 78 */	mr r31, r3
/* 806D3464  3C 80 80 6D */	lis r4, lit_3906@ha /* 0x806D79A0@ha */
/* 806D3468  3B C4 79 A0 */	addi r30, r4, lit_3906@l /* 0x806D79A0@l */
/* 806D346C  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D3470  2C 00 00 00 */	cmpwi r0, 0
/* 806D3474  40 82 00 64 */	bne lbl_806D34D8
/* 806D3478  38 00 00 02 */	li r0, 2
/* 806D347C  98 1F 0A 69 */	stb r0, 0xa69(r31)
/* 806D3480  3C 60 80 6D */	lis r3, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D3484  38 63 7A F0 */	addi r3, r3, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D3488  38 63 00 05 */	addi r3, r3, 5
/* 806D348C  38 80 00 08 */	li r4, 8
/* 806D3490  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D3494  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D3498  3C A5 00 02 */	addis r5, r5, 2
/* 806D349C  38 C0 00 80 */	li r6, 0x80
/* 806D34A0  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D34A4  4B 96 8E 49 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D34A8  7C 64 1B 78 */	mr r4, r3
/* 806D34AC  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D34B0  38 A0 00 00 */	li r5, 0
/* 806D34B4  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 806D34B8  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806D34BC  C0 7E 00 04 */	lfs f3, 4(r30)
/* 806D34C0  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 806D34C4  4B 93 D9 AD */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D34C8  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 806D34CC  38 03 00 01 */	addi r0, r3, 1
/* 806D34D0  90 1F 0A 3C */	stw r0, 0xa3c(r31)
/* 806D34D4  48 00 00 F8 */	b lbl_806D35CC
lbl_806D34D8:
/* 806D34D8  2C 00 FF FF */	cmpwi r0, -1
/* 806D34DC  41 82 00 F0 */	beq lbl_806D35CC
/* 806D34E0  38 9F 07 CC */	addi r4, r31, 0x7cc
/* 806D34E4  4B 94 71 E9 */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D34E8  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 806D34EC  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D34F0  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D34F4  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D34F8  4B 9A 35 B5 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806D34FC  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 806D3500  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806D3504  41 82 00 C8 */	beq lbl_806D35CC
/* 806D3508  3C 60 80 6D */	lis r3, s_obj_sub2__FPvPv@ha /* 0x806D14E0@ha */
/* 806D350C  38 63 14 E0 */	addi r3, r3, s_obj_sub2__FPvPv@l /* 0x806D14E0@l */
/* 806D3510  7F E4 FB 78 */	mr r4, r31
/* 806D3514  4B 94 DE 25 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806D3518  28 03 00 00 */	cmplwi r3, 0
/* 806D351C  41 82 00 50 */	beq lbl_806D356C
/* 806D3520  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D3524  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 806D3528  4B B9 D6 DD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D352C  B0 7F 0A 1E */	sth r3, 0xa1e(r31)
/* 806D3530  C0 3E 00 6C */	lfs f1, 0x6c(r30)
/* 806D3534  4B B9 44 59 */	bl cM_rndFX__Ff
/* 806D3538  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 806D353C  3C 60 80 6D */	lis r3, lit_4826@ha /* 0x806D7C40@ha */
/* 806D3540  38 83 7C 40 */	addi r4, r3, lit_4826@l /* 0x806D7C40@l */
/* 806D3544  80 64 00 00 */	lwz r3, 0(r4)
/* 806D3548  80 04 00 04 */	lwz r0, 4(r4)
/* 806D354C  90 61 00 14 */	stw r3, 0x14(r1)
/* 806D3550  90 01 00 18 */	stw r0, 0x18(r1)
/* 806D3554  80 04 00 08 */	lwz r0, 8(r4)
/* 806D3558  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806D355C  7F E3 FB 78 */	mr r3, r31
/* 806D3560  38 81 00 14 */	addi r4, r1, 0x14
/* 806D3564  4B FF DD 65 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D3568  48 00 00 64 */	b lbl_806D35CC
lbl_806D356C:
/* 806D356C  C0 3E 00 04 */	lfs f1, 4(r30)
/* 806D3570  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 806D3574  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D3578  38 80 00 01 */	li r4, 1
/* 806D357C  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D3580  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D3584  40 82 00 14 */	bne lbl_806D3598
/* 806D3588  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D358C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D3590  41 82 00 08 */	beq lbl_806D3598
/* 806D3594  38 80 00 00 */	li r4, 0
lbl_806D3598:
/* 806D3598  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D359C  41 82 00 30 */	beq lbl_806D35CC
/* 806D35A0  3C 60 80 6D */	lis r3, lit_4830@ha /* 0x806D7C4C@ha */
/* 806D35A4  38 83 7C 4C */	addi r4, r3, lit_4830@l /* 0x806D7C4C@l */
/* 806D35A8  80 64 00 00 */	lwz r3, 0(r4)
/* 806D35AC  80 04 00 04 */	lwz r0, 4(r4)
/* 806D35B0  90 61 00 08 */	stw r3, 8(r1)
/* 806D35B4  90 01 00 0C */	stw r0, 0xc(r1)
/* 806D35B8  80 04 00 08 */	lwz r0, 8(r4)
/* 806D35BC  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D35C0  7F E3 FB 78 */	mr r3, r31
/* 806D35C4  38 81 00 08 */	addi r4, r1, 8
/* 806D35C8  4B FF DD 01 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
lbl_806D35CC:
/* 806D35CC  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 806D35D0  83 C1 00 28 */	lwz r30, 0x28(r1)
/* 806D35D4  80 01 00 34 */	lwz r0, 0x34(r1)
/* 806D35D8  7C 08 03 A6 */	mtlr r0
/* 806D35DC  38 21 00 30 */	addi r1, r1, 0x30
/* 806D35E0  4E 80 00 20 */	blr 
