lbl_80B5B260:
/* 80B5B260  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80B5B264  7C 08 02 A6 */	mflr r0
/* 80B5B268  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B5B26C  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80B5B270  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80B5B274  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B5B278  4B 80 6F 58 */	b _savegpr_26
/* 80B5B27C  7C 7C 1B 78 */	mr r28, r3
/* 80B5B280  3C 60 80 B6 */	lis r3, m__17daNpc_ykM_Param_c@ha
/* 80B5B284  3B C3 D7 94 */	addi r30, r3, m__17daNpc_ykM_Param_c@l
/* 80B5B288  80 7E 02 90 */	lwz r3, 0x290(r30)
/* 80B5B28C  80 1E 02 94 */	lwz r0, 0x294(r30)
/* 80B5B290  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B5B294  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B5B298  93 81 00 20 */	stw r28, 0x20(r1)
/* 80B5B29C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B5B2A0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B5B2A4  80 1F 5D AC */	lwz r0, 0x5dac(r31)
/* 80B5B2A8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B5B2AC  A0 1C 0E 22 */	lhz r0, 0xe22(r28)
/* 80B5B2B0  2C 00 00 02 */	cmpwi r0, 2
/* 80B5B2B4  41 82 00 8C */	beq lbl_80B5B340
/* 80B5B2B8  40 80 0B 14 */	bge lbl_80B5BDCC
/* 80B5B2BC  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B2C0  40 80 00 0C */	bge lbl_80B5B2CC
/* 80B5B2C4  48 00 0B 08 */	b lbl_80B5BDCC
/* 80B5B2C8  48 00 0B 04 */	b lbl_80B5BDCC
lbl_80B5B2CC:
/* 80B5B2CC  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80B5B2D0  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B2D4  40 82 00 6C */	bne lbl_80B5B340
/* 80B5B2D8  80 1C 0B 58 */	lwz r0, 0xb58(r28)
/* 80B5B2DC  2C 00 00 0F */	cmpwi r0, 0xf
/* 80B5B2E0  41 82 00 24 */	beq lbl_80B5B304
/* 80B5B2E4  83 7C 0B 5C */	lwz r27, 0xb5c(r28)
/* 80B5B2E8  38 7C 0B 50 */	addi r3, r28, 0xb50
/* 80B5B2EC  4B 5E A5 AC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5B2F0  93 7C 0B 5C */	stw r27, 0xb5c(r28)
/* 80B5B2F4  38 00 00 0F */	li r0, 0xf
/* 80B5B2F8  90 1C 0B 58 */	stw r0, 0xb58(r28)
/* 80B5B2FC  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5B300  D0 1C 0B 68 */	stfs f0, 0xb68(r28)
lbl_80B5B304:
/* 80B5B304  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5B308  2C 00 00 20 */	cmpwi r0, 0x20
/* 80B5B30C  41 82 00 24 */	beq lbl_80B5B330
/* 80B5B310  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5B314  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5B318  4B 5E A5 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5B31C  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5B320  38 00 00 20 */	li r0, 0x20
/* 80B5B324  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5B328  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5B32C  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B5B330:
/* 80B5B330  38 00 00 01 */	li r0, 1
/* 80B5B334  98 1C 15 76 */	stb r0, 0x1576(r28)
/* 80B5B338  38 00 00 02 */	li r0, 2
/* 80B5B33C  B0 1C 0E 22 */	sth r0, 0xe22(r28)
lbl_80B5B340:
/* 80B5B340  38 60 00 54 */	li r3, 0x54
/* 80B5B344  4B 5F 18 28 */	b daNpcT_chkTmpBit__FUl
/* 80B5B348  2C 03 00 00 */	cmpwi r3, 0
/* 80B5B34C  41 82 02 0C */	beq lbl_80B5B558
/* 80B5B350  80 7C 14 E0 */	lwz r3, 0x14e0(r28)
/* 80B5B354  38 81 00 20 */	addi r4, r1, 0x20
/* 80B5B358  38 BC 15 58 */	addi r5, r28, 0x1558
/* 80B5B35C  38 C0 00 02 */	li r6, 2
/* 80B5B360  38 FC 15 50 */	addi r7, r28, 0x1550
/* 80B5B364  4B 5F 13 9C */	b daNpcT_judgeRace__FP5dPathPP10fopAc_ac_cP16daNpcT_pntData_ciPi
/* 80B5B368  80 9C 14 E0 */	lwz r4, 0x14e0(r28)
/* 80B5B36C  80 64 00 08 */	lwz r3, 8(r4)
/* 80B5B370  A0 04 00 00 */	lhz r0, 0(r4)
/* 80B5B374  54 00 20 36 */	slwi r0, r0, 4
/* 80B5B378  7C 63 02 14 */	add r3, r3, r0
/* 80B5B37C  C0 03 FF F4 */	lfs f0, -0xc(r3)
/* 80B5B380  D0 1C 14 FC */	stfs f0, 0x14fc(r28)
/* 80B5B384  80 9C 14 E0 */	lwz r4, 0x14e0(r28)
/* 80B5B388  80 64 00 08 */	lwz r3, 8(r4)
/* 80B5B38C  A0 04 00 00 */	lhz r0, 0(r4)
/* 80B5B390  54 00 20 36 */	slwi r0, r0, 4
/* 80B5B394  7C 63 02 14 */	add r3, r3, r0
/* 80B5B398  C0 03 FF F8 */	lfs f0, -8(r3)
/* 80B5B39C  D0 1C 15 00 */	stfs f0, 0x1500(r28)
/* 80B5B3A0  80 9C 14 E0 */	lwz r4, 0x14e0(r28)
/* 80B5B3A4  80 64 00 08 */	lwz r3, 8(r4)
/* 80B5B3A8  A0 04 00 00 */	lhz r0, 0(r4)
/* 80B5B3AC  54 00 20 36 */	slwi r0, r0, 4
/* 80B5B3B0  7C 63 02 14 */	add r3, r3, r0
/* 80B5B3B4  C0 03 FF FC */	lfs f0, -4(r3)
/* 80B5B3B8  D0 1C 15 04 */	stfs f0, 0x1504(r28)
/* 80B5B3BC  38 7C 14 FC */	addi r3, r28, 0x14fc
/* 80B5B3C0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B5B3C4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B5B3C8  4B 71 58 3C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B5B3CC  7C 7B 1B 78 */	mr r27, r3
/* 80B5B3D0  80 1C 15 60 */	lwz r0, 0x1560(r28)
/* 80B5B3D4  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B3D8  41 80 00 34 */	blt lbl_80B5B40C
/* 80B5B3DC  38 7C 14 FC */	addi r3, r28, 0x14fc
/* 80B5B3E0  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B5B3E4  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B5B3E8  4B 7E BF B4 */	b PSVECSquareDistance
/* 80B5B3EC  C0 1E 02 98 */	lfs f0, 0x298(r30)
/* 80B5B3F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B5B3F4  40 80 01 44 */	bge lbl_80B5B538
/* 80B5B3F8  7F 60 07 34 */	extsh r0, r27
/* 80B5B3FC  2C 00 C0 00 */	cmpwi r0, -16384
/* 80B5B400  41 80 00 0C */	blt lbl_80B5B40C
/* 80B5B404  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80B5B408  40 81 01 30 */	ble lbl_80B5B538
lbl_80B5B40C:
/* 80B5B40C  38 00 FF FF */	li r0, -1
/* 80B5B410  90 1C 15 60 */	stw r0, 0x1560(r28)
/* 80B5B414  38 7C 09 30 */	addi r3, r28, 0x930
/* 80B5B418  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B5B41C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B5B420  4B 70 C9 08 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80B5B424  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B5B428  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B5B42C  3B A3 0F 38 */	addi r29, r3, 0xf38
/* 80B5B430  7F A3 EB 78 */	mr r3, r29
/* 80B5B434  38 9C 09 30 */	addi r4, r28, 0x930
/* 80B5B438  4B 51 90 68 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80B5B43C  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B5B440  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B5B444  41 82 00 F4 */	beq lbl_80B5B538
/* 80B5B448  80 7C 15 34 */	lwz r3, 0x1534(r28)
/* 80B5B44C  3C 03 00 01 */	addis r0, r3, 1
/* 80B5B450  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B5B454  41 82 00 DC */	beq lbl_80B5B530
/* 80B5B458  7F A3 EB 78 */	mr r3, r29
/* 80B5B45C  4B 4D 17 80 */	b getTimerPtr__14dComIfG_play_cFv
/* 80B5B460  7C 7B 1B 78 */	mr r27, r3
/* 80B5B464  80 7C 15 34 */	lwz r3, 0x1534(r28)
/* 80B5B468  4B 4C 5E F0 */	b fpcEx_SearchByID__FUi
/* 80B5B46C  7C 03 D8 40 */	cmplw r3, r27
/* 80B5B470  40 82 00 C0 */	bne lbl_80B5B530
/* 80B5B474  7F A3 EB 78 */	mr r3, r29
/* 80B5B478  4B 4D 17 64 */	b getTimerPtr__14dComIfG_play_cFv
/* 80B5B47C  4B 70 26 94 */	b isStart__8dTimer_cFv
/* 80B5B480  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B5B484  41 82 00 AC */	beq lbl_80B5B530
/* 80B5B488  88 1C 15 7C */	lbz r0, 0x157c(r28)
/* 80B5B48C  28 00 00 00 */	cmplwi r0, 0
/* 80B5B490  41 82 00 34 */	beq lbl_80B5B4C4
/* 80B5B494  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B5B498  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B5B49C  80 63 00 00 */	lwz r3, 0(r3)
/* 80B5B4A0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B5B4A4  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000099@ha */
/* 80B5B4A8  38 84 00 99 */	addi r4, r4, 0x0099 /* 0x01000099@l */
/* 80B5B4AC  4B 75 3F F0 */	b subBgmStart__8Z2SeqMgrFUl
/* 80B5B4B0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80B5B4B4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80B5B4B8  38 80 05 39 */	li r4, 0x539
/* 80B5B4BC  4B 6C 14 B4 */	b setMeterString__13dMeter2Info_cFl
/* 80B5B4C0  48 00 00 30 */	b lbl_80B5B4F0
lbl_80B5B4C4:
/* 80B5B4C4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B5B4C8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B5B4CC  80 63 00 00 */	lwz r3, 0(r3)
/* 80B5B4D0  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B5B4D4  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000098@ha */
/* 80B5B4D8  38 84 00 98 */	addi r4, r4, 0x0098 /* 0x01000098@l */
/* 80B5B4DC  4B 75 3F C0 */	b subBgmStart__8Z2SeqMgrFUl
/* 80B5B4E0  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80B5B4E4  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80B5B4E8  38 80 05 38 */	li r4, 0x538
/* 80B5B4EC  4B 6C 14 84 */	b setMeterString__13dMeter2Info_cFl
lbl_80B5B4F0:
/* 80B5B4F0  38 60 00 05 */	li r3, 5
/* 80B5B4F4  38 80 FF FF */	li r4, -1
/* 80B5B4F8  4B 4D 41 B8 */	b dComIfG_TimerEnd__Fii
/* 80B5B4FC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B5B500  3B 63 61 C0 */	addi r27, r3, g_dComIfG_gameInfo@l
/* 80B5B504  83 5B 09 4C */	lwz r26, 0x94c(r27)
/* 80B5B508  7F A3 EB 78 */	mr r3, r29
/* 80B5B50C  4B 4D 16 90 */	b getTimerNowTimeMs__14dComIfG_play_cFv
/* 80B5B510  7C 03 D0 00 */	cmpw r3, r26
/* 80B5B514  41 80 00 10 */	blt lbl_80B5B524
/* 80B5B518  80 1B 09 4C */	lwz r0, 0x94c(r27)
/* 80B5B51C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B520  40 82 00 10 */	bne lbl_80B5B530
lbl_80B5B524:
/* 80B5B524  7F A3 EB 78 */	mr r3, r29
/* 80B5B528  4B 4D 16 74 */	b getTimerNowTimeMs__14dComIfG_play_cFv
/* 80B5B52C  90 7B 09 4C */	stw r3, 0x94c(r27)
lbl_80B5B530:
/* 80B5B530  38 00 00 08 */	li r0, 8
/* 80B5B534  B0 1C 0E 30 */	sth r0, 0xe30(r28)
lbl_80B5B538:
/* 80B5B538  80 1C 15 60 */	lwz r0, 0x1560(r28)
/* 80B5B53C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B540  41 80 00 18 */	blt lbl_80B5B558
/* 80B5B544  80 1C 15 58 */	lwz r0, 0x1558(r28)
/* 80B5B548  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B54C  40 80 00 0C */	bge lbl_80B5B558
/* 80B5B550  38 00 00 01 */	li r0, 1
/* 80B5B554  98 1C 15 7C */	stb r0, 0x157c(r28)
lbl_80B5B558:
/* 80B5B558  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B5B55C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B560  41 82 00 24 */	beq lbl_80B5B584
/* 80B5B564  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5B568  4B 5E A1 94 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B5B56C  38 00 00 00 */	li r0, 0
/* 80B5B570  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B5B574  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5B578  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B5B57C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5B580  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B5B584:
/* 80B5B584  38 00 00 00 */	li r0, 0
/* 80B5B588  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5B58C  88 1C 15 85 */	lbz r0, 0x1585(r28)
/* 80B5B590  28 00 00 00 */	cmplwi r0, 0
/* 80B5B594  41 82 00 90 */	beq lbl_80B5B624
/* 80B5B598  88 1C 15 76 */	lbz r0, 0x1576(r28)
/* 80B5B59C  28 00 00 00 */	cmplwi r0, 0
/* 80B5B5A0  41 82 00 4C */	beq lbl_80B5B5EC
/* 80B5B5A4  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80B5B5A8  C0 3E 01 04 */	lfs f1, 0x104(r30)
/* 80B5B5AC  C0 5E 02 9C */	lfs f2, 0x29c(r30)
/* 80B5B5B0  C0 7E 01 40 */	lfs f3, 0x140(r30)
/* 80B5B5B4  4B 71 44 88 */	b cLib_addCalc2__FPffff
/* 80B5B5B8  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80B5B5BC  C0 1E 02 9C */	lfs f0, 0x29c(r30)
/* 80B5B5C0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B5B5C4  4C 40 13 82 */	cror 2, 0, 2
/* 80B5B5C8  40 82 07 FC */	bne lbl_80B5BDC4
/* 80B5B5CC  38 00 00 00 */	li r0, 0
/* 80B5B5D0  98 1C 15 76 */	stb r0, 0x1576(r28)
/* 80B5B5D4  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5B5D8  D0 1C 05 2C */	stfs f0, 0x52c(r28)
/* 80B5B5DC  D0 1C 04 F8 */	stfs f0, 0x4f8(r28)
/* 80B5B5E0  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B5B5E4  D0 1C 05 00 */	stfs f0, 0x500(r28)
/* 80B5B5E8  48 00 07 DC */	b lbl_80B5BDC4
lbl_80B5B5EC:
/* 80B5B5EC  80 1C 0C E0 */	lwz r0, 0xce0(r28)
/* 80B5B5F0  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B5F4  41 82 00 24 */	beq lbl_80B5B618
/* 80B5B5F8  38 7C 0B A8 */	addi r3, r28, 0xba8
/* 80B5B5FC  4B 5E A1 00 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B5B600  38 00 00 00 */	li r0, 0
/* 80B5B604  90 1C 0B C8 */	stw r0, 0xbc8(r28)
/* 80B5B608  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5B60C  D0 1C 0C F4 */	stfs f0, 0xcf4(r28)
/* 80B5B610  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5B614  90 1C 0C E0 */	stw r0, 0xce0(r28)
lbl_80B5B618:
/* 80B5B618  38 00 00 00 */	li r0, 0
/* 80B5B61C  98 1C 0C FF */	stb r0, 0xcff(r28)
/* 80B5B620  48 00 07 A4 */	b lbl_80B5BDC4
lbl_80B5B624:
/* 80B5B624  88 1C 15 7E */	lbz r0, 0x157e(r28)
/* 80B5B628  28 00 00 00 */	cmplwi r0, 0
/* 80B5B62C  41 82 00 70 */	beq lbl_80B5B69C
/* 80B5B630  80 1C 06 B8 */	lwz r0, 0x6b8(r28)
/* 80B5B634  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B5B638  41 82 00 64 */	beq lbl_80B5B69C
/* 80B5B63C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5B640  2C 00 00 22 */	cmpwi r0, 0x22
/* 80B5B644  41 82 00 24 */	beq lbl_80B5B668
/* 80B5B648  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5B64C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5B650  4B 5E A2 48 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5B654  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5B658  38 00 00 22 */	li r0, 0x22
/* 80B5B65C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5B660  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5B664  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B5B668:
/* 80B5B668  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060088@ha */
/* 80B5B66C  38 03 00 88 */	addi r0, r3, 0x0088 /* 0x00060088@l */
/* 80B5B670  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B5B674  38 7C 05 80 */	addi r3, r28, 0x580
/* 80B5B678  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B5B67C  38 A0 00 00 */	li r5, 0
/* 80B5B680  38 C0 FF FF */	li r6, -1
/* 80B5B684  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80B5B688  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B5B68C  7D 89 03 A6 */	mtctr r12
/* 80B5B690  4E 80 04 21 */	bctrl 
/* 80B5B694  38 00 00 00 */	li r0, 0
/* 80B5B698  98 1C 15 7E */	stb r0, 0x157e(r28)
lbl_80B5B69C:
/* 80B5B69C  88 1C 15 7E */	lbz r0, 0x157e(r28)
/* 80B5B6A0  28 00 00 00 */	cmplwi r0, 0
/* 80B5B6A4  40 82 03 A0 */	bne lbl_80B5BA44
lbl_80B5B6A8:
/* 80B5B6A8  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B5B6AC  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B5B6B0  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B5B6B4  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B5B6B8  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B5B6BC  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B5B6C0  38 7C 14 B8 */	addi r3, r28, 0x14b8
/* 80B5B6C4  38 81 00 58 */	addi r4, r1, 0x58
/* 80B5B6C8  80 BC 14 B8 */	lwz r5, 0x14b8(r28)
/* 80B5B6CC  A0 A5 00 00 */	lhz r5, 0(r5)
/* 80B5B6D0  4B 5E AA B8 */	b chkPassed1__13daNpcT_Path_cF4cXyzi
/* 80B5B6D4  2C 03 00 00 */	cmpwi r3, 0
/* 80B5B6D8  41 82 03 28 */	beq lbl_80B5BA00
/* 80B5B6DC  80 7C 14 B8 */	lwz r3, 0x14b8(r28)
/* 80B5B6E0  80 83 00 08 */	lwz r4, 8(r3)
/* 80B5B6E4  A0 1C 14 D4 */	lhz r0, 0x14d4(r28)
/* 80B5B6E8  54 03 20 36 */	slwi r3, r0, 4
/* 80B5B6EC  38 03 00 03 */	addi r0, r3, 3
/* 80B5B6F0  7C 04 00 AE */	lbzx r0, r4, r0
/* 80B5B6F4  28 00 00 00 */	cmplwi r0, 0
/* 80B5B6F8  40 82 00 60 */	bne lbl_80B5B758
/* 80B5B6FC  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060087@ha */
/* 80B5B700  38 03 00 87 */	addi r0, r3, 0x0087 /* 0x00060087@l */
/* 80B5B704  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B5B708  38 7C 05 80 */	addi r3, r28, 0x580
/* 80B5B70C  38 81 00 18 */	addi r4, r1, 0x18
/* 80B5B710  38 A0 00 00 */	li r5, 0
/* 80B5B714  38 C0 FF FF */	li r6, -1
/* 80B5B718  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80B5B71C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B5B720  7D 89 03 A6 */	mtctr r12
/* 80B5B724  4E 80 04 21 */	bctrl 
/* 80B5B728  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500BC@ha */
/* 80B5B72C  38 03 00 BC */	addi r0, r3, 0x00BC /* 0x000500BC@l */
/* 80B5B730  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B5B734  38 7C 05 80 */	addi r3, r28, 0x580
/* 80B5B738  38 81 00 14 */	addi r4, r1, 0x14
/* 80B5B73C  38 A0 FF FF */	li r5, -1
/* 80B5B740  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80B5B744  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B5B748  7D 89 03 A6 */	mtctr r12
/* 80B5B74C  4E 80 04 21 */	bctrl 
/* 80B5B750  38 00 00 01 */	li r0, 1
/* 80B5B754  98 1C 15 7E */	stb r0, 0x157e(r28)
lbl_80B5B758:
/* 80B5B758  38 7C 14 B8 */	addi r3, r28, 0x14b8
/* 80B5B75C  80 9C 14 B8 */	lwz r4, 0x14b8(r28)
/* 80B5B760  A0 84 00 00 */	lhz r4, 0(r4)
/* 80B5B764  4B 5E A6 6C */	b setNextIdx__13daNpcT_Path_cFi
/* 80B5B768  2C 03 00 00 */	cmpwi r3, 0
/* 80B5B76C  41 82 00 3C */	beq lbl_80B5B7A8
/* 80B5B770  38 00 00 01 */	li r0, 1
/* 80B5B774  98 1C 15 85 */	stb r0, 0x1585(r28)
/* 80B5B778  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5B77C  2C 00 00 2E */	cmpwi r0, 0x2e
/* 80B5B780  41 82 02 C4 */	beq lbl_80B5BA44
/* 80B5B784  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5B788  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5B78C  4B 5E A1 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5B790  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5B794  38 00 00 2E */	li r0, 0x2e
/* 80B5B798  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5B79C  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5B7A0  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B5B7A4  48 00 02 A0 */	b lbl_80B5BA44
lbl_80B5B7A8:
/* 80B5B7A8  88 1C 15 7E */	lbz r0, 0x157e(r28)
/* 80B5B7AC  28 00 00 00 */	cmplwi r0, 0
/* 80B5B7B0  41 82 FE F8 */	beq lbl_80B5B6A8
/* 80B5B7B4  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80B5B7B8  2C 00 00 00 */	cmpwi r0, 0
/* 80B5B7BC  40 82 00 30 */	bne lbl_80B5B7EC
/* 80B5B7C0  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5B7C4  2C 00 00 21 */	cmpwi r0, 0x21
/* 80B5B7C8  41 82 00 24 */	beq lbl_80B5B7EC
/* 80B5B7CC  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5B7D0  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5B7D4  4B 5E A0 C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5B7D8  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5B7DC  38 00 00 21 */	li r0, 0x21
/* 80B5B7E0  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5B7E4  C0 1E 01 3C */	lfs f0, 0x13c(r30)
/* 80B5B7E8  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B5B7EC:
/* 80B5B7EC  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B5B7F0  D0 1C 15 14 */	stfs f0, 0x1514(r28)
/* 80B5B7F4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B5B7F8  D0 1C 15 18 */	stfs f0, 0x1518(r28)
/* 80B5B7FC  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B5B800  D0 1C 15 1C */	stfs f0, 0x151c(r28)
/* 80B5B804  A0 1C 14 D4 */	lhz r0, 0x14d4(r28)
/* 80B5B808  80 7C 14 B8 */	lwz r3, 0x14b8(r28)
/* 80B5B80C  80 63 00 08 */	lwz r3, 8(r3)
/* 80B5B810  54 00 20 36 */	slwi r0, r0, 4
/* 80B5B814  7C 83 02 14 */	add r4, r3, r0
/* 80B5B818  80 64 00 04 */	lwz r3, 4(r4)
/* 80B5B81C  80 04 00 08 */	lwz r0, 8(r4)
/* 80B5B820  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80B5B824  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B5B828  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B5B82C  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B5B830  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B5B834  D0 1C 15 20 */	stfs f0, 0x1520(r28)
/* 80B5B838  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B5B83C  D0 1C 15 24 */	stfs f0, 0x1524(r28)
/* 80B5B840  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B5B844  D0 1C 15 28 */	stfs f0, 0x1528(r28)
/* 80B5B848  38 7C 15 14 */	addi r3, r28, 0x1514
/* 80B5B84C  38 9C 15 20 */	addi r4, r28, 0x1520
/* 80B5B850  4B 71 53 B4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B5B854  B0 7C 04 DE */	sth r3, 0x4de(r28)
/* 80B5B858  38 61 00 40 */	addi r3, r1, 0x40
/* 80B5B85C  38 9C 15 20 */	addi r4, r28, 0x1520
/* 80B5B860  38 BC 15 14 */	addi r5, r28, 0x1514
/* 80B5B864  4B 70 B2 D0 */	b __mi__4cXyzCFRC3Vec
/* 80B5B868  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80B5B86C  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B5B870  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5B874  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B5B878  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B5B87C  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B5B880  38 61 00 28 */	addi r3, r1, 0x28
/* 80B5B884  4B 7E B8 B4 */	b PSVECSquareMag
/* 80B5B888  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5B88C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B5B890  40 81 00 58 */	ble lbl_80B5B8E8
/* 80B5B894  FC 00 08 34 */	frsqrte f0, f1
/* 80B5B898  C8 9E 01 60 */	lfd f4, 0x160(r30)
/* 80B5B89C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B5B8A0  C8 7E 01 68 */	lfd f3, 0x168(r30)
/* 80B5B8A4  FC 00 00 32 */	fmul f0, f0, f0
/* 80B5B8A8  FC 01 00 32 */	fmul f0, f1, f0
/* 80B5B8AC  FC 03 00 28 */	fsub f0, f3, f0
/* 80B5B8B0  FC 02 00 32 */	fmul f0, f2, f0
/* 80B5B8B4  FC 44 00 32 */	fmul f2, f4, f0
/* 80B5B8B8  FC 00 00 32 */	fmul f0, f0, f0
/* 80B5B8BC  FC 01 00 32 */	fmul f0, f1, f0
/* 80B5B8C0  FC 03 00 28 */	fsub f0, f3, f0
/* 80B5B8C4  FC 02 00 32 */	fmul f0, f2, f0
/* 80B5B8C8  FC 44 00 32 */	fmul f2, f4, f0
/* 80B5B8CC  FC 00 00 32 */	fmul f0, f0, f0
/* 80B5B8D0  FC 01 00 32 */	fmul f0, f1, f0
/* 80B5B8D4  FC 03 00 28 */	fsub f0, f3, f0
/* 80B5B8D8  FC 02 00 32 */	fmul f0, f2, f0
/* 80B5B8DC  FC 21 00 32 */	fmul f1, f1, f0
/* 80B5B8E0  FC 20 08 18 */	frsp f1, f1
/* 80B5B8E4  48 00 00 88 */	b lbl_80B5B96C
lbl_80B5B8E8:
/* 80B5B8E8  C8 1E 01 70 */	lfd f0, 0x170(r30)
/* 80B5B8EC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B5B8F0  40 80 00 10 */	bge lbl_80B5B900
/* 80B5B8F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B5B8F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B5B8FC  48 00 00 70 */	b lbl_80B5B96C
lbl_80B5B900:
/* 80B5B900  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B5B904  80 81 00 08 */	lwz r4, 8(r1)
/* 80B5B908  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B5B90C  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B5B910  7C 03 00 00 */	cmpw r3, r0
/* 80B5B914  41 82 00 14 */	beq lbl_80B5B928
/* 80B5B918  40 80 00 40 */	bge lbl_80B5B958
/* 80B5B91C  2C 03 00 00 */	cmpwi r3, 0
/* 80B5B920  41 82 00 20 */	beq lbl_80B5B940
/* 80B5B924  48 00 00 34 */	b lbl_80B5B958
lbl_80B5B928:
/* 80B5B928  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B5B92C  41 82 00 0C */	beq lbl_80B5B938
/* 80B5B930  38 00 00 01 */	li r0, 1
/* 80B5B934  48 00 00 28 */	b lbl_80B5B95C
lbl_80B5B938:
/* 80B5B938  38 00 00 02 */	li r0, 2
/* 80B5B93C  48 00 00 20 */	b lbl_80B5B95C
lbl_80B5B940:
/* 80B5B940  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B5B944  41 82 00 0C */	beq lbl_80B5B950
/* 80B5B948  38 00 00 05 */	li r0, 5
/* 80B5B94C  48 00 00 10 */	b lbl_80B5B95C
lbl_80B5B950:
/* 80B5B950  38 00 00 03 */	li r0, 3
/* 80B5B954  48 00 00 08 */	b lbl_80B5B95C
lbl_80B5B958:
/* 80B5B958  38 00 00 04 */	li r0, 4
lbl_80B5B95C:
/* 80B5B95C  2C 00 00 01 */	cmpwi r0, 1
/* 80B5B960  40 82 00 0C */	bne lbl_80B5B96C
/* 80B5B964  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B5B968  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B5B96C:
/* 80B5B96C  C0 1C 05 2C */	lfs f0, 0x52c(r28)
/* 80B5B970  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B5B974  FC 00 00 1E */	fctiwz f0, f0
/* 80B5B978  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80B5B97C  80 61 00 74 */	lwz r3, 0x74(r1)
/* 80B5B980  38 03 00 01 */	addi r0, r3, 1
/* 80B5B984  C0 1C 05 30 */	lfs f0, 0x530(r28)
/* 80B5B988  FC 00 02 10 */	fabs f0, f0
/* 80B5B98C  FC A0 00 18 */	frsp f5, f0
/* 80B5B990  C0 3C 15 24 */	lfs f1, 0x1524(r28)
/* 80B5B994  C0 1C 15 18 */	lfs f0, 0x1518(r28)
/* 80B5B998  EC 81 00 28 */	fsubs f4, f1, f0
/* 80B5B99C  C0 7E 02 84 */	lfs f3, 0x284(r30)
/* 80B5B9A0  C8 5E 01 98 */	lfd f2, 0x198(r30)
/* 80B5B9A4  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80B5B9A8  90 61 00 7C */	stw r3, 0x7c(r1)
/* 80B5B9AC  3C 00 43 30 */	lis r0, 0x4330
/* 80B5B9B0  90 01 00 78 */	stw r0, 0x78(r1)
/* 80B5B9B4  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80B5B9B8  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B5B9BC  90 61 00 84 */	stw r3, 0x84(r1)
/* 80B5B9C0  90 01 00 80 */	stw r0, 0x80(r1)
/* 80B5B9C4  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80B5B9C8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B5B9CC  EC 00 01 72 */	fmuls f0, f0, f5
/* 80B5B9D0  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B5B9D4  EC 03 00 32 */	fmuls f0, f3, f0
/* 80B5B9D8  EC 04 00 2A */	fadds f0, f4, f0
/* 80B5B9DC  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B5B9E0  C0 3C 04 FC */	lfs f1, 0x4fc(r28)
/* 80B5B9E4  90 61 00 8C */	stw r3, 0x8c(r1)
/* 80B5B9E8  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B5B9EC  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80B5B9F0  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B5B9F4  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B5B9F8  D0 1C 04 FC */	stfs f0, 0x4fc(r28)
/* 80B5B9FC  48 00 00 48 */	b lbl_80B5BA44
lbl_80B5BA00:
/* 80B5BA00  A0 1C 14 D4 */	lhz r0, 0x14d4(r28)
/* 80B5BA04  80 7C 14 B8 */	lwz r3, 0x14b8(r28)
/* 80B5BA08  80 63 00 08 */	lwz r3, 8(r3)
/* 80B5BA0C  54 00 20 36 */	slwi r0, r0, 4
/* 80B5BA10  7C 83 02 14 */	add r4, r3, r0
/* 80B5BA14  80 64 00 04 */	lwz r3, 4(r4)
/* 80B5BA18  80 04 00 08 */	lwz r0, 8(r4)
/* 80B5BA1C  90 61 00 34 */	stw r3, 0x34(r1)
/* 80B5BA20  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B5BA24  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B5BA28  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B5BA2C  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B5BA30  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B5BA34  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B5BA38  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B5BA3C  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B5BA40  D0 01 00 6C */	stfs f0, 0x6c(r1)
lbl_80B5BA44:
/* 80B5BA44  88 1C 15 85 */	lbz r0, 0x1585(r28)
/* 80B5BA48  28 00 00 00 */	cmplwi r0, 0
/* 80B5BA4C  40 82 03 78 */	bne lbl_80B5BDC4
/* 80B5BA50  88 1C 15 7E */	lbz r0, 0x157e(r28)
/* 80B5BA54  28 00 00 00 */	cmplwi r0, 0
/* 80B5BA58  40 82 03 6C */	bne lbl_80B5BDC4
/* 80B5BA5C  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 80B5BA60  38 81 00 64 */	addi r4, r1, 0x64
/* 80B5BA64  4B 71 51 A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B5BA68  7C 7D 1B 78 */	mr r29, r3
/* 80B5BA6C  B3 BC 04 DE */	sth r29, 0x4de(r28)
/* 80B5BA70  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 80B5BA74  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80B5BA78  38 A0 00 08 */	li r5, 8
/* 80B5BA7C  38 C0 01 00 */	li r6, 0x100
/* 80B5BA80  4B 71 4B 88 */	b cLib_addCalcAngleS2__FPssss
/* 80B5BA84  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 80B5BA88  B0 1C 0D 7A */	sth r0, 0xd7a(r28)
/* 80B5BA8C  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80B5BA90  2C 00 00 00 */	cmpwi r0, 0
/* 80B5BA94  40 82 01 30 */	bne lbl_80B5BBC4
/* 80B5BA98  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5BA9C  2C 00 00 22 */	cmpwi r0, 0x22
/* 80B5BAA0  40 82 00 14 */	bne lbl_80B5BAB4
/* 80B5BAA4  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5BAA8  4B 5E 9F 7C */	b checkEndSequence__22daNpcT_MotionSeqMngr_cFv
/* 80B5BAAC  2C 03 00 00 */	cmpwi r3, 0
/* 80B5BAB0  41 82 01 14 */	beq lbl_80B5BBC4
lbl_80B5BAB4:
/* 80B5BAB4  A8 1C 0D 7A */	lha r0, 0xd7a(r28)
/* 80B5BAB8  7C 00 E8 50 */	subf r0, r0, r29
/* 80B5BABC  C0 7E 01 04 */	lfs f3, 0x104(r30)
/* 80B5BAC0  C0 5E 02 A0 */	lfs f2, 0x2a0(r30)
/* 80B5BAC4  7C 00 07 34 */	extsh r0, r0
/* 80B5BAC8  C8 3E 01 98 */	lfd f1, 0x198(r30)
/* 80B5BACC  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B5BAD0  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80B5BAD4  3C 00 43 30 */	lis r0, 0x4330
/* 80B5BAD8  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B5BADC  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80B5BAE0  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B5BAE4  EC 22 00 32 */	fmuls f1, f2, f0
/* 80B5BAE8  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80B5BAEC  40 80 00 70 */	bge lbl_80B5BB5C
/* 80B5BAF0  C0 1E 01 4C */	lfs f0, 0x14c(r30)
/* 80B5BAF4  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B5BAF8  40 80 00 34 */	bge lbl_80B5BB2C
/* 80B5BAFC  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5BB00  2C 00 00 2C */	cmpwi r0, 0x2c
/* 80B5BB04  41 82 00 C0 */	beq lbl_80B5BBC4
/* 80B5BB08  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5BB0C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5BB10  4B 5E 9D 88 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5BB14  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5BB18  38 00 00 2C */	li r0, 0x2c
/* 80B5BB1C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5BB20  C0 1E 02 A4 */	lfs f0, 0x2a4(r30)
/* 80B5BB24  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B5BB28  48 00 00 9C */	b lbl_80B5BBC4
lbl_80B5BB2C:
/* 80B5BB2C  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5BB30  2C 00 00 20 */	cmpwi r0, 0x20
/* 80B5BB34  41 82 00 90 */	beq lbl_80B5BBC4
/* 80B5BB38  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5BB3C  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5BB40  4B 5E 9D 58 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5BB44  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5BB48  38 00 00 20 */	li r0, 0x20
/* 80B5BB4C  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5BB50  C0 1E 02 A4 */	lfs f0, 0x2a4(r30)
/* 80B5BB54  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B5BB58  48 00 00 6C */	b lbl_80B5BBC4
lbl_80B5BB5C:
/* 80B5BB5C  C0 1E 02 A8 */	lfs f0, 0x2a8(r30)
/* 80B5BB60  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B5BB64  40 80 00 34 */	bge lbl_80B5BB98
/* 80B5BB68  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5BB6C  2C 00 00 2D */	cmpwi r0, 0x2d
/* 80B5BB70  41 82 00 54 */	beq lbl_80B5BBC4
/* 80B5BB74  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5BB78  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5BB7C  4B 5E 9D 1C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5BB80  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5BB84  38 00 00 2D */	li r0, 0x2d
/* 80B5BB88  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5BB8C  C0 1E 02 A4 */	lfs f0, 0x2a4(r30)
/* 80B5BB90  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
/* 80B5BB94  48 00 00 30 */	b lbl_80B5BBC4
lbl_80B5BB98:
/* 80B5BB98  80 1C 0B 7C */	lwz r0, 0xb7c(r28)
/* 80B5BB9C  2C 00 00 20 */	cmpwi r0, 0x20
/* 80B5BBA0  41 82 00 24 */	beq lbl_80B5BBC4
/* 80B5BBA4  83 7C 0B 80 */	lwz r27, 0xb80(r28)
/* 80B5BBA8  38 7C 0B 74 */	addi r3, r28, 0xb74
/* 80B5BBAC  4B 5E 9C EC */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B5BBB0  93 7C 0B 80 */	stw r27, 0xb80(r28)
/* 80B5BBB4  38 00 00 20 */	li r0, 0x20
/* 80B5BBB8  90 1C 0B 7C */	stw r0, 0xb7c(r28)
/* 80B5BBBC  C0 1E 02 A4 */	lfs f0, 0x2a4(r30)
/* 80B5BBC0  D0 1C 0B 8C */	stfs f0, 0xb8c(r28)
lbl_80B5BBC4:
/* 80B5BBC4  38 7C 09 44 */	addi r3, r28, 0x944
/* 80B5BBC8  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 80B5BBCC  38 04 40 00 */	addi r0, r4, 0x4000
/* 80B5BBD0  7C 04 07 34 */	extsh r4, r0
/* 80B5BBD4  4B 4C 1F 10 */	b fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 80B5BBD8  7C 03 00 D0 */	neg r0, r3
/* 80B5BBDC  7C 1A 07 34 */	extsh r26, r0
/* 80B5BBE0  38 7C 0D 78 */	addi r3, r28, 0xd78
/* 80B5BBE4  A8 9C 0D CA */	lha r4, 0xdca(r28)
/* 80B5BBE8  38 A0 00 06 */	li r5, 6
/* 80B5BBEC  38 C0 02 00 */	li r6, 0x200
/* 80B5BBF0  4B 71 4A 18 */	b cLib_addCalcAngleS2__FPssss
/* 80B5BBF4  38 7C 0D 7C */	addi r3, r28, 0xd7c
/* 80B5BBF8  7F 44 D3 78 */	mr r4, r26
/* 80B5BBFC  38 A0 00 06 */	li r5, 6
/* 80B5BC00  38 C0 02 00 */	li r6, 0x200
/* 80B5BC04  4B 71 4A 04 */	b cLib_addCalcAngleS2__FPssss
/* 80B5BC08  80 7C 15 58 */	lwz r3, 0x1558(r28)
/* 80B5BC0C  80 1C 15 60 */	lwz r0, 0x1560(r28)
/* 80B5BC10  7F A3 00 50 */	subf r29, r3, r0
/* 80B5BC14  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B5BC18  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B5BC1C  3B 43 00 04 */	addi r26, r3, 4
/* 80B5BC20  A8 1C 0D CA */	lha r0, 0xdca(r28)
/* 80B5BC24  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B5BC28  7C 3A 04 2E */	lfsx f1, r26, r0
/* 80B5BC2C  38 7E 00 00 */	addi r3, r30, 0
/* 80B5BC30  C0 03 00 B4 */	lfs f0, 0xb4(r3)
/* 80B5BC34  EF E0 00 72 */	fmuls f31, f0, f1
/* 80B5BC38  A8 1C 0D 1C */	lha r0, 0xd1c(r28)
/* 80B5BC3C  2C 00 00 00 */	cmpwi r0, 0
/* 80B5BC40  41 82 00 10 */	beq lbl_80B5BC50
/* 80B5BC44  C0 1E 01 04 */	lfs f0, 0x104(r30)
/* 80B5BC48  EF FF 00 32 */	fmuls f31, f31, f0
/* 80B5BC4C  48 00 01 08 */	b lbl_80B5BD54
lbl_80B5BC50:
/* 80B5BC50  7F 83 E3 78 */	mr r3, r28
/* 80B5BC54  4B FF AE 61 */	bl chkTouchPlayer__11daNpc_ykM_cFv
/* 80B5BC58  2C 03 00 00 */	cmpwi r3, 0
/* 80B5BC5C  41 82 00 84 */	beq lbl_80B5BCE0
/* 80B5BC60  80 1C 15 40 */	lwz r0, 0x1540(r28)
/* 80B5BC64  2C 00 00 00 */	cmpwi r0, 0
/* 80B5BC68  40 82 00 78 */	bne lbl_80B5BCE0
/* 80B5BC6C  7F 83 E3 78 */	mr r3, r28
/* 80B5BC70  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B5BC74  4B 4B EA 9C */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 80B5BC78  7C 64 1B 78 */	mr r4, r3
/* 80B5BC7C  80 7F 5D AC */	lwz r3, 0x5dac(r31)
/* 80B5BC80  C0 43 05 2C */	lfs f2, 0x52c(r3)
/* 80B5BC84  C0 3E 02 1C */	lfs f1, 0x21c(r30)
/* 80B5BC88  38 BE 00 00 */	addi r5, r30, 0
/* 80B5BC8C  C0 05 00 A8 */	lfs f0, 0xa8(r5)
/* 80B5BC90  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B5BC94  FC 00 00 1E */	fctiwz f0, f0
/* 80B5BC98  D8 01 00 88 */	stfd f0, 0x88(r1)
/* 80B5BC9C  80 01 00 8C */	lwz r0, 0x8c(r1)
/* 80B5BCA0  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B5BCA4  7C 1A 04 2E */	lfsx f0, r26, r0
/* 80B5BCA8  EC 22 00 32 */	fmuls f1, f2, f0
/* 80B5BCAC  3C A0 80 44 */	lis r5, sincosTable___5JMath@ha
/* 80B5BCB0  38 A5 9A 20 */	addi r5, r5, sincosTable___5JMath@l
/* 80B5BCB4  7C 05 04 2E */	lfsx f0, r5, r0
/* 80B5BCB8  EC 42 00 32 */	fmuls f2, f2, f0
/* 80B5BCBC  38 A0 00 00 */	li r5, 0
/* 80B5BCC0  38 C0 00 00 */	li r6, 0
/* 80B5BCC4  38 E0 00 00 */	li r7, 0
/* 80B5BCC8  81 83 06 28 */	lwz r12, 0x628(r3)
/* 80B5BCCC  81 8C 01 60 */	lwz r12, 0x160(r12)
/* 80B5BCD0  7D 89 03 A6 */	mtctr r12
/* 80B5BCD4  4E 80 04 21 */	bctrl 
/* 80B5BCD8  38 00 00 08 */	li r0, 8
/* 80B5BCDC  90 1C 15 40 */	stw r0, 0x1540(r28)
lbl_80B5BCE0:
/* 80B5BCE0  38 7E 00 00 */	addi r3, r30, 0
/* 80B5BCE4  A8 03 00 C0 */	lha r0, 0xc0(r3)
/* 80B5BCE8  7F BD 02 15 */	add. r29, r29, r0
/* 80B5BCEC  A8 03 00 C2 */	lha r0, 0xc2(r3)
/* 80B5BCF0  40 80 00 0C */	bge lbl_80B5BCFC
/* 80B5BCF4  38 60 00 00 */	li r3, 0
/* 80B5BCF8  48 00 00 14 */	b lbl_80B5BD0C
lbl_80B5BCFC:
/* 80B5BCFC  7C 1D 00 00 */	cmpw r29, r0
/* 80B5BD00  7F A3 EB 78 */	mr r3, r29
/* 80B5BD04  40 81 00 08 */	ble lbl_80B5BD0C
/* 80B5BD08  7C 03 03 78 */	mr r3, r0
lbl_80B5BD0C:
/* 80B5BD0C  2C 03 00 00 */	cmpwi r3, 0
/* 80B5BD10  40 81 00 44 */	ble lbl_80B5BD54
/* 80B5BD14  4B 80 93 BC */	b abs
/* 80B5BD18  C8 3E 01 98 */	lfd f1, 0x198(r30)
/* 80B5BD1C  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80B5BD20  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80B5BD24  3C 00 43 30 */	lis r0, 0x4330
/* 80B5BD28  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B5BD2C  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80B5BD30  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B5BD34  C0 1E 01 84 */	lfs f0, 0x184(r30)
/* 80B5BD38  EC 20 00 72 */	fmuls f1, f0, f1
/* 80B5BD3C  38 7E 00 00 */	addi r3, r30, 0
/* 80B5BD40  C0 03 00 C4 */	lfs f0, 0xc4(r3)
/* 80B5BD44  EC 20 00 72 */	fmuls f1, f0, f1
/* 80B5BD48  C0 1E 01 1C */	lfs f0, 0x11c(r30)
/* 80B5BD4C  EC 00 08 2A */	fadds f0, f0, f1
/* 80B5BD50  EF FF 00 32 */	fmuls f31, f31, f0
lbl_80B5BD54:
/* 80B5BD54  38 7C 05 2C */	addi r3, r28, 0x52c
/* 80B5BD58  FC 20 F8 90 */	fmr f1, f31
/* 80B5BD5C  38 9E 00 00 */	addi r4, r30, 0
/* 80B5BD60  C0 44 00 B0 */	lfs f2, 0xb0(r4)
/* 80B5BD64  4B 71 49 DC */	b cLib_chaseF__FPfff
/* 80B5BD68  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060086@ha */
/* 80B5BD6C  38 03 00 86 */	addi r0, r3, 0x0086 /* 0x00060086@l */
/* 80B5BD70  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B5BD74  C0 3C 05 2C */	lfs f1, 0x52c(r28)
/* 80B5BD78  4B 80 63 34 */	b __cvt_fp2unsigned
/* 80B5BD7C  7C 65 1B 78 */	mr r5, r3
/* 80B5BD80  38 7C 05 80 */	addi r3, r28, 0x580
/* 80B5BD84  38 81 00 10 */	addi r4, r1, 0x10
/* 80B5BD88  38 C0 FF FF */	li r6, -1
/* 80B5BD8C  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80B5BD90  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80B5BD94  7D 89 03 A6 */	mtctr r12
/* 80B5BD98  4E 80 04 21 */	bctrl 
/* 80B5BD9C  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500BB@ha */
/* 80B5BDA0  38 03 00 BB */	addi r0, r3, 0x00BB /* 0x000500BB@l */
/* 80B5BDA4  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B5BDA8  38 7C 05 80 */	addi r3, r28, 0x580
/* 80B5BDAC  38 81 00 0C */	addi r4, r1, 0xc
/* 80B5BDB0  38 A0 FF FF */	li r5, -1
/* 80B5BDB4  81 9C 05 80 */	lwz r12, 0x580(r28)
/* 80B5BDB8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B5BDBC  7D 89 03 A6 */	mtctr r12
/* 80B5BDC0  4E 80 04 21 */	bctrl 
lbl_80B5BDC4:
/* 80B5BDC4  38 00 00 00 */	li r0, 0
/* 80B5BDC8  90 1C 05 5C */	stw r0, 0x55c(r28)
lbl_80B5BDCC:
/* 80B5BDCC  80 1C 00 B0 */	lwz r0, 0xb0(r28)
/* 80B5BDD0  54 03 86 BE */	rlwinm r3, r0, 0x10, 0x1a, 0x1f
/* 80B5BDD4  38 80 00 0D */	li r4, 0xd
/* 80B5BDD8  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 80B5BDDC  38 C0 FF FF */	li r6, -1
/* 80B5BDE0  4B 54 05 EC */	b setPosition__7dTres_cFiUcPC3Veci
/* 80B5BDE4  38 60 00 01 */	li r3, 1
/* 80B5BDE8  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80B5BDEC  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80B5BDF0  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B5BDF4  4B 80 64 28 */	b _restgpr_26
/* 80B5BDF8  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B5BDFC  7C 08 03 A6 */	mtlr r0
/* 80B5BE00  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80B5BE04  4E 80 00 20 */	blr 
