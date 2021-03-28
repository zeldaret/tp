lbl_80CBECBC:
/* 80CBECBC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80CBECC0  7C 08 02 A6 */	mflr r0
/* 80CBECC4  90 01 00 24 */	stw r0, 0x24(r1)
/* 80CBECC8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80CBECCC  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80CBECD0  7C 7E 1B 78 */	mr r30, r3
/* 80CBECD4  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80CBECD8  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80CBECDC  40 82 00 4C */	bne lbl_80CBED28
/* 80CBECE0  7F C0 F3 79 */	or. r0, r30, r30
/* 80CBECE4  41 82 00 38 */	beq lbl_80CBED1C
/* 80CBECE8  7C 1F 03 78 */	mr r31, r0
/* 80CBECEC  4B 3B 99 38 */	b __ct__16dBgS_MoveBgActorFv
/* 80CBECF0  3C 60 80 CC */	lis r3, __vt__13daRotBridge_c@ha
/* 80CBECF4  38 03 F7 40 */	addi r0, r3, __vt__13daRotBridge_c@l
/* 80CBECF8  90 1F 05 9C */	stw r0, 0x59c(r31)
/* 80CBECFC  3C 60 80 CC */	lis r3, __vt__12J3DFrameCtrl@ha
/* 80CBED00  38 03 F7 34 */	addi r0, r3, __vt__12J3DFrameCtrl@l
/* 80CBED04  94 1F 05 BC */	stwu r0, 0x5bc(r31)
/* 80CBED08  7F E3 FB 78 */	mr r3, r31
/* 80CBED0C  38 80 00 00 */	li r4, 0
/* 80CBED10  4B 66 96 EC */	b init__12J3DFrameCtrlFs
/* 80CBED14  38 00 00 00 */	li r0, 0
/* 80CBED18  90 1F 00 18 */	stw r0, 0x18(r31)
lbl_80CBED1C:
/* 80CBED1C  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80CBED20  60 00 00 08 */	ori r0, r0, 8
/* 80CBED24  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80CBED28:
/* 80CBED28  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CBED2C  54 00 C7 3E */	rlwinm r0, r0, 0x18, 0x1c, 0x1f
/* 80CBED30  98 1E 05 AC */	stb r0, 0x5ac(r30)
/* 80CBED34  38 7E 05 A0 */	addi r3, r30, 0x5a0
/* 80CBED38  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80CBED3C  54 00 10 3A */	slwi r0, r0, 2
/* 80CBED40  3C 80 80 CC */	lis r4, l_resNameIdx@ha
/* 80CBED44  38 84 F6 D8 */	addi r4, r4, l_resNameIdx@l
/* 80CBED48  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CBED4C  4B 36 E1 70 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80CBED50  7C 7F 1B 78 */	mr r31, r3
/* 80CBED54  2C 1F 00 04 */	cmpwi r31, 4
/* 80CBED58  40 82 01 60 */	bne lbl_80CBEEB8
/* 80CBED5C  88 1E 05 AC */	lbz r0, 0x5ac(r30)
/* 80CBED60  54 00 10 3A */	slwi r0, r0, 2
/* 80CBED64  7F C3 F3 78 */	mr r3, r30
/* 80CBED68  3C 80 80 CC */	lis r4, l_resNameIdx@ha
/* 80CBED6C  38 84 F6 D8 */	addi r4, r4, l_resNameIdx@l
/* 80CBED70  7C 84 00 2E */	lwzx r4, r4, r0
/* 80CBED74  3C A0 80 CC */	lis r5, l_dzbIdx@ha
/* 80CBED78  38 A5 F6 78 */	addi r5, r5, l_dzbIdx@l
/* 80CBED7C  7C A5 00 2E */	lwzx r5, r5, r0
/* 80CBED80  3C C0 80 07 */	lis r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@ha
/* 80CBED84  38 C6 5A D8 */	addi r6, r6, dBgS_MoveBGProc_TypicalRotY__FP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz@l
/* 80CBED88  38 E0 2C 80 */	li r7, 0x2c80
/* 80CBED8C  39 00 00 00 */	li r8, 0
/* 80CBED90  4B 3B 9A 2C */	b MoveBGCreate__16dBgS_MoveBgActorFPCciPFP4dBgWPvRC13cBgS_PolyInfobP4cXyzP5csXyzP5csXyz_vUlPA3_A4_f
/* 80CBED94  2C 03 00 05 */	cmpwi r3, 5
/* 80CBED98  40 82 00 0C */	bne lbl_80CBEDA4
/* 80CBED9C  38 60 00 05 */	li r3, 5
/* 80CBEDA0  48 00 01 1C */	b lbl_80CBEEBC
lbl_80CBEDA4:
/* 80CBEDA4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBEDA8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBEDAC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80CBEDB0  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80CBEDB4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80CBEDB8  7C 05 07 74 */	extsb r5, r0
/* 80CBEDBC  4B 37 65 A4 */	b isSwitch__10dSv_info_cCFii
/* 80CBEDC0  98 7E 05 AD */	stb r3, 0x5ad(r30)
/* 80CBEDC4  A8 1E 05 C4 */	lha r0, 0x5c4(r30)
/* 80CBEDC8  3C 60 80 CC */	lis r3, lit_3776@ha
/* 80CBEDCC  C8 23 F6 98 */	lfd f1, lit_3776@l(r3)
/* 80CBEDD0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80CBEDD4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CBEDD8  3C 00 43 30 */	lis r0, 0x4330
/* 80CBEDDC  90 01 00 08 */	stw r0, 8(r1)
/* 80CBEDE0  C8 01 00 08 */	lfd f0, 8(r1)
/* 80CBEDE4  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CBEDE8  3C 60 80 CC */	lis r3, lit_3694@ha
/* 80CBEDEC  C0 23 F6 90 */	lfs f1, lit_3694@l(r3)
/* 80CBEDF0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80CBEDF4  FC 00 00 1E */	fctiwz f0, f0
/* 80CBEDF8  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80CBEDFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBEE00  B0 1E 05 C4 */	sth r0, 0x5c4(r30)
/* 80CBEE04  D0 3E 05 D8 */	stfs f1, 0x5d8(r30)
/* 80CBEE08  38 00 00 00 */	li r0, 0
/* 80CBEE0C  98 1E 05 B8 */	stb r0, 0x5b8(r30)
/* 80CBEE10  88 1E 05 AD */	lbz r0, 0x5ad(r30)
/* 80CBEE14  28 00 00 00 */	cmplwi r0, 0
/* 80CBEE18  40 82 00 18 */	bne lbl_80CBEE30
/* 80CBEE1C  A8 7E 04 E6 */	lha r3, 0x4e6(r30)
/* 80CBEE20  38 03 40 00 */	addi r0, r3, 0x4000
/* 80CBEE24  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 80CBEE28  38 00 00 01 */	li r0, 1
/* 80CBEE2C  98 1E 05 B8 */	stb r0, 0x5b8(r30)
lbl_80CBEE30:
/* 80CBEE30  C0 1E 05 D8 */	lfs f0, 0x5d8(r30)
/* 80CBEE34  D0 1E 05 C8 */	stfs f0, 0x5c8(r30)
/* 80CBEE38  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CBEE3C  4B 66 8D 98 */	b calcAnmMtx__8J3DModelFv
/* 80CBEE40  3C 60 80 CC */	lis r3, rideCallBack__13daRotBridge_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@ha
/* 80CBEE44  38 03 EF 1C */	addi r0, r3, rideCallBack__13daRotBridge_cFP4dBgWP10fopAc_ac_cP10fopAc_ac_c@l
/* 80CBEE48  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80CBEE4C  90 03 00 B4 */	stw r0, 0xb4(r3)
/* 80CBEE50  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 80CBEE54  28 03 00 00 */	cmplwi r3, 0
/* 80CBEE58  41 82 00 2C */	beq lbl_80CBEE84
/* 80CBEE5C  4B 5A 93 78 */	b ChkUsed__9cBgW_BgIdCFv
/* 80CBEE60  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CBEE64  41 82 00 20 */	beq lbl_80CBEE84
/* 80CBEE68  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80CBEE6C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80CBEE70  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80CBEE74  80 9E 05 DC */	lwz r4, 0x5dc(r30)
/* 80CBEE78  4B 3B 53 D8 */	b Release__4cBgSFP9dBgW_Base
/* 80CBEE7C  80 7E 05 DC */	lwz r3, 0x5dc(r30)
/* 80CBEE80  4B 3B CB 40 */	b Move__4dBgWFv
lbl_80CBEE84:
/* 80CBEE84  38 00 00 00 */	li r0, 0
/* 80CBEE88  98 1E 05 AE */	stb r0, 0x5ae(r30)
/* 80CBEE8C  98 1E 05 AF */	stb r0, 0x5af(r30)
/* 80CBEE90  98 1E 05 B0 */	stb r0, 0x5b0(r30)
/* 80CBEE94  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CBEE98  38 03 00 24 */	addi r0, r3, 0x24
/* 80CBEE9C  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80CBEEA0  80 7E 05 A8 */	lwz r3, 0x5a8(r30)
/* 80CBEEA4  80 83 00 04 */	lwz r4, 4(r3)
/* 80CBEEA8  7F C3 F3 78 */	mr r3, r30
/* 80CBEEAC  4B 35 B6 CC */	b fopAcM_setCullSizeBox2__FP10fopAc_ac_cP12J3DModelData
/* 80CBEEB0  7F C3 F3 78 */	mr r3, r30
/* 80CBEEB4  4B FF FB 71 */	bl setBaseMtx__13daRotBridge_cFv
lbl_80CBEEB8:
/* 80CBEEB8  7F E3 FB 78 */	mr r3, r31
lbl_80CBEEBC:
/* 80CBEEBC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80CBEEC0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80CBEEC4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80CBEEC8  7C 08 03 A6 */	mtlr r0
/* 80CBEECC  38 21 00 20 */	addi r1, r1, 0x20
/* 80CBEED0  4E 80 00 20 */	blr 
