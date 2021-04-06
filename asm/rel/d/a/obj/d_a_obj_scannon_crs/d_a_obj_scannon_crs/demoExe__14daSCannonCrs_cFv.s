lbl_80CCA348:
/* 80CCA348  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80CCA34C  7C 08 02 A6 */	mflr r0
/* 80CCA350  90 01 00 54 */	stw r0, 0x54(r1)
/* 80CCA354  39 61 00 50 */	addi r11, r1, 0x50
/* 80CCA358  4B 69 7E 79 */	bl _savegpr_26
/* 80CCA35C  7C 7B 1B 78 */	mr r27, r3
/* 80CCA360  3C 60 80 CD */	lis r3, DISAP_PARTICLE_NAME@ha /* 0x80CCB080@ha */
/* 80CCA364  3B A3 B0 80 */	addi r29, r3, DISAP_PARTICLE_NAME@l /* 0x80CCB080@l */
/* 80CCA368  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCA36C  3B C3 61 C0 */	addi r30, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCA370  3B 9E 4F F8 */	addi r28, r30, 0x4ff8
/* 80CCA374  7F 83 E3 78 */	mr r3, r28
/* 80CCA378  80 9B 06 3C */	lwz r4, 0x63c(r27)
/* 80CCA37C  3C A0 80 CD */	lis r5, CUT_TYPE_TABLE@ha /* 0x80CCB218@ha */
/* 80CCA380  38 A5 B2 18 */	addi r5, r5, CUT_TYPE_TABLE@l /* 0x80CCB218@l */
/* 80CCA384  38 C0 00 04 */	li r6, 4
/* 80CCA388  38 E0 00 00 */	li r7, 0
/* 80CCA38C  39 00 00 00 */	li r8, 0
/* 80CCA390  4B 37 DA 81 */	bl getMyActIdx__16dEvent_manager_cFiPCPCciii
/* 80CCA394  7C 7F 1B 78 */	mr r31, r3
/* 80CCA398  2C 1F FF FF */	cmpwi r31, -1
/* 80CCA39C  41 82 03 98 */	beq lbl_80CCA734
/* 80CCA3A0  7F 83 E3 78 */	mr r3, r28
/* 80CCA3A4  80 9B 06 3C */	lwz r4, 0x63c(r27)
/* 80CCA3A8  4B 37 D9 A5 */	bl getIsAddvance__16dEvent_manager_cFi
/* 80CCA3AC  2C 03 00 00 */	cmpwi r3, 0
/* 80CCA3B0  41 82 01 E8 */	beq lbl_80CCA598
/* 80CCA3B4  2C 1F 00 02 */	cmpwi r31, 2
/* 80CCA3B8  41 82 01 00 */	beq lbl_80CCA4B8
/* 80CCA3BC  40 80 00 14 */	bge lbl_80CCA3D0
/* 80CCA3C0  2C 1F 00 00 */	cmpwi r31, 0
/* 80CCA3C4  41 82 00 18 */	beq lbl_80CCA3DC
/* 80CCA3C8  40 80 00 24 */	bge lbl_80CCA3EC
/* 80CCA3CC  48 00 01 CC */	b lbl_80CCA598
lbl_80CCA3D0:
/* 80CCA3D0  2C 1F 00 04 */	cmpwi r31, 4
/* 80CCA3D4  40 80 01 C4 */	bge lbl_80CCA598
/* 80CCA3D8  48 00 01 14 */	b lbl_80CCA4EC
lbl_80CCA3DC:
/* 80CCA3DC  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80CCA3E0  D0 1B 05 D8 */	stfs f0, 0x5d8(r27)
/* 80CCA3E4  D0 1B 05 F4 */	stfs f0, 0x5f4(r27)
/* 80CCA3E8  48 00 01 B0 */	b lbl_80CCA598
lbl_80CCA3EC:
/* 80CCA3EC  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80CCA3F0  D0 1B 05 D8 */	stfs f0, 0x5d8(r27)
/* 80CCA3F4  D0 1B 05 F4 */	stfs f0, 0x5f4(r27)
/* 80CCA3F8  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80CCA3FC  7C 03 07 74 */	extsb r3, r0
/* 80CCA400  4B 36 2C 6D */	bl dComIfGp_getReverb__Fi
/* 80CCA404  7C 67 1B 78 */	mr r7, r3
/* 80CCA408  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080248@ha */
/* 80CCA40C  38 03 02 48 */	addi r0, r3, 0x0248 /* 0x00080248@l */
/* 80CCA410  90 01 00 10 */	stw r0, 0x10(r1)
/* 80CCA414  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CCA418  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CCA41C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCA420  38 81 00 10 */	addi r4, r1, 0x10
/* 80CCA424  3B 5B 04 D0 */	addi r26, r27, 0x4d0
/* 80CCA428  7F 45 D3 78 */	mr r5, r26
/* 80CCA42C  38 C0 00 00 */	li r6, 0
/* 80CCA430  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 80CCA434  FC 40 08 90 */	fmr f2, f1
/* 80CCA438  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 80CCA43C  FC 80 18 90 */	fmr f4, f3
/* 80CCA440  39 00 00 00 */	li r8, 0
/* 80CCA444  4B 5E 15 41 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CCA448  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80CCA44C  7C 03 07 74 */	extsb r3, r0
/* 80CCA450  4B 36 2C 1D */	bl dComIfGp_getReverb__Fi
/* 80CCA454  7C 67 1B 78 */	mr r7, r3
/* 80CCA458  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006009F@ha */
/* 80CCA45C  38 03 00 9F */	addi r0, r3, 0x009F /* 0x0006009F@l */
/* 80CCA460  90 01 00 0C */	stw r0, 0xc(r1)
/* 80CCA464  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CCA468  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CCA46C  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCA470  38 81 00 0C */	addi r4, r1, 0xc
/* 80CCA474  7F 45 D3 78 */	mr r5, r26
/* 80CCA478  38 C0 00 00 */	li r6, 0
/* 80CCA47C  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 80CCA480  FC 40 08 90 */	fmr f2, f1
/* 80CCA484  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 80CCA488  FC 80 18 90 */	fmr f4, f3
/* 80CCA48C  39 00 00 00 */	li r8, 0
/* 80CCA490  4B 5E 14 F5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CCA494  7F 63 DB 78 */	mr r3, r27
/* 80CCA498  48 00 08 39 */	bl callMidnaBeamEmt__14daSCannonCrs_cFv
/* 80CCA49C  7F 63 DB 78 */	mr r3, r27
/* 80CCA4A0  A0 9B 06 4A */	lhz r4, 0x64a(r27)
/* 80CCA4A4  38 A0 00 04 */	li r5, 4
/* 80CCA4A8  38 DD 00 08 */	addi r6, r29, 8
/* 80CCA4AC  38 FB 06 64 */	addi r7, r27, 0x664
/* 80CCA4B0  48 00 06 75 */	bl initEmtRt__14daSCannonCrs_cFUsiPCUsPP14JPABaseEmitter
/* 80CCA4B4  48 00 00 E4 */	b lbl_80CCA598
lbl_80CCA4B8:
/* 80CCA4B8  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 80CCA4BC  D0 3B 05 D8 */	stfs f1, 0x5d8(r27)
/* 80CCA4C0  D0 3B 05 F4 */	stfs f1, 0x5f4(r27)
/* 80CCA4C4  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80CCA4C8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80CCA4CC  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80CCA4D0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80CCA4D4  38 7E 5B D4 */	addi r3, r30, 0x5bd4
/* 80CCA4D8  38 80 00 02 */	li r4, 2
/* 80CCA4DC  38 A0 00 1F */	li r5, 0x1f
/* 80CCA4E0  38 C1 00 2C */	addi r6, r1, 0x2c
/* 80CCA4E4  4B 3A 56 2D */	bl StartQuake__12dVibration_cFii4cXyz
/* 80CCA4E8  48 00 00 B0 */	b lbl_80CCA598
lbl_80CCA4EC:
/* 80CCA4EC  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 80CCA4F0  D0 3B 05 D8 */	stfs f1, 0x5d8(r27)
/* 80CCA4F4  D0 3B 05 F4 */	stfs f1, 0x5f4(r27)
/* 80CCA4F8  38 00 00 00 */	li r0, 0
/* 80CCA4FC  90 1B 06 40 */	stw r0, 0x640(r27)
/* 80CCA500  C0 1D 00 34 */	lfs f0, 0x34(r29)
/* 80CCA504  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80CCA508  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80CCA50C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80CCA510  3B 5E 5B D4 */	addi r26, r30, 0x5bd4
/* 80CCA514  7F 43 D3 78 */	mr r3, r26
/* 80CCA518  38 80 00 03 */	li r4, 3
/* 80CCA51C  38 A0 00 1F */	li r5, 0x1f
/* 80CCA520  38 C1 00 20 */	addi r6, r1, 0x20
/* 80CCA524  4B 3A 55 01 */	bl StartShock__12dVibration_cFii4cXyz
/* 80CCA528  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 80CCA52C  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 80CCA530  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 80CCA534  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80CCA538  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80CCA53C  7F 43 D3 78 */	mr r3, r26
/* 80CCA540  38 80 00 02 */	li r4, 2
/* 80CCA544  38 A0 00 1F */	li r5, 0x1f
/* 80CCA548  38 C1 00 14 */	addi r6, r1, 0x14
/* 80CCA54C  4B 3A 55 C5 */	bl StartQuake__12dVibration_cFii4cXyz
/* 80CCA550  80 1B 00 B0 */	lwz r0, 0xb0(r27)
/* 80CCA554  54 03 C6 3E */	rlwinm r3, r0, 0x18, 0x18, 0x1f
/* 80CCA558  4B 36 55 41 */	bl dComIfGp_TargetWarpPt_set__FUc
/* 80CCA55C  4B 36 55 8D */	bl dComIfGp_TransportWarp_check__Fv
/* 80CCA560  2C 03 00 00 */	cmpwi r3, 0
/* 80CCA564  41 82 00 34 */	beq lbl_80CCA598
/* 80CCA568  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCA56C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCA570  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 80CCA574  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha /* 0x803A7288@ha */
/* 80CCA578  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l /* 0x803A7288@l */
/* 80CCA57C  A0 84 03 20 */	lhz r4, 0x320(r4)
/* 80CCA580  4B 36 A4 0D */	bl onEventBit__11dSv_event_cFUs
/* 80CCA584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80CCA588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80CCA58C  38 63 02 B0 */	addi r3, r3, 0x2b0
/* 80CCA590  38 80 00 35 */	li r4, 0x35
/* 80CCA594  4B 36 A2 7D */	bl onSwitch__12dSv_memBit_cFi
lbl_80CCA598:
/* 80CCA598  2C 1F 00 02 */	cmpwi r31, 2
/* 80CCA59C  41 82 00 6C */	beq lbl_80CCA608
/* 80CCA5A0  40 80 00 14 */	bge lbl_80CCA5B4
/* 80CCA5A4  2C 1F 00 00 */	cmpwi r31, 0
/* 80CCA5A8  41 82 00 18 */	beq lbl_80CCA5C0
/* 80CCA5AC  40 80 00 24 */	bge lbl_80CCA5D0
/* 80CCA5B0  48 00 01 84 */	b lbl_80CCA734
lbl_80CCA5B4:
/* 80CCA5B4  2C 1F 00 04 */	cmpwi r31, 4
/* 80CCA5B8  40 80 01 7C */	bge lbl_80CCA734
/* 80CCA5BC  48 00 00 7C */	b lbl_80CCA638
lbl_80CCA5C0:
/* 80CCA5C0  7F 83 E3 78 */	mr r3, r28
/* 80CCA5C4  80 9B 06 3C */	lwz r4, 0x63c(r27)
/* 80CCA5C8  4B 37 DB B5 */	bl cutEnd__16dEvent_manager_cFi
/* 80CCA5CC  48 00 01 68 */	b lbl_80CCA734
lbl_80CCA5D0:
/* 80CCA5D0  38 7B 05 CC */	addi r3, r27, 0x5cc
/* 80CCA5D4  C0 3D 00 54 */	lfs f1, 0x54(r29)
/* 80CCA5D8  4B 65 DE 55 */	bl checkPass__12J3DFrameCtrlFf
/* 80CCA5DC  2C 03 00 00 */	cmpwi r3, 0
/* 80CCA5E0  41 82 00 10 */	beq lbl_80CCA5F0
/* 80CCA5E4  7F 83 E3 78 */	mr r3, r28
/* 80CCA5E8  80 9B 06 3C */	lwz r4, 0x63c(r27)
/* 80CCA5EC  4B 37 DB 91 */	bl cutEnd__16dEvent_manager_cFi
lbl_80CCA5F0:
/* 80CCA5F0  7F 63 DB 78 */	mr r3, r27
/* 80CCA5F4  A0 9B 06 4A */	lhz r4, 0x64a(r27)
/* 80CCA5F8  38 A0 00 04 */	li r5, 4
/* 80CCA5FC  38 DB 06 64 */	addi r6, r27, 0x664
/* 80CCA600  48 00 06 49 */	bl exeEmtRt__14daSCannonCrs_cFUsiPP14JPABaseEmitter
/* 80CCA604  48 00 01 30 */	b lbl_80CCA734
lbl_80CCA608:
/* 80CCA608  38 7B 05 CC */	addi r3, r27, 0x5cc
/* 80CCA60C  C0 3D 00 58 */	lfs f1, 0x58(r29)
/* 80CCA610  4B 65 DE 1D */	bl checkPass__12J3DFrameCtrlFf
/* 80CCA614  2C 03 00 00 */	cmpwi r3, 0
/* 80CCA618  41 82 01 1C */	beq lbl_80CCA734
/* 80CCA61C  38 7E 5B D4 */	addi r3, r30, 0x5bd4
/* 80CCA620  38 80 00 1F */	li r4, 0x1f
/* 80CCA624  4B 3A 57 71 */	bl StopQuake__12dVibration_cFi
/* 80CCA628  7F 83 E3 78 */	mr r3, r28
/* 80CCA62C  80 9B 06 3C */	lwz r4, 0x63c(r27)
/* 80CCA630  4B 37 DB 4D */	bl cutEnd__16dEvent_manager_cFi
/* 80CCA634  48 00 01 00 */	b lbl_80CCA734
lbl_80CCA638:
/* 80CCA638  80 7B 06 40 */	lwz r3, 0x640(r27)
/* 80CCA63C  38 03 00 01 */	addi r0, r3, 1
/* 80CCA640  90 1B 06 40 */	stw r0, 0x640(r27)
/* 80CCA644  80 1B 06 40 */	lwz r0, 0x640(r27)
/* 80CCA648  2C 00 00 32 */	cmpwi r0, 0x32
/* 80CCA64C  40 82 00 10 */	bne lbl_80CCA65C
/* 80CCA650  38 7E 5B D4 */	addi r3, r30, 0x5bd4
/* 80CCA654  38 80 00 1F */	li r4, 0x1f
/* 80CCA658  4B 3A 57 3D */	bl StopQuake__12dVibration_cFi
lbl_80CCA65C:
/* 80CCA65C  38 7B 05 CC */	addi r3, r27, 0x5cc
/* 80CCA660  C0 3D 00 5C */	lfs f1, 0x5c(r29)
/* 80CCA664  4B 65 DD C9 */	bl checkPass__12J3DFrameCtrlFf
/* 80CCA668  2C 03 00 00 */	cmpwi r3, 0
/* 80CCA66C  41 82 00 6C */	beq lbl_80CCA6D8
/* 80CCA670  7F 63 DB 78 */	mr r3, r27
/* 80CCA674  A0 9B 06 48 */	lhz r4, 0x648(r27)
/* 80CCA678  38 A0 00 04 */	li r5, 4
/* 80CCA67C  38 DD 00 00 */	addi r6, r29, 0
/* 80CCA680  38 FB 06 54 */	addi r7, r27, 0x654
/* 80CCA684  48 00 04 A1 */	bl initEmtRt__14daSCannonCrs_cFUsiPCUsPP14JPABaseEmitter
/* 80CCA688  88 1B 04 E2 */	lbz r0, 0x4e2(r27)
/* 80CCA68C  7C 03 07 74 */	extsb r3, r0
/* 80CCA690  4B 36 29 DD */	bl dComIfGp_getReverb__Fi
/* 80CCA694  7C 67 1B 78 */	mr r7, r3
/* 80CCA698  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080249@ha */
/* 80CCA69C  38 03 02 49 */	addi r0, r3, 0x0249 /* 0x00080249@l */
/* 80CCA6A0  90 01 00 08 */	stw r0, 8(r1)
/* 80CCA6A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80CCA6A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80CCA6AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80CCA6B0  38 81 00 08 */	addi r4, r1, 8
/* 80CCA6B4  38 BB 04 D0 */	addi r5, r27, 0x4d0
/* 80CCA6B8  38 C0 00 00 */	li r6, 0
/* 80CCA6BC  C0 3D 00 2C */	lfs f1, 0x2c(r29)
/* 80CCA6C0  FC 40 08 90 */	fmr f2, f1
/* 80CCA6C4  C0 7D 00 30 */	lfs f3, 0x30(r29)
/* 80CCA6C8  FC 80 18 90 */	fmr f4, f3
/* 80CCA6CC  39 00 00 00 */	li r8, 0
/* 80CCA6D0  4B 5E 12 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80CCA6D4  48 00 00 28 */	b lbl_80CCA6FC
lbl_80CCA6D8:
/* 80CCA6D8  C0 3B 05 DC */	lfs f1, 0x5dc(r27)
/* 80CCA6DC  C0 1D 00 5C */	lfs f0, 0x5c(r29)
/* 80CCA6E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80CCA6E4  40 81 00 18 */	ble lbl_80CCA6FC
/* 80CCA6E8  7F 63 DB 78 */	mr r3, r27
/* 80CCA6EC  A0 9B 06 48 */	lhz r4, 0x648(r27)
/* 80CCA6F0  38 A0 00 04 */	li r5, 4
/* 80CCA6F4  38 DB 06 54 */	addi r6, r27, 0x654
/* 80CCA6F8  48 00 05 51 */	bl exeEmtRt__14daSCannonCrs_cFUsiPP14JPABaseEmitter
lbl_80CCA6FC:
/* 80CCA6FC  38 60 00 01 */	li r3, 1
/* 80CCA700  88 1B 05 D1 */	lbz r0, 0x5d1(r27)
/* 80CCA704  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80CCA708  40 82 00 18 */	bne lbl_80CCA720
/* 80CCA70C  C0 3D 00 34 */	lfs f1, 0x34(r29)
/* 80CCA710  C0 1B 05 D8 */	lfs f0, 0x5d8(r27)
/* 80CCA714  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80CCA718  41 82 00 08 */	beq lbl_80CCA720
/* 80CCA71C  38 60 00 00 */	li r3, 0
lbl_80CCA720:
/* 80CCA720  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80CCA724  41 82 00 10 */	beq lbl_80CCA734
/* 80CCA728  7F 83 E3 78 */	mr r3, r28
/* 80CCA72C  80 9B 06 3C */	lwz r4, 0x63c(r27)
/* 80CCA730  4B 37 DA 4D */	bl cutEnd__16dEvent_manager_cFi
lbl_80CCA734:
/* 80CCA734  39 61 00 50 */	addi r11, r1, 0x50
/* 80CCA738  4B 69 7A E5 */	bl _restgpr_26
/* 80CCA73C  80 01 00 54 */	lwz r0, 0x54(r1)
/* 80CCA740  7C 08 03 A6 */	mtlr r0
/* 80CCA744  38 21 00 50 */	addi r1, r1, 0x50
/* 80CCA748  4E 80 00 20 */	blr 
