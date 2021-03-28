lbl_80C58ABC:
/* 80C58ABC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80C58AC0  7C 08 02 A6 */	mflr r0
/* 80C58AC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80C58AC8  39 61 00 20 */	addi r11, r1, 0x20
/* 80C58ACC  4B 70 97 10 */	b _savegpr_29
/* 80C58AD0  7C 7E 1B 78 */	mr r30, r3
/* 80C58AD4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80C58AD8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80C58ADC  40 82 00 94 */	bne lbl_80C58B70
/* 80C58AE0  7F C0 F3 79 */	or. r0, r30, r30
/* 80C58AE4  41 82 00 80 */	beq lbl_80C58B64
/* 80C58AE8  7C 1F 03 78 */	mr r31, r0
/* 80C58AEC  4B 41 FB 38 */	b __ct__16dBgS_MoveBgActorFv
/* 80C58AF0  3C 60 80 C6 */	lis r3, __vt__17dEvLib_callback_c@ha
/* 80C58AF4  38 03 A2 84 */	addi r0, r3, __vt__17dEvLib_callback_c@l
/* 80C58AF8  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80C58AFC  93 FF 05 AC */	stw r31, 0x5ac(r31)
/* 80C58B00  38 00 00 00 */	li r0, 0
/* 80C58B04  90 1F 05 B0 */	stw r0, 0x5b0(r31)
/* 80C58B08  3C 60 80 C6 */	lis r3, __vt__12daLv3Water_c@ha
/* 80C58B0C  38 63 A2 9C */	addi r3, r3, __vt__12daLv3Water_c@l
/* 80C58B10  90 7F 05 9C */	stw r3, 0x59c(r31)
/* 80C58B14  38 03 00 28 */	addi r0, r3, 0x28
/* 80C58B18  90 1F 05 A8 */	stw r0, 0x5a8(r31)
/* 80C58B1C  3B BF 05 C8 */	addi r29, r31, 0x5c8
/* 80C58B20  3C 60 80 C6 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80C58B24  38 03 A2 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80C58B28  90 1F 05 C8 */	stw r0, 0x5c8(r31)
/* 80C58B2C  7F A3 EB 78 */	mr r3, r29
/* 80C58B30  38 80 00 00 */	li r4, 0
/* 80C58B34  4B 6C F8 C8 */	b init__12J3DFrameCtrlFs
/* 80C58B38  38 00 00 00 */	li r0, 0
/* 80C58B3C  90 1D 00 14 */	stw r0, 0x14(r29)
/* 80C58B40  3B BF 05 E0 */	addi r29, r31, 0x5e0
/* 80C58B44  3C 60 80 C6 */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80C58B48  38 03 A2 78 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80C58B4C  90 1F 05 E0 */	stw r0, 0x5e0(r31)
/* 80C58B50  7F A3 EB 78 */	mr r3, r29
/* 80C58B54  38 80 00 00 */	li r4, 0
/* 80C58B58  4B 6C F8 A4 */	b init__12J3DFrameCtrlFs
/* 80C58B5C  38 00 00 00 */	li r0, 0
/* 80C58B60  90 1D 00 14 */	stw r0, 0x14(r29)
lbl_80C58B64:
/* 80C58B64  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80C58B68  60 00 00 08 */	ori r0, r0, 8
/* 80C58B6C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80C58B70:
/* 80C58B70  A8 1E 04 E4 */	lha r0, 0x4e4(r30)
/* 80C58B74  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80C58B78  98 1E 05 F9 */	stb r0, 0x5f9(r30)
/* 80C58B7C  38 7E 05 B8 */	addi r3, r30, 0x5b8
/* 80C58B80  88 1E 05 F9 */	lbz r0, 0x5f9(r30)
/* 80C58B84  54 00 10 3A */	slwi r0, r0, 2
/* 80C58B88  3C 80 80 C6 */	lis r4, l_resNameIdx@ha
/* 80C58B8C  38 84 A1 5C */	addi r4, r4, l_resNameIdx@l
/* 80C58B90  7C 84 00 2E */	lwzx r4, r4, r0
/* 80C58B94  4B 3D 43 28 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80C58B98  7C 7F 1B 78 */	mr r31, r3
/* 80C58B9C  2C 1F 00 04 */	cmpwi r31, 4
/* 80C58BA0  40 82 01 64 */	bne lbl_80C58D04
/* 80C58BA4  88 1E 05 F9 */	lbz r0, 0x5f9(r30)
/* 80C58BA8  54 06 10 3A */	slwi r6, r0, 2
/* 80C58BAC  7F C3 F3 78 */	mr r3, r30
/* 80C58BB0  3C 80 80 C6 */	lis r4, l_resNameIdx@ha
/* 80C58BB4  38 84 A1 5C */	addi r4, r4, l_resNameIdx@l
/* 80C58BB8  7C 84 30 2E */	lwzx r4, r4, r6
/* 80C58BBC  3C A0 80 C6 */	lis r5, l_dzbIdx@ha
/* 80C58BC0  38 A5 9E C4 */	addi r5, r5, l_dzbIdx@l
/* 80C58BC4  7C A5 30 2E */	lwzx r5, r5, r6
/* 80C58BC8  38 C0 00 00 */	li r6, 0
/* 80C58BCC  54 00 08 3C */	slwi r0, r0, 1
/* 80C58BD0  3C E0 80 C6 */	lis r7, estimateSizeTbl@ha
/* 80C58BD4  38 E7 A0 18 */	addi r7, r7, estimateSizeTbl@l
/* 80C58BD8  7C E7 02 2E */	lhzx r7, r7, r0
/* 80C58BDC  39 00 00 00 */	li r8, 0
/* 80C58BE0  4B 41 FB DC */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80C58BE4  2C 03 00 05 */	cmpwi r3, 5
/* 80C58BE8  40 82 00 0C */	bne lbl_80C58BF4
/* 80C58BEC  38 60 00 05 */	li r3, 5
/* 80C58BF0  48 00 01 18 */	b lbl_80C58D08
lbl_80C58BF4:
/* 80C58BF4  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C58BF8  54 00 A5 3E */	rlwinm r0, r0, 0x14, 0x14, 0x1f
/* 80C58BFC  3C 60 80 C6 */	lis r3, lit_3812@ha
/* 80C58C00  C8 23 A0 48 */	lfd f1, lit_3812@l(r3)
/* 80C58C04  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80C58C08  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C58C0C  3C 00 43 30 */	lis r0, 0x4330
/* 80C58C10  90 01 00 08 */	stw r0, 8(r1)
/* 80C58C14  C8 01 00 08 */	lfd f0, 8(r1)
/* 80C58C18  EC 00 08 28 */	fsubs f0, f0, f1
/* 80C58C1C  D0 1E 05 FC */	stfs f0, 0x5fc(r30)
/* 80C58C20  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C58C24  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C58C28  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C58C2C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C58C30  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C58C34  7C 05 07 74 */	extsb r5, r0
/* 80C58C38  4B 3D C7 28 */	b isSwitch__10dSv_info_cCFii
/* 80C58C3C  98 7E 06 02 */	stb r3, 0x602(r30)
/* 80C58C40  38 00 00 01 */	li r0, 1
/* 80C58C44  98 1E 06 05 */	stb r0, 0x605(r30)
/* 80C58C48  88 7E 05 F9 */	lbz r3, 0x5f9(r30)
/* 80C58C4C  28 03 00 01 */	cmplwi r3, 1
/* 80C58C50  41 82 00 2C */	beq lbl_80C58C7C
/* 80C58C54  28 03 00 0A */	cmplwi r3, 0xa
/* 80C58C58  41 82 00 24 */	beq lbl_80C58C7C
/* 80C58C5C  28 03 00 0F */	cmplwi r3, 0xf
/* 80C58C60  41 82 00 1C */	beq lbl_80C58C7C
/* 80C58C64  28 03 00 11 */	cmplwi r3, 0x11
/* 80C58C68  41 82 00 14 */	beq lbl_80C58C7C
/* 80C58C6C  28 03 00 13 */	cmplwi r3, 0x13
/* 80C58C70  41 82 00 0C */	beq lbl_80C58C7C
/* 80C58C74  28 03 00 14 */	cmplwi r3, 0x14
/* 80C58C78  40 82 00 54 */	bne lbl_80C58CCC
lbl_80C58C7C:
/* 80C58C7C  88 1E 06 02 */	lbz r0, 0x602(r30)
/* 80C58C80  28 00 00 00 */	cmplwi r0, 0
/* 80C58C84  40 82 00 2C */	bne lbl_80C58CB0
/* 80C58C88  80 9E 05 68 */	lwz r4, 0x568(r30)
/* 80C58C8C  28 04 00 00 */	cmplwi r4, 0
/* 80C58C90  41 82 00 14 */	beq lbl_80C58CA4
/* 80C58C94  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C58C98  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C58C9C  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C58CA0  4B 41 B5 B0 */	b Release__4cBgSFP9dBgW_Base
lbl_80C58CA4:
/* 80C58CA4  38 00 00 00 */	li r0, 0
/* 80C58CA8  98 1E 06 05 */	stb r0, 0x605(r30)
/* 80C58CAC  48 00 00 3C */	b lbl_80C58CE8
lbl_80C58CB0:
/* 80C58CB0  28 03 00 01 */	cmplwi r3, 1
/* 80C58CB4  40 82 00 34 */	bne lbl_80C58CE8
/* 80C58CB8  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80C58CBC  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80C58CC0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C58CC4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 80C58CC8  48 00 00 20 */	b lbl_80C58CE8
lbl_80C58CCC:
/* 80C58CCC  88 1E 06 02 */	lbz r0, 0x602(r30)
/* 80C58CD0  28 00 00 00 */	cmplwi r0, 0
/* 80C58CD4  41 82 00 14 */	beq lbl_80C58CE8
/* 80C58CD8  C0 3E 04 AC */	lfs f1, 0x4ac(r30)
/* 80C58CDC  C0 1E 05 FC */	lfs f0, 0x5fc(r30)
/* 80C58CE0  EC 01 00 2A */	fadds f0, f1, f0
/* 80C58CE4  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
lbl_80C58CE8:
/* 80C58CE8  80 7E 05 C0 */	lwz r3, 0x5c0(r30)
/* 80C58CEC  38 03 00 24 */	addi r0, r3, 0x24
/* 80C58CF0  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80C58CF4  7F C3 F3 78 */	mr r3, r30
/* 80C58CF8  4B FF FB 41 */	bl setBaseMtx__12daLv3Water_cFv
/* 80C58CFC  38 00 00 00 */	li r0, 0
/* 80C58D00  98 1E 05 F8 */	stb r0, 0x5f8(r30)
lbl_80C58D04:
/* 80C58D04  7F E3 FB 78 */	mr r3, r31
lbl_80C58D08:
/* 80C58D08  39 61 00 20 */	addi r11, r1, 0x20
/* 80C58D0C  4B 70 95 1C */	b _restgpr_29
/* 80C58D10  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80C58D14  7C 08 03 A6 */	mtlr r0
/* 80C58D18  38 21 00 20 */	addi r1, r1, 0x20
/* 80C58D1C  4E 80 00 20 */	blr 
