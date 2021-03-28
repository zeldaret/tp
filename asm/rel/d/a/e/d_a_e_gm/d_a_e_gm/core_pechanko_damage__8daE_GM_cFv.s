lbl_806D35E4:
/* 806D35E4  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 806D35E8  7C 08 02 A6 */	mflr r0
/* 806D35EC  90 01 00 24 */	stw r0, 0x24(r1)
/* 806D35F0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 806D35F4  93 C1 00 18 */	stw r30, 0x18(r1)
/* 806D35F8  7C 7F 1B 78 */	mr r31, r3
/* 806D35FC  3C 60 80 6D */	lis r3, lit_3906@ha
/* 806D3600  3B C3 79 A0 */	addi r30, r3, lit_3906@l
/* 806D3604  80 1F 0A 3C */	lwz r0, 0xa3c(r31)
/* 806D3608  2C 00 00 00 */	cmpwi r0, 0
/* 806D360C  40 82 00 D4 */	bne lbl_806D36E0
/* 806D3610  3C 60 80 6D */	lis r3, stringBase0@ha
/* 806D3614  38 63 7A F0 */	addi r3, r3, stringBase0@l
/* 806D3618  38 63 00 05 */	addi r3, r3, 5
/* 806D361C  38 80 00 06 */	li r4, 6
/* 806D3620  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha
/* 806D3624  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l
/* 806D3628  3C A5 00 02 */	addis r5, r5, 2
/* 806D362C  38 C0 00 80 */	li r6, 0x80
/* 806D3630  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D3634  4B 96 8C B8 */	b getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D3638  7C 64 1B 78 */	mr r4, r3
/* 806D363C  80 7F 09 64 */	lwz r3, 0x964(r31)
/* 806D3640  38 A0 00 02 */	li r5, 2
/* 806D3644  C0 3E 00 78 */	lfs f1, 0x78(r30)
/* 806D3648  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806D364C  C0 7E 00 04 */	lfs f3, 4(r30)
/* 806D3650  C0 9E 00 44 */	lfs f4, 0x44(r30)
/* 806D3654  4B 93 D8 1C */	b setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D3658  38 00 00 B4 */	li r0, 0xb4
/* 806D365C  98 1F 0A 6B */	stb r0, 0xa6b(r31)
/* 806D3660  38 80 00 00 */	li r4, 0
/* 806D3664  90 9F 08 30 */	stw r4, 0x830(r31)
/* 806D3668  90 9F 08 18 */	stw r4, 0x818(r31)
/* 806D366C  38 00 00 02 */	li r0, 2
/* 806D3670  98 1F 0A 68 */	stb r0, 0xa68(r31)
/* 806D3674  38 00 00 01 */	li r0, 1
/* 806D3678  3C 60 80 6D */	lis r3, struct_806D7F1C+0x3@ha
/* 806D367C  98 03 7F 1F */	stb r0, struct_806D7F1C+0x3@l(r3)
/* 806D3680  C0 1E 00 04 */	lfs f0, 4(r30)
/* 806D3684  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 806D3688  C0 1E 00 54 */	lfs f0, 0x54(r30)
/* 806D368C  D0 1F 05 30 */	stfs f0, 0x530(r31)
/* 806D3690  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 806D3694  D0 1F 05 34 */	stfs f0, 0x534(r31)
/* 806D3698  B0 9F 04 E0 */	sth r4, 0x4e0(r31)
/* 806D369C  B0 9F 04 DC */	sth r4, 0x4dc(r31)
/* 806D36A0  3C 60 00 07 */	lis r3, 0x0007 /* 0x000704B0@ha */
/* 806D36A4  38 03 04 B0 */	addi r0, r3, 0x04B0 /* 0x000704B0@l */
/* 806D36A8  90 01 00 08 */	stw r0, 8(r1)
/* 806D36AC  38 7F 09 6C */	addi r3, r31, 0x96c
/* 806D36B0  38 81 00 08 */	addi r4, r1, 8
/* 806D36B4  38 A0 FF FF */	li r5, -1
/* 806D36B8  81 9F 09 6C */	lwz r12, 0x96c(r31)
/* 806D36BC  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 806D36C0  7D 89 03 A6 */	mtctr r12
/* 806D36C4  4E 80 04 21 */	bctrl 
/* 806D36C8  38 00 00 00 */	li r0, 0
/* 806D36CC  98 1F 0A 74 */	stb r0, 0xa74(r31)
/* 806D36D0  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 806D36D4  38 03 00 01 */	addi r0, r3, 1
/* 806D36D8  90 1F 0A 3C */	stw r0, 0xa3c(r31)
/* 806D36DC  48 00 00 98 */	b lbl_806D3774
lbl_806D36E0:
/* 806D36E0  2C 00 FF FF */	cmpwi r0, -1
/* 806D36E4  41 82 00 90 */	beq lbl_806D3774
/* 806D36E8  38 7F 0A 48 */	addi r3, r31, 0xa48
/* 806D36EC  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 806D36F0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 806D36F4  C0 7E 00 A0 */	lfs f3, 0xa0(r30)
/* 806D36F8  4B B9 C3 44 */	b cLib_addCalc2__FPffff
/* 806D36FC  80 1F 06 20 */	lwz r0, 0x620(r31)
/* 806D3700  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806D3704  41 82 00 50 */	beq lbl_806D3754
/* 806D3708  88 1F 0A 6B */	lbz r0, 0xa6b(r31)
/* 806D370C  28 00 00 00 */	cmplwi r0, 0
/* 806D3710  40 82 00 64 */	bne lbl_806D3774
/* 806D3714  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 806D3718  C0 1F 0A 48 */	lfs f0, 0xa48(r31)
/* 806D371C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D3720  40 82 00 54 */	bne lbl_806D3774
/* 806D3724  3C 60 80 6D */	lis r3, lit_4863@ha
/* 806D3728  38 83 7C 58 */	addi r4, r3, lit_4863@l
/* 806D372C  80 64 00 00 */	lwz r3, 0(r4)
/* 806D3730  80 04 00 04 */	lwz r0, 4(r4)
/* 806D3734  90 61 00 0C */	stw r3, 0xc(r1)
/* 806D3738  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D373C  80 04 00 08 */	lwz r0, 8(r4)
/* 806D3740  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D3744  7F E3 FB 78 */	mr r3, r31
/* 806D3748  38 81 00 0C */	addi r4, r1, 0xc
/* 806D374C  4B FF DB 7D */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D3750  48 00 00 24 */	b lbl_806D3774
lbl_806D3754:
/* 806D3754  7F E3 FB 78 */	mr r3, r31
/* 806D3758  38 80 00 00 */	li r4, 0
/* 806D375C  4B 94 6F 70 */	b fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D3760  38 7F 05 F4 */	addi r3, r31, 0x5f4
/* 806D3764  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 806D3768  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 806D376C  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D3770  4B 9A 33 3C */	b CrrPos__9dBgS_AcchFR4dBgS
lbl_806D3774:
/* 806D3774  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 806D3778  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 806D377C  80 01 00 24 */	lwz r0, 0x24(r1)
/* 806D3780  7C 08 03 A6 */	mtlr r0
/* 806D3784  38 21 00 20 */	addi r1, r1, 0x20
/* 806D3788  4E 80 00 20 */	blr 
