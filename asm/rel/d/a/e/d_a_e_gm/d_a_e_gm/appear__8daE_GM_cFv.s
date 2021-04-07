lbl_806D1A9C:
/* 806D1A9C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 806D1AA0  7C 08 02 A6 */	mflr r0
/* 806D1AA4  90 01 00 44 */	stw r0, 0x44(r1)
/* 806D1AA8  39 61 00 40 */	addi r11, r1, 0x40
/* 806D1AAC  4B C9 07 31 */	bl _savegpr_29
/* 806D1AB0  7C 7D 1B 78 */	mr r29, r3
/* 806D1AB4  3C 80 80 6D */	lis r4, cNullVec__6Z2Calc@ha /* 0x806D7AFC@ha */
/* 806D1AB8  3B C4 7A FC */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x806D7AFC@l */
/* 806D1ABC  3C 80 80 6D */	lis r4, lit_3906@ha /* 0x806D79A0@ha */
/* 806D1AC0  3B E4 79 A0 */	addi r31, r4, lit_3906@l /* 0x806D79A0@l */
/* 806D1AC4  80 03 0A 3C */	lwz r0, 0xa3c(r3)
/* 806D1AC8  2C 00 00 00 */	cmpwi r0, 0
/* 806D1ACC  40 82 00 C8 */	bne lbl_806D1B94
/* 806D1AD0  38 00 00 01 */	li r0, 1
/* 806D1AD4  98 1D 0A 69 */	stb r0, 0xa69(r29)
/* 806D1AD8  3C 60 80 6D */	lis r3, d_a_e_gm__stringBase0@ha /* 0x806D7AF0@ha */
/* 806D1ADC  38 63 7A F0 */	addi r3, r3, d_a_e_gm__stringBase0@l /* 0x806D7AF0@l */
/* 806D1AE0  38 80 00 05 */	li r4, 5
/* 806D1AE4  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D1AE8  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D1AEC  3C A5 00 02 */	addis r5, r5, 2
/* 806D1AF0  38 C0 00 80 */	li r6, 0x80
/* 806D1AF4  38 A5 C2 F8 */	addi r5, r5, -15624
/* 806D1AF8  4B 96 A7 F5 */	bl getRes__14dRes_control_cFPCclP11dRes_info_ci
/* 806D1AFC  7C 64 1B 78 */	mr r4, r3
/* 806D1B00  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D1B04  38 A0 00 00 */	li r5, 0
/* 806D1B08  C0 3F 00 78 */	lfs f1, 0x78(r31)
/* 806D1B0C  C0 5F 00 08 */	lfs f2, 8(r31)
/* 806D1B10  C0 7F 00 04 */	lfs f3, 4(r31)
/* 806D1B14  C0 9F 00 44 */	lfs f4, 0x44(r31)
/* 806D1B18  4B 93 F3 59 */	bl setAnm__16mDoExt_McaMorfSOFP15J3DAnmTransformiffff
/* 806D1B1C  38 7D 05 B4 */	addi r3, r29, 0x5b4
/* 806D1B20  C0 3F 00 34 */	lfs f1, 0x34(r31)
/* 806D1B24  C0 1D 04 F0 */	lfs f0, 0x4f0(r29)
/* 806D1B28  EC 21 00 32 */	fmuls f1, f1, f0
/* 806D1B2C  C0 5F 00 7C */	lfs f2, 0x7c(r31)
/* 806D1B30  C0 1D 04 EC */	lfs f0, 0x4ec(r29)
/* 806D1B34  EC 42 00 32 */	fmuls f2, f2, f0
/* 806D1B38  4B 9A 44 21 */	bl SetWall__12dBgS_AcchCirFff
/* 806D1B3C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007044F@ha */
/* 806D1B40  38 03 04 4F */	addi r0, r3, 0x044F /* 0x0007044F@l */
/* 806D1B44  90 01 00 08 */	stw r0, 8(r1)
/* 806D1B48  38 7D 09 6C */	addi r3, r29, 0x96c
/* 806D1B4C  38 81 00 08 */	addi r4, r1, 8
/* 806D1B50  38 A0 00 00 */	li r5, 0
/* 806D1B54  38 C0 FF FF */	li r6, -1
/* 806D1B58  81 9D 09 6C */	lwz r12, 0x96c(r29)
/* 806D1B5C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 806D1B60  7D 89 03 A6 */	mtctr r12
/* 806D1B64  4E 80 04 21 */	bctrl 
/* 806D1B68  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D1B6C  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 806D1B70  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 806D1B74  D0 1D 05 30 */	stfs f0, 0x530(r29)
/* 806D1B78  D0 3D 0A 44 */	stfs f1, 0xa44(r29)
/* 806D1B7C  7F A3 EB 78 */	mr r3, r29
/* 806D1B80  48 00 0D C1 */	bl setEggBreakEffect__8daE_GM_cFv
/* 806D1B84  80 7D 0A 3C */	lwz r3, 0xa3c(r29)
/* 806D1B88  38 03 00 01 */	addi r0, r3, 1
/* 806D1B8C  90 1D 0A 3C */	stw r0, 0xa3c(r29)
/* 806D1B90  48 00 01 18 */	b lbl_806D1CA8
lbl_806D1B94:
/* 806D1B94  2C 00 FF FF */	cmpwi r0, -1
/* 806D1B98  41 82 01 10 */	beq lbl_806D1CA8
/* 806D1B9C  38 9D 07 CC */	addi r4, r29, 0x7cc
/* 806D1BA0  4B 94 8B 2D */	bl fopAcM_posMoveF__FP10fopAc_ac_cPC4cXyz
/* 806D1BA4  38 7D 05 F4 */	addi r3, r29, 0x5f4
/* 806D1BA8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 806D1BAC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 806D1BB0  38 84 0F 38 */	addi r4, r4, 0xf38
/* 806D1BB4  4B 9A 4E F9 */	bl CrrPos__9dBgS_AcchFR4dBgS
/* 806D1BB8  80 1D 06 20 */	lwz r0, 0x620(r29)
/* 806D1BBC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 806D1BC0  41 82 00 E8 */	beq lbl_806D1CA8
/* 806D1BC4  3C 60 80 6D */	lis r3, s_obj_sub2__FPvPv@ha /* 0x806D14E0@ha */
/* 806D1BC8  38 63 14 E0 */	addi r3, r3, s_obj_sub2__FPvPv@l /* 0x806D14E0@l */
/* 806D1BCC  7F A4 EB 78 */	mr r4, r29
/* 806D1BD0  4B 94 F7 69 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 806D1BD4  28 03 00 00 */	cmplwi r3, 0
/* 806D1BD8  41 82 00 48 */	beq lbl_806D1C20
/* 806D1BDC  38 63 04 D0 */	addi r3, r3, 0x4d0
/* 806D1BE0  38 9D 04 D0 */	addi r4, r29, 0x4d0
/* 806D1BE4  4B B9 F0 21 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 806D1BE8  B0 7D 0A 1E */	sth r3, 0xa1e(r29)
/* 806D1BEC  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 806D1BF0  4B B9 5D 9D */	bl cM_rndFX__Ff
/* 806D1BF4  D0 3D 05 2C */	stfs f1, 0x52c(r29)
/* 806D1BF8  80 7E 00 D4 */	lwz r3, 0xd4(r30)
/* 806D1BFC  80 1E 00 D8 */	lwz r0, 0xd8(r30)
/* 806D1C00  90 61 00 24 */	stw r3, 0x24(r1)
/* 806D1C04  90 01 00 28 */	stw r0, 0x28(r1)
/* 806D1C08  80 1E 00 DC */	lwz r0, 0xdc(r30)
/* 806D1C0C  90 01 00 2C */	stw r0, 0x2c(r1)
/* 806D1C10  7F A3 EB 78 */	mr r3, r29
/* 806D1C14  38 81 00 24 */	addi r4, r1, 0x24
/* 806D1C18  4B FF F6 B1 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D1C1C  48 00 00 8C */	b lbl_806D1CA8
lbl_806D1C20:
/* 806D1C20  80 7D 09 64 */	lwz r3, 0x964(r29)
/* 806D1C24  38 80 00 01 */	li r4, 1
/* 806D1C28  88 03 00 11 */	lbz r0, 0x11(r3)
/* 806D1C2C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 806D1C30  40 82 00 18 */	bne lbl_806D1C48
/* 806D1C34  C0 3F 00 04 */	lfs f1, 4(r31)
/* 806D1C38  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 806D1C3C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 806D1C40  41 82 00 08 */	beq lbl_806D1C48
/* 806D1C44  38 80 00 00 */	li r4, 0
lbl_806D1C48:
/* 806D1C48  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 806D1C4C  41 82 00 5C */	beq lbl_806D1CA8
/* 806D1C50  88 1D 0A 6F */	lbz r0, 0xa6f(r29)
/* 806D1C54  28 00 00 01 */	cmplwi r0, 1
/* 806D1C58  40 82 00 2C */	bne lbl_806D1C84
/* 806D1C5C  80 7E 00 E0 */	lwz r3, 0xe0(r30)
/* 806D1C60  80 1E 00 E4 */	lwz r0, 0xe4(r30)
/* 806D1C64  90 61 00 18 */	stw r3, 0x18(r1)
/* 806D1C68  90 01 00 1C */	stw r0, 0x1c(r1)
/* 806D1C6C  80 1E 00 E8 */	lwz r0, 0xe8(r30)
/* 806D1C70  90 01 00 20 */	stw r0, 0x20(r1)
/* 806D1C74  7F A3 EB 78 */	mr r3, r29
/* 806D1C78  38 81 00 18 */	addi r4, r1, 0x18
/* 806D1C7C  4B FF F6 4D */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
/* 806D1C80  48 00 00 28 */	b lbl_806D1CA8
lbl_806D1C84:
/* 806D1C84  80 7E 00 EC */	lwz r3, 0xec(r30)
/* 806D1C88  80 1E 00 F0 */	lwz r0, 0xf0(r30)
/* 806D1C8C  90 61 00 0C */	stw r3, 0xc(r1)
/* 806D1C90  90 01 00 10 */	stw r0, 0x10(r1)
/* 806D1C94  80 1E 00 F4 */	lwz r0, 0xf4(r30)
/* 806D1C98  90 01 00 14 */	stw r0, 0x14(r1)
/* 806D1C9C  7F A3 EB 78 */	mr r3, r29
/* 806D1CA0  38 81 00 0C */	addi r4, r1, 0xc
/* 806D1CA4  4B FF F6 25 */	bl setAction__8daE_GM_cFM8daE_GM_cFPCvPv_v
lbl_806D1CA8:
/* 806D1CA8  39 61 00 40 */	addi r11, r1, 0x40
/* 806D1CAC  4B C9 05 7D */	bl _restgpr_29
/* 806D1CB0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 806D1CB4  7C 08 03 A6 */	mtlr r0
/* 806D1CB8  38 21 00 40 */	addi r1, r1, 0x40
/* 806D1CBC  4E 80 00 20 */	blr 
