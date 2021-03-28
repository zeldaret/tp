lbl_80D225B0:
/* 80D225B0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D225B4  7C 08 02 A6 */	mflr r0
/* 80D225B8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D225BC  DB E1 00 20 */	stfd f31, 0x20(r1)
/* 80D225C0  F3 E1 00 28 */	psq_st f31, 40(r1), 0, 0 /* qr0 */
/* 80D225C4  39 61 00 20 */	addi r11, r1, 0x20
/* 80D225C8  4B 63 FC 14 */	b _savegpr_29
/* 80D225CC  7C 7D 1B 78 */	mr r29, r3
/* 80D225D0  3C 80 80 D2 */	lis r4, l_sph_src@ha
/* 80D225D4  3B E4 3D CC */	addi r31, r4, l_sph_src@l
/* 80D225D8  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D225DC  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D225E0  83 C4 5D AC */	lwz r30, 0x5dac(r4)
/* 80D225E4  7F C4 F3 78 */	mr r4, r30
/* 80D225E8  4B 2F 83 7C */	b fopAcM_searchActorDistanceXZ__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80D225EC  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 80D225F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D225F4  40 80 00 68 */	bge lbl_80D2265C
/* 80D225F8  C0 3D 04 D4 */	lfs f1, 0x4d4(r29)
/* 80D225FC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80D22600  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D22604  FC 00 02 10 */	fabs f0, f0
/* 80D22608  FC 20 00 18 */	frsp f1, f0
/* 80D2260C  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80D22610  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D22614  40 80 00 48 */	bge lbl_80D2265C
/* 80D22618  7F A3 EB 78 */	mr r3, r29
/* 80D2261C  4B FF F4 FD */	bl getData__15daObjVolcBall_cFv
/* 80D22620  C0 23 00 30 */	lfs f1, 0x30(r3)
/* 80D22624  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80D22628  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D2262C  4B 54 53 60 */	b cM_rndFX__Ff
/* 80D22630  FF E0 08 90 */	fmr f31, f1
/* 80D22634  7F A3 EB 78 */	mr r3, r29
/* 80D22638  4B FF F4 E1 */	bl getData__15daObjVolcBall_cFv
/* 80D2263C  C0 23 00 2C */	lfs f1, 0x2c(r3)
/* 80D22640  C0 1F 00 40 */	lfs f0, 0x40(r31)
/* 80D22644  EC 00 00 72 */	fmuls f0, f0, f1
/* 80D22648  EC 20 F8 2A */	fadds f1, f0, f31
/* 80D2264C  4B 63 FA 60 */	b __cvt_fp2unsigned
/* 80D22650  90 7D 06 04 */	stw r3, 0x604(r29)
/* 80D22654  7F A3 EB 78 */	mr r3, r29
/* 80D22658  4B FF FF 25 */	bl initActionWarning__15daObjVolcBall_cFv
lbl_80D2265C:
/* 80D2265C  E3 E1 00 28 */	psq_l f31, 40(r1), 0, 0 /* qr0 */
/* 80D22660  CB E1 00 20 */	lfd f31, 0x20(r1)
/* 80D22664  39 61 00 20 */	addi r11, r1, 0x20
/* 80D22668  4B 63 FB C0 */	b _restgpr_29
/* 80D2266C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D22670  7C 08 03 A6 */	mtlr r0
/* 80D22674  38 21 00 30 */	addi r1, r1, 0x30
/* 80D22678  4E 80 00 20 */	blr 
