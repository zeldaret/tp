lbl_8058D7EC:
/* 8058D7EC  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 8058D7F0  7C 08 02 A6 */	mflr r0
/* 8058D7F4  90 01 00 34 */	stw r0, 0x34(r1)
/* 8058D7F8  39 61 00 30 */	addi r11, r1, 0x30
/* 8058D7FC  4B DD 49 E0 */	b _savegpr_29
/* 8058D800  7C 7E 1B 78 */	mr r30, r3
/* 8058D804  3C 80 80 59 */	lis r4, data_8058DD50@ha
/* 8058D808  3B E4 DD 50 */	addi r31, r4, data_8058DD50@l
/* 8058D80C  38 80 00 00 */	li r4, 0
/* 8058D810  3C A0 80 43 */	lis r5, Zero__4cXyz@ha
/* 8058D814  38 A5 0C F4 */	addi r5, r5, Zero__4cXyz@l
/* 8058D818  38 DF 00 00 */	addi r6, r31, 0
/* 8058D81C  C0 26 00 04 */	lfs f1, 4(r6)
/* 8058D820  C0 46 00 08 */	lfs f2, 8(r6)
/* 8058D824  4B AA 9B 9C */	b posMoveF_stream__5daObjFP10fopAc_ac_cPC4cXyzPC4cXyzff
/* 8058D828  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 8058D82C  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 8058D830  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8058D834  40 80 01 74 */	bge lbl_8058D9A8
/* 8058D838  A8 9E 05 B6 */	lha r4, 0x5b6(r30)
/* 8058D83C  38 7F 00 00 */	addi r3, r31, 0
/* 8058D840  88 03 00 10 */	lbz r0, 0x10(r3)
/* 8058D844  7C 04 00 00 */	cmpw r4, r0
/* 8058D848  40 82 00 8C */	bne lbl_8058D8D4
/* 8058D84C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 8058D850  4B C1 DC 70 */	b dKy_pol_sound_get__FPC13cBgS_PolyInfo
/* 8058D854  54 7D 06 3E */	clrlwi r29, r3, 0x18
/* 8058D858  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8058D85C  7C 03 07 74 */	extsb r3, r0
/* 8058D860  4B A9 F8 0C */	b dComIfGp_getReverb__Fi
/* 8058D864  7C 67 1B 78 */	mr r7, r3
/* 8058D868  38 00 00 00 */	li r0, 0
/* 8058D86C  90 01 00 0C */	stw r0, 0xc(r1)
/* 8058D870  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8058D874  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8058D878  80 63 00 00 */	lwz r3, 0(r3)
/* 8058D87C  38 81 00 0C */	addi r4, r1, 0xc
/* 8058D880  38 BE 05 38 */	addi r5, r30, 0x538
/* 8058D884  7F A6 EB 78 */	mr r6, r29
/* 8058D888  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8058D88C  FC 40 08 90 */	fmr f2, f1
/* 8058D890  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 8058D894  FC 80 18 90 */	fmr f4, f3
/* 8058D898  39 00 00 00 */	li r8, 0
/* 8058D89C  4B D1 E0 E8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 8058D8A0  C0 3F 00 44 */	lfs f1, 0x44(r31)
/* 8058D8A4  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8058D8A8  C0 1F 00 50 */	lfs f0, 0x50(r31)
/* 8058D8AC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 8058D8B0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8058D8B4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8058D8B8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8058D8BC  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 8058D8C0  38 80 00 04 */	li r4, 4
/* 8058D8C4  38 A0 00 1F */	li r5, 0x1f
/* 8058D8C8  38 C1 00 10 */	addi r6, r1, 0x10
/* 8058D8CC  4B AE 21 58 */	b StartShock__12dVibration_cFii4cXyz
/* 8058D8D0  48 00 00 84 */	b lbl_8058D954
lbl_8058D8D4:
/* 8058D8D4  7C 04 00 50 */	subf r0, r4, r0
/* 8058D8D8  2C 00 00 01 */	cmpwi r0, 1
/* 8058D8DC  40 82 00 0C */	bne lbl_8058D8E8
/* 8058D8E0  8B A3 00 11 */	lbz r29, 0x11(r3)
/* 8058D8E4  48 00 00 28 */	b lbl_8058D90C
lbl_8058D8E8:
/* 8058D8E8  2C 00 00 02 */	cmpwi r0, 2
/* 8058D8EC  40 82 00 0C */	bne lbl_8058D8F8
/* 8058D8F0  8B A3 00 12 */	lbz r29, 0x12(r3)
/* 8058D8F4  48 00 00 18 */	b lbl_8058D90C
lbl_8058D8F8:
/* 8058D8F8  2C 00 00 03 */	cmpwi r0, 3
/* 8058D8FC  40 82 00 0C */	bne lbl_8058D908
/* 8058D900  8B A3 00 13 */	lbz r29, 0x13(r3)
/* 8058D904  48 00 00 08 */	b lbl_8058D90C
lbl_8058D908:
/* 8058D908  8B A3 00 14 */	lbz r29, 0x14(r3)
lbl_8058D90C:
/* 8058D90C  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 8058D910  7C 03 07 74 */	extsb r3, r0
/* 8058D914  4B A9 F7 58 */	b dComIfGp_getReverb__Fi
/* 8058D918  7C 67 1B 78 */	mr r7, r3
/* 8058D91C  38 00 00 00 */	li r0, 0
/* 8058D920  90 01 00 08 */	stw r0, 8(r1)
/* 8058D924  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8058D928  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8058D92C  80 63 00 00 */	lwz r3, 0(r3)
/* 8058D930  38 81 00 08 */	addi r4, r1, 8
/* 8058D934  38 BE 05 38 */	addi r5, r30, 0x538
/* 8058D938  7F A6 EB 78 */	mr r6, r29
/* 8058D93C  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 8058D940  FC 40 08 90 */	fmr f2, f1
/* 8058D944  C0 7F 00 30 */	lfs f3, 0x30(r31)
/* 8058D948  FC 80 18 90 */	fmr f4, f3
/* 8058D94C  39 00 00 00 */	li r8, 0
/* 8058D950  4B D1 E0 34 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_8058D954:
/* 8058D954  A8 7E 05 B6 */	lha r3, 0x5b6(r30)
/* 8058D958  2C 03 00 00 */	cmpwi r3, 0
/* 8058D95C  41 80 00 3C */	blt lbl_8058D998
/* 8058D960  38 03 FF FF */	addi r0, r3, -1
/* 8058D964  B0 1E 05 B6 */	sth r0, 0x5b6(r30)
/* 8058D968  C0 5E 05 B8 */	lfs f2, 0x5b8(r30)
/* 8058D96C  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 8058D970  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 8058D974  EC 00 10 28 */	fsubs f0, f0, f2
/* 8058D978  EC 01 00 32 */	fmuls f0, f1, f0
/* 8058D97C  EC 02 00 28 */	fsubs f0, f2, f0
/* 8058D980  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8058D984  C0 3E 04 FC */	lfs f1, 0x4fc(r30)
/* 8058D988  C0 1F 00 58 */	lfs f0, 0x58(r31)
/* 8058D98C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8058D990  D0 1E 04 FC */	stfs f0, 0x4fc(r30)
/* 8058D994  48 00 00 14 */	b lbl_8058D9A8
lbl_8058D998:
/* 8058D998  C0 1E 05 B8 */	lfs f0, 0x5b8(r30)
/* 8058D99C  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 8058D9A0  7F C3 F3 78 */	mr r3, r30
/* 8058D9A4  48 00 00 1D */	bl mode_fell_init__Q211daObjLadder5Act_cFv
lbl_8058D9A8:
/* 8058D9A8  39 61 00 30 */	addi r11, r1, 0x30
/* 8058D9AC  4B DD 48 7C */	b _restgpr_29
/* 8058D9B0  80 01 00 34 */	lwz r0, 0x34(r1)
/* 8058D9B4  7C 08 03 A6 */	mtlr r0
/* 8058D9B8  38 21 00 30 */	addi r1, r1, 0x30
/* 8058D9BC  4E 80 00 20 */	blr 
