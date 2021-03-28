lbl_80D33348:
/* 80D33348  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80D3334C  7C 08 02 A6 */	mflr r0
/* 80D33350  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D33354  39 61 00 20 */	addi r11, r1, 0x20
/* 80D33358  4B 62 EE 84 */	b _savegpr_29
/* 80D3335C  7C 7D 1B 78 */	mr r29, r3
/* 80D33360  3C 60 80 D3 */	lis r3, mCcDObjInfo__11daWdStick_c@ha
/* 80D33364  3B E3 41 38 */	addi r31, r3, mCcDObjInfo__11daWdStick_c@l
/* 80D33368  C0 1D 05 98 */	lfs f0, 0x598(r29)
/* 80D3336C  FC 00 02 10 */	fabs f0, f0
/* 80D33370  FC 20 00 18 */	frsp f1, f0
/* 80D33374  C0 1F 00 98 */	lfs f0, 0x98(r31)
/* 80D33378  EC 20 00 72 */	fmuls f1, f0, f1
/* 80D3337C  4B 62 ED 30 */	b __cvt_fp2unsigned
/* 80D33380  7C 7E 1B 78 */	mr r30, r3
/* 80D33384  28 1E 00 64 */	cmplwi r30, 0x64
/* 80D33388  40 81 00 08 */	ble lbl_80D33390
/* 80D3338C  3B C0 00 64 */	li r30, 0x64
lbl_80D33390:
/* 80D33390  88 1D 04 E2 */	lbz r0, 0x4e2(r29)
/* 80D33394  7C 03 07 74 */	extsb r3, r0
/* 80D33398  4B 2F 9C D4 */	b dComIfGp_getReverb__Fi
/* 80D3339C  7C 67 1B 78 */	mr r7, r3
/* 80D333A0  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008010B@ha */
/* 80D333A4  38 03 01 0B */	addi r0, r3, 0x010B /* 0x0008010B@l */
/* 80D333A8  90 01 00 08 */	stw r0, 8(r1)
/* 80D333AC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D333B0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D333B4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D333B8  38 81 00 08 */	addi r4, r1, 8
/* 80D333BC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80D333C0  7F C6 F3 78 */	mr r6, r30
/* 80D333C4  C0 3F 00 50 */	lfs f1, 0x50(r31)
/* 80D333C8  FC 40 08 90 */	fmr f2, f1
/* 80D333CC  C0 7F 00 54 */	lfs f3, 0x54(r31)
/* 80D333D0  FC 80 18 90 */	fmr f4, f3
/* 80D333D4  39 00 00 00 */	li r8, 0
/* 80D333D8  4B 57 85 AC */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D333DC  39 61 00 20 */	addi r11, r1, 0x20
/* 80D333E0  4B 62 EE 48 */	b _restgpr_29
/* 80D333E4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80D333E8  7C 08 03 A6 */	mtlr r0
/* 80D333EC  38 21 00 20 */	addi r1, r1, 0x20
/* 80D333F0  4E 80 00 20 */	blr 
