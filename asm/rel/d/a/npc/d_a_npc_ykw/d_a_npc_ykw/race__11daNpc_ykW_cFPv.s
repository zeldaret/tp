lbl_80B6591C:
/* 80B6591C  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80B65920  7C 08 02 A6 */	mflr r0
/* 80B65924  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B65928  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80B6592C  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80B65930  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B65934  4B 7F C8 A0 */	b _savegpr_27
/* 80B65938  7C 7D 1B 78 */	mr r29, r3
/* 80B6593C  3C 60 80 B6 */	lis r3, m__17daNpc_ykW_Param_c@ha
/* 80B65940  3B C3 7C 38 */	addi r30, r3, m__17daNpc_ykW_Param_c@l
/* 80B65944  80 7E 02 0C */	lwz r3, 0x20c(r30)
/* 80B65948  80 1E 02 10 */	lwz r0, 0x210(r30)
/* 80B6594C  90 61 00 20 */	stw r3, 0x20(r1)
/* 80B65950  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B65954  93 A1 00 20 */	stw r29, 0x20(r1)
/* 80B65958  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B6595C  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80B65960  80 1F 5D AC */	lwz r0, 0x5dac(r31)
/* 80B65964  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B65968  A0 1D 0E 22 */	lhz r0, 0xe22(r29)
/* 80B6596C  2C 00 00 02 */	cmpwi r0, 2
/* 80B65970  41 82 00 84 */	beq lbl_80B659F4
/* 80B65974  40 80 0A 5C */	bge lbl_80B663D0
/* 80B65978  2C 00 00 00 */	cmpwi r0, 0
/* 80B6597C  40 80 00 0C */	bge lbl_80B65988
/* 80B65980  48 00 0A 50 */	b lbl_80B663D0
/* 80B65984  48 00 0A 4C */	b lbl_80B663D0
lbl_80B65988:
/* 80B65988  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80B6598C  2C 00 00 00 */	cmpwi r0, 0
/* 80B65990  40 82 00 64 */	bne lbl_80B659F4
/* 80B65994  80 1D 0B 58 */	lwz r0, 0xb58(r29)
/* 80B65998  2C 00 00 0D */	cmpwi r0, 0xd
/* 80B6599C  41 82 00 24 */	beq lbl_80B659C0
/* 80B659A0  83 9D 0B 5C */	lwz r28, 0xb5c(r29)
/* 80B659A4  38 7D 0B 50 */	addi r3, r29, 0xb50
/* 80B659A8  4B 5D FE F0 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B659AC  93 9D 0B 5C */	stw r28, 0xb5c(r29)
/* 80B659B0  38 00 00 0D */	li r0, 0xd
/* 80B659B4  90 1D 0B 58 */	stw r0, 0xb58(r29)
/* 80B659B8  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B659BC  D0 1D 0B 68 */	stfs f0, 0xb68(r29)
lbl_80B659C0:
/* 80B659C0  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B659C4  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80B659C8  41 82 00 24 */	beq lbl_80B659EC
/* 80B659CC  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B659D0  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B659D4  4B 5D FE C4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B659D8  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B659DC  38 00 00 1D */	li r0, 0x1d
/* 80B659E0  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B659E4  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B659E8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80B659EC:
/* 80B659EC  38 00 00 02 */	li r0, 2
/* 80B659F0  B0 1D 0E 22 */	sth r0, 0xe22(r29)
lbl_80B659F4:
/* 80B659F4  38 60 00 55 */	li r3, 0x55
/* 80B659F8  4B 5E 71 74 */	b daNpcT_chkTmpBit__FUl
/* 80B659FC  2C 03 00 00 */	cmpwi r3, 0
/* 80B65A00  41 82 02 0C */	beq lbl_80B65C0C
/* 80B65A04  80 7D 0F D4 */	lwz r3, 0xfd4(r29)
/* 80B65A08  38 81 00 20 */	addi r4, r1, 0x20
/* 80B65A0C  38 BD 10 44 */	addi r5, r29, 0x1044
/* 80B65A10  38 C0 00 02 */	li r6, 2
/* 80B65A14  38 FD 10 3C */	addi r7, r29, 0x103c
/* 80B65A18  4B 5E 6C E8 */	b daNpcT_judgeRace__FP5dPathPP10fopAc_ac_cP16daNpcT_pntData_ciPi
/* 80B65A1C  80 9D 0F D4 */	lwz r4, 0xfd4(r29)
/* 80B65A20  80 64 00 08 */	lwz r3, 8(r4)
/* 80B65A24  A0 04 00 00 */	lhz r0, 0(r4)
/* 80B65A28  54 00 20 36 */	slwi r0, r0, 4
/* 80B65A2C  7C 63 02 14 */	add r3, r3, r0
/* 80B65A30  C0 03 FF F4 */	lfs f0, -0xc(r3)
/* 80B65A34  D0 1D 0F F0 */	stfs f0, 0xff0(r29)
/* 80B65A38  80 9D 0F D4 */	lwz r4, 0xfd4(r29)
/* 80B65A3C  80 64 00 08 */	lwz r3, 8(r4)
/* 80B65A40  A0 04 00 00 */	lhz r0, 0(r4)
/* 80B65A44  54 00 20 36 */	slwi r0, r0, 4
/* 80B65A48  7C 63 02 14 */	add r3, r3, r0
/* 80B65A4C  C0 03 FF F8 */	lfs f0, -8(r3)
/* 80B65A50  D0 1D 0F F4 */	stfs f0, 0xff4(r29)
/* 80B65A54  80 9D 0F D4 */	lwz r4, 0xfd4(r29)
/* 80B65A58  80 64 00 08 */	lwz r3, 8(r4)
/* 80B65A5C  A0 04 00 00 */	lhz r0, 0(r4)
/* 80B65A60  54 00 20 36 */	slwi r0, r0, 4
/* 80B65A64  7C 63 02 14 */	add r3, r3, r0
/* 80B65A68  C0 03 FF FC */	lfs f0, -4(r3)
/* 80B65A6C  D0 1D 0F F8 */	stfs f0, 0xff8(r29)
/* 80B65A70  38 7D 0F F0 */	addi r3, r29, 0xff0
/* 80B65A74  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B65A78  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B65A7C  4B 70 B1 88 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B65A80  7C 7C 1B 78 */	mr r28, r3
/* 80B65A84  80 1D 10 4C */	lwz r0, 0x104c(r29)
/* 80B65A88  2C 00 00 00 */	cmpwi r0, 0
/* 80B65A8C  41 80 00 34 */	blt lbl_80B65AC0
/* 80B65A90  38 7D 0F F0 */	addi r3, r29, 0xff0
/* 80B65A94  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B65A98  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B65A9C  4B 7E 19 00 */	b PSVECSquareDistance
/* 80B65AA0  C0 1E 02 14 */	lfs f0, 0x214(r30)
/* 80B65AA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B65AA8  40 80 01 44 */	bge lbl_80B65BEC
/* 80B65AAC  7F 80 07 34 */	extsh r0, r28
/* 80B65AB0  2C 00 C0 00 */	cmpwi r0, -16384
/* 80B65AB4  41 80 00 0C */	blt lbl_80B65AC0
/* 80B65AB8  2C 00 40 00 */	cmpwi r0, 0x4000
/* 80B65ABC  40 81 01 30 */	ble lbl_80B65BEC
lbl_80B65AC0:
/* 80B65AC0  38 00 FF FF */	li r0, -1
/* 80B65AC4  90 1D 10 4C */	stw r0, 0x104c(r29)
/* 80B65AC8  38 7D 09 30 */	addi r3, r29, 0x930
/* 80B65ACC  80 9F 5D AC */	lwz r4, 0x5dac(r31)
/* 80B65AD0  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80B65AD4  4B 70 22 54 */	b SetPos__11cBgS_GndChkFPC4cXyz
/* 80B65AD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B65ADC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B65AE0  3B E3 0F 38 */	addi r31, r3, 0xf38
/* 80B65AE4  7F E3 FB 78 */	mr r3, r31
/* 80B65AE8  38 9D 09 30 */	addi r4, r29, 0x930
/* 80B65AEC  4B 50 E9 B4 */	b GroundCross__4cBgSFP11cBgS_GndChk
/* 80B65AF0  C0 1E 00 E4 */	lfs f0, 0xe4(r30)
/* 80B65AF4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80B65AF8  41 82 00 F4 */	beq lbl_80B65BEC
/* 80B65AFC  80 7D 10 14 */	lwz r3, 0x1014(r29)
/* 80B65B00  3C 03 00 01 */	addis r0, r3, 1
/* 80B65B04  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B65B08  41 82 00 DC */	beq lbl_80B65BE4
/* 80B65B0C  7F E3 FB 78 */	mr r3, r31
/* 80B65B10  4B 4C 70 CC */	b getTimerPtr__14dComIfG_play_cFv
/* 80B65B14  7C 7C 1B 78 */	mr r28, r3
/* 80B65B18  80 7D 10 14 */	lwz r3, 0x1014(r29)
/* 80B65B1C  4B 4B B8 3C */	b fpcEx_SearchByID__FUi
/* 80B65B20  7C 03 E0 40 */	cmplw r3, r28
/* 80B65B24  40 82 00 C0 */	bne lbl_80B65BE4
/* 80B65B28  7F E3 FB 78 */	mr r3, r31
/* 80B65B2C  4B 4C 70 B0 */	b getTimerPtr__14dComIfG_play_cFv
/* 80B65B30  4B 6F 7F E0 */	b isStart__8dTimer_cFv
/* 80B65B34  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B65B38  41 82 00 AC */	beq lbl_80B65BE4
/* 80B65B3C  88 1D 10 6B */	lbz r0, 0x106b(r29)
/* 80B65B40  28 00 00 00 */	cmplwi r0, 0
/* 80B65B44  41 82 00 34 */	beq lbl_80B65B78
/* 80B65B48  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B65B4C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B65B50  80 63 00 00 */	lwz r3, 0(r3)
/* 80B65B54  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B65B58  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000099@ha */
/* 80B65B5C  38 84 00 99 */	addi r4, r4, 0x0099 /* 0x01000099@l */
/* 80B65B60  4B 74 99 3C */	b subBgmStart__8Z2SeqMgrFUl
/* 80B65B64  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80B65B68  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80B65B6C  38 80 05 39 */	li r4, 0x539
/* 80B65B70  4B 6B 6E 00 */	b setMeterString__13dMeter2Info_cFl
/* 80B65B74  48 00 00 30 */	b lbl_80B65BA4
lbl_80B65B78:
/* 80B65B78  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80B65B7C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80B65B80  80 63 00 00 */	lwz r3, 0(r3)
/* 80B65B84  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 80B65B88  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000098@ha */
/* 80B65B8C  38 84 00 98 */	addi r4, r4, 0x0098 /* 0x01000098@l */
/* 80B65B90  4B 74 99 0C */	b subBgmStart__8Z2SeqMgrFUl
/* 80B65B94  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80B65B98  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80B65B9C  38 80 05 38 */	li r4, 0x538
/* 80B65BA0  4B 6B 6D D0 */	b setMeterString__13dMeter2Info_cFl
lbl_80B65BA4:
/* 80B65BA4  38 60 00 05 */	li r3, 5
/* 80B65BA8  38 80 FF FF */	li r4, -1
/* 80B65BAC  4B 4C 9B 04 */	b dComIfG_TimerEnd__Fii
/* 80B65BB0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B65BB4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80B65BB8  83 7C 09 4C */	lwz r27, 0x94c(r28)
/* 80B65BBC  7F E3 FB 78 */	mr r3, r31
/* 80B65BC0  4B 4C 6F DC */	b getTimerNowTimeMs__14dComIfG_play_cFv
/* 80B65BC4  7C 03 D8 00 */	cmpw r3, r27
/* 80B65BC8  41 80 00 10 */	blt lbl_80B65BD8
/* 80B65BCC  80 1C 09 4C */	lwz r0, 0x94c(r28)
/* 80B65BD0  2C 00 00 00 */	cmpwi r0, 0
/* 80B65BD4  40 82 00 10 */	bne lbl_80B65BE4
lbl_80B65BD8:
/* 80B65BD8  7F E3 FB 78 */	mr r3, r31
/* 80B65BDC  4B 4C 6F C0 */	b getTimerNowTimeMs__14dComIfG_play_cFv
/* 80B65BE0  90 7C 09 4C */	stw r3, 0x94c(r28)
lbl_80B65BE4:
/* 80B65BE4  38 00 00 09 */	li r0, 9
/* 80B65BE8  B0 1D 0E 30 */	sth r0, 0xe30(r29)
lbl_80B65BEC:
/* 80B65BEC  80 1D 10 4C */	lwz r0, 0x104c(r29)
/* 80B65BF0  2C 00 00 00 */	cmpwi r0, 0
/* 80B65BF4  41 80 00 18 */	blt lbl_80B65C0C
/* 80B65BF8  80 1D 10 44 */	lwz r0, 0x1044(r29)
/* 80B65BFC  2C 00 00 00 */	cmpwi r0, 0
/* 80B65C00  40 80 00 0C */	bge lbl_80B65C0C
/* 80B65C04  38 00 00 01 */	li r0, 1
/* 80B65C08  98 1D 10 6B */	stb r0, 0x106b(r29)
lbl_80B65C0C:
/* 80B65C0C  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80B65C10  2C 00 00 00 */	cmpwi r0, 0
/* 80B65C14  41 82 00 24 */	beq lbl_80B65C38
/* 80B65C18  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B65C1C  4B 5D FA E0 */	b remove__18daNpcT_ActorMngr_cFv
/* 80B65C20  38 00 00 00 */	li r0, 0
/* 80B65C24  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80B65C28  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B65C2C  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80B65C30  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B65C34  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80B65C38:
/* 80B65C38  38 00 00 00 */	li r0, 0
/* 80B65C3C  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B65C40  88 1D 10 64 */	lbz r0, 0x1064(r29)
/* 80B65C44  28 00 00 00 */	cmplwi r0, 0
/* 80B65C48  41 82 00 90 */	beq lbl_80B65CD8
/* 80B65C4C  88 1D 10 65 */	lbz r0, 0x1065(r29)
/* 80B65C50  28 00 00 00 */	cmplwi r0, 0
/* 80B65C54  41 82 00 4C */	beq lbl_80B65CA0
/* 80B65C58  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80B65C5C  C0 3E 00 E0 */	lfs f1, 0xe0(r30)
/* 80B65C60  C0 5E 02 18 */	lfs f2, 0x218(r30)
/* 80B65C64  C0 7E 02 1C */	lfs f3, 0x21c(r30)
/* 80B65C68  4B 70 9D D4 */	b cLib_addCalc2__FPffff
/* 80B65C6C  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80B65C70  C0 1E 02 18 */	lfs f0, 0x218(r30)
/* 80B65C74  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B65C78  4C 40 13 82 */	cror 2, 0, 2
/* 80B65C7C  40 82 07 4C */	bne lbl_80B663C8
/* 80B65C80  38 00 00 00 */	li r0, 0
/* 80B65C84  98 1D 10 65 */	stb r0, 0x1065(r29)
/* 80B65C88  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B65C8C  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 80B65C90  D0 1D 04 F8 */	stfs f0, 0x4f8(r29)
/* 80B65C94  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B65C98  D0 1D 05 00 */	stfs f0, 0x500(r29)
/* 80B65C9C  48 00 07 2C */	b lbl_80B663C8
lbl_80B65CA0:
/* 80B65CA0  80 1D 0C E0 */	lwz r0, 0xce0(r29)
/* 80B65CA4  2C 00 00 00 */	cmpwi r0, 0
/* 80B65CA8  41 82 00 24 */	beq lbl_80B65CCC
/* 80B65CAC  38 7D 0B A8 */	addi r3, r29, 0xba8
/* 80B65CB0  4B 5D FA 4C */	b remove__18daNpcT_ActorMngr_cFv
/* 80B65CB4  38 00 00 00 */	li r0, 0
/* 80B65CB8  90 1D 0B C8 */	stw r0, 0xbc8(r29)
/* 80B65CBC  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B65CC0  D0 1D 0C F4 */	stfs f0, 0xcf4(r29)
/* 80B65CC4  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B65CC8  90 1D 0C E0 */	stw r0, 0xce0(r29)
lbl_80B65CCC:
/* 80B65CCC  38 00 00 00 */	li r0, 0
/* 80B65CD0  98 1D 0C FF */	stb r0, 0xcff(r29)
/* 80B65CD4  48 00 06 F4 */	b lbl_80B663C8
lbl_80B65CD8:
/* 80B65CD8  88 1D 10 6E */	lbz r0, 0x106e(r29)
/* 80B65CDC  28 00 00 00 */	cmplwi r0, 0
/* 80B65CE0  41 82 00 70 */	beq lbl_80B65D50
/* 80B65CE4  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 80B65CE8  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 80B65CEC  41 82 00 64 */	beq lbl_80B65D50
/* 80B65CF0  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B65CF4  2C 00 00 1A */	cmpwi r0, 0x1a
/* 80B65CF8  41 82 00 24 */	beq lbl_80B65D1C
/* 80B65CFC  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B65D00  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B65D04  4B 5D FB 94 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B65D08  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B65D0C  38 00 00 1A */	li r0, 0x1a
/* 80B65D10  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B65D14  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B65D18  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80B65D1C:
/* 80B65D1C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006008C@ha */
/* 80B65D20  38 03 00 8C */	addi r0, r3, 0x008C /* 0x0006008C@l */
/* 80B65D24  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80B65D28  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B65D2C  38 81 00 1C */	addi r4, r1, 0x1c
/* 80B65D30  38 A0 00 00 */	li r5, 0
/* 80B65D34  38 C0 FF FF */	li r6, -1
/* 80B65D38  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80B65D3C  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B65D40  7D 89 03 A6 */	mtctr r12
/* 80B65D44  4E 80 04 21 */	bctrl 
/* 80B65D48  38 00 00 00 */	li r0, 0
/* 80B65D4C  98 1D 10 6E */	stb r0, 0x106e(r29)
lbl_80B65D50:
/* 80B65D50  88 1D 10 6E */	lbz r0, 0x106e(r29)
/* 80B65D54  28 00 00 00 */	cmplwi r0, 0
/* 80B65D58  40 82 03 A4 */	bne lbl_80B660FC
lbl_80B65D5C:
/* 80B65D5C  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B65D60  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B65D64  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B65D68  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B65D6C  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B65D70  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80B65D74  38 7D 0F AC */	addi r3, r29, 0xfac
/* 80B65D78  38 81 00 58 */	addi r4, r1, 0x58
/* 80B65D7C  80 BD 0F AC */	lwz r5, 0xfac(r29)
/* 80B65D80  A0 A5 00 00 */	lhz r5, 0(r5)
/* 80B65D84  4B 5E 04 04 */	b chkPassed1__13daNpcT_Path_cF4cXyzi
/* 80B65D88  2C 03 00 00 */	cmpwi r3, 0
/* 80B65D8C  41 82 03 2C */	beq lbl_80B660B8
/* 80B65D90  80 7D 0F AC */	lwz r3, 0xfac(r29)
/* 80B65D94  80 83 00 08 */	lwz r4, 8(r3)
/* 80B65D98  A0 1D 0F C8 */	lhz r0, 0xfc8(r29)
/* 80B65D9C  54 03 20 36 */	slwi r3, r0, 4
/* 80B65DA0  38 03 00 03 */	addi r0, r3, 3
/* 80B65DA4  7C 04 00 AE */	lbzx r0, r4, r0
/* 80B65DA8  28 00 00 00 */	cmplwi r0, 0
/* 80B65DAC  40 82 00 60 */	bne lbl_80B65E0C
/* 80B65DB0  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006008B@ha */
/* 80B65DB4  38 03 00 8B */	addi r0, r3, 0x008B /* 0x0006008B@l */
/* 80B65DB8  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B65DBC  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B65DC0  38 81 00 18 */	addi r4, r1, 0x18
/* 80B65DC4  38 A0 00 00 */	li r5, 0
/* 80B65DC8  38 C0 FF FF */	li r6, -1
/* 80B65DCC  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80B65DD0  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B65DD4  7D 89 03 A6 */	mtctr r12
/* 80B65DD8  4E 80 04 21 */	bctrl 
/* 80B65DDC  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500BF@ha */
/* 80B65DE0  38 03 00 BF */	addi r0, r3, 0x00BF /* 0x000500BF@l */
/* 80B65DE4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B65DE8  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B65DEC  38 81 00 14 */	addi r4, r1, 0x14
/* 80B65DF0  38 A0 FF FF */	li r5, -1
/* 80B65DF4  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80B65DF8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B65DFC  7D 89 03 A6 */	mtctr r12
/* 80B65E00  4E 80 04 21 */	bctrl 
/* 80B65E04  38 00 00 01 */	li r0, 1
/* 80B65E08  98 1D 10 6E */	stb r0, 0x106e(r29)
lbl_80B65E0C:
/* 80B65E0C  38 7D 0F AC */	addi r3, r29, 0xfac
/* 80B65E10  80 9D 0F AC */	lwz r4, 0xfac(r29)
/* 80B65E14  A0 84 00 00 */	lhz r4, 0(r4)
/* 80B65E18  4B 5D FF B8 */	b setNextIdx__13daNpcT_Path_cFi
/* 80B65E1C  2C 03 00 00 */	cmpwi r3, 0
/* 80B65E20  41 82 00 40 */	beq lbl_80B65E60
/* 80B65E24  38 00 00 01 */	li r0, 1
/* 80B65E28  98 1D 10 64 */	stb r0, 0x1064(r29)
/* 80B65E2C  98 1D 10 65 */	stb r0, 0x1065(r29)
/* 80B65E30  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B65E34  2C 00 00 20 */	cmpwi r0, 0x20
/* 80B65E38  41 82 02 C4 */	beq lbl_80B660FC
/* 80B65E3C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B65E40  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B65E44  4B 5D FA 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B65E48  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B65E4C  38 00 00 20 */	li r0, 0x20
/* 80B65E50  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B65E54  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B65E58  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B65E5C  48 00 02 A0 */	b lbl_80B660FC
lbl_80B65E60:
/* 80B65E60  88 1D 10 6E */	lbz r0, 0x106e(r29)
/* 80B65E64  28 00 00 00 */	cmplwi r0, 0
/* 80B65E68  41 82 FE F4 */	beq lbl_80B65D5C
/* 80B65E6C  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80B65E70  2C 00 00 00 */	cmpwi r0, 0
/* 80B65E74  40 82 00 30 */	bne lbl_80B65EA4
/* 80B65E78  80 1D 0B 7C */	lwz r0, 0xb7c(r29)
/* 80B65E7C  2C 00 00 19 */	cmpwi r0, 0x19
/* 80B65E80  41 82 00 24 */	beq lbl_80B65EA4
/* 80B65E84  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B65E88  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B65E8C  4B 5D FA 0C */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B65E90  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B65E94  38 00 00 19 */	li r0, 0x19
/* 80B65E98  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B65E9C  C0 1E 01 00 */	lfs f0, 0x100(r30)
/* 80B65EA0  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80B65EA4:
/* 80B65EA4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 80B65EA8  D0 1D 0F FC */	stfs f0, 0xffc(r29)
/* 80B65EAC  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 80B65EB0  D0 1D 10 00 */	stfs f0, 0x1000(r29)
/* 80B65EB4  C0 1D 04 D8 */	lfs f0, 0x4d8(r29)
/* 80B65EB8  D0 1D 10 04 */	stfs f0, 0x1004(r29)
/* 80B65EBC  A0 1D 0F C8 */	lhz r0, 0xfc8(r29)
/* 80B65EC0  80 7D 0F AC */	lwz r3, 0xfac(r29)
/* 80B65EC4  80 63 00 08 */	lwz r3, 8(r3)
/* 80B65EC8  54 00 20 36 */	slwi r0, r0, 4
/* 80B65ECC  7C 83 02 14 */	add r4, r3, r0
/* 80B65ED0  80 64 00 04 */	lwz r3, 4(r4)
/* 80B65ED4  80 04 00 08 */	lwz r0, 8(r4)
/* 80B65ED8  90 61 00 4C */	stw r3, 0x4c(r1)
/* 80B65EDC  90 01 00 50 */	stw r0, 0x50(r1)
/* 80B65EE0  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B65EE4  90 01 00 54 */	stw r0, 0x54(r1)
/* 80B65EE8  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80B65EEC  D0 1D 10 08 */	stfs f0, 0x1008(r29)
/* 80B65EF0  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B65EF4  D0 1D 10 0C */	stfs f0, 0x100c(r29)
/* 80B65EF8  C0 01 00 54 */	lfs f0, 0x54(r1)
/* 80B65EFC  D0 1D 10 10 */	stfs f0, 0x1010(r29)
/* 80B65F00  38 7D 0F FC */	addi r3, r29, 0xffc
/* 80B65F04  38 9D 10 08 */	addi r4, r29, 0x1008
/* 80B65F08  4B 70 AC FC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B65F0C  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 80B65F10  38 61 00 40 */	addi r3, r1, 0x40
/* 80B65F14  38 9D 10 08 */	addi r4, r29, 0x1008
/* 80B65F18  38 BD 0F FC */	addi r5, r29, 0xffc
/* 80B65F1C  4B 70 0C 18 */	b __mi__4cXyzCFRC3Vec
/* 80B65F20  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80B65F24  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80B65F28  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B65F2C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80B65F30  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B65F34  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B65F38  38 61 00 28 */	addi r3, r1, 0x28
/* 80B65F3C  4B 7E 11 FC */	b PSVECSquareMag
/* 80B65F40  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B65F44  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B65F48  40 81 00 58 */	ble lbl_80B65FA0
/* 80B65F4C  FC 00 08 34 */	frsqrte f0, f1
/* 80B65F50  C8 9E 01 28 */	lfd f4, 0x128(r30)
/* 80B65F54  FC 44 00 32 */	fmul f2, f4, f0
/* 80B65F58  C8 7E 01 30 */	lfd f3, 0x130(r30)
/* 80B65F5C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B65F60  FC 01 00 32 */	fmul f0, f1, f0
/* 80B65F64  FC 03 00 28 */	fsub f0, f3, f0
/* 80B65F68  FC 02 00 32 */	fmul f0, f2, f0
/* 80B65F6C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B65F70  FC 00 00 32 */	fmul f0, f0, f0
/* 80B65F74  FC 01 00 32 */	fmul f0, f1, f0
/* 80B65F78  FC 03 00 28 */	fsub f0, f3, f0
/* 80B65F7C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B65F80  FC 44 00 32 */	fmul f2, f4, f0
/* 80B65F84  FC 00 00 32 */	fmul f0, f0, f0
/* 80B65F88  FC 01 00 32 */	fmul f0, f1, f0
/* 80B65F8C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B65F90  FC 02 00 32 */	fmul f0, f2, f0
/* 80B65F94  FC 21 00 32 */	fmul f1, f1, f0
/* 80B65F98  FC 20 08 18 */	frsp f1, f1
/* 80B65F9C  48 00 00 88 */	b lbl_80B66024
lbl_80B65FA0:
/* 80B65FA0  C8 1E 01 38 */	lfd f0, 0x138(r30)
/* 80B65FA4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B65FA8  40 80 00 10 */	bge lbl_80B65FB8
/* 80B65FAC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B65FB0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80B65FB4  48 00 00 70 */	b lbl_80B66024
lbl_80B65FB8:
/* 80B65FB8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B65FBC  80 81 00 08 */	lwz r4, 8(r1)
/* 80B65FC0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B65FC4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B65FC8  7C 03 00 00 */	cmpw r3, r0
/* 80B65FCC  41 82 00 14 */	beq lbl_80B65FE0
/* 80B65FD0  40 80 00 40 */	bge lbl_80B66010
/* 80B65FD4  2C 03 00 00 */	cmpwi r3, 0
/* 80B65FD8  41 82 00 20 */	beq lbl_80B65FF8
/* 80B65FDC  48 00 00 34 */	b lbl_80B66010
lbl_80B65FE0:
/* 80B65FE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B65FE4  41 82 00 0C */	beq lbl_80B65FF0
/* 80B65FE8  38 00 00 01 */	li r0, 1
/* 80B65FEC  48 00 00 28 */	b lbl_80B66014
lbl_80B65FF0:
/* 80B65FF0  38 00 00 02 */	li r0, 2
/* 80B65FF4  48 00 00 20 */	b lbl_80B66014
lbl_80B65FF8:
/* 80B65FF8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B65FFC  41 82 00 0C */	beq lbl_80B66008
/* 80B66000  38 00 00 05 */	li r0, 5
/* 80B66004  48 00 00 10 */	b lbl_80B66014
lbl_80B66008:
/* 80B66008  38 00 00 03 */	li r0, 3
/* 80B6600C  48 00 00 08 */	b lbl_80B66014
lbl_80B66010:
/* 80B66010  38 00 00 04 */	li r0, 4
lbl_80B66014:
/* 80B66014  2C 00 00 01 */	cmpwi r0, 1
/* 80B66018  40 82 00 0C */	bne lbl_80B66024
/* 80B6601C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B66020  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80B66024:
/* 80B66024  C0 1D 05 2C */	lfs f0, 0x52c(r29)
/* 80B66028  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B6602C  FC 00 00 1E */	fctiwz f0, f0
/* 80B66030  D8 01 00 70 */	stfd f0, 0x70(r1)
/* 80B66034  80 61 00 74 */	lwz r3, 0x74(r1)
/* 80B66038  38 03 00 01 */	addi r0, r3, 1
/* 80B6603C  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 80B66040  FC 00 02 10 */	fabs f0, f0
/* 80B66044  FC A0 00 18 */	frsp f5, f0
/* 80B66048  C0 3D 10 0C */	lfs f1, 0x100c(r29)
/* 80B6604C  C0 1D 10 00 */	lfs f0, 0x1000(r29)
/* 80B66050  EC 81 00 28 */	fsubs f4, f1, f0
/* 80B66054  C0 7E 01 6C */	lfs f3, 0x16c(r30)
/* 80B66058  C8 5E 01 58 */	lfd f2, 0x158(r30)
/* 80B6605C  6C 03 80 00 */	xoris r3, r0, 0x8000
/* 80B66060  90 61 00 7C */	stw r3, 0x7c(r1)
/* 80B66064  3C 00 43 30 */	lis r0, 0x4330
/* 80B66068  90 01 00 78 */	stw r0, 0x78(r1)
/* 80B6606C  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 80B66070  EC 20 10 28 */	fsubs f1, f0, f2
/* 80B66074  90 61 00 84 */	stw r3, 0x84(r1)
/* 80B66078  90 01 00 80 */	stw r0, 0x80(r1)
/* 80B6607C  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 80B66080  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B66084  EC 00 01 72 */	fmuls f0, f0, f5
/* 80B66088  EC 01 00 32 */	fmuls f0, f1, f0
/* 80B6608C  EC 03 00 32 */	fmuls f0, f3, f0
/* 80B66090  EC 04 00 2A */	fadds f0, f4, f0
/* 80B66094  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B66098  C0 3D 04 FC */	lfs f1, 0x4fc(r29)
/* 80B6609C  90 61 00 8C */	stw r3, 0x8c(r1)
/* 80B660A0  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B660A4  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80B660A8  EC 00 10 28 */	fsubs f0, f0, f2
/* 80B660AC  EC 01 00 24 */	fdivs f0, f1, f0
/* 80B660B0  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 80B660B4  48 00 00 48 */	b lbl_80B660FC
lbl_80B660B8:
/* 80B660B8  A0 1D 0F C8 */	lhz r0, 0xfc8(r29)
/* 80B660BC  80 7D 0F AC */	lwz r3, 0xfac(r29)
/* 80B660C0  80 63 00 08 */	lwz r3, 8(r3)
/* 80B660C4  54 00 20 36 */	slwi r0, r0, 4
/* 80B660C8  7C 83 02 14 */	add r4, r3, r0
/* 80B660CC  80 64 00 04 */	lwz r3, 4(r4)
/* 80B660D0  80 04 00 08 */	lwz r0, 8(r4)
/* 80B660D4  90 61 00 34 */	stw r3, 0x34(r1)
/* 80B660D8  90 01 00 38 */	stw r0, 0x38(r1)
/* 80B660DC  80 04 00 0C */	lwz r0, 0xc(r4)
/* 80B660E0  90 01 00 3C */	stw r0, 0x3c(r1)
/* 80B660E4  C0 01 00 34 */	lfs f0, 0x34(r1)
/* 80B660E8  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 80B660EC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B660F0  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80B660F4  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80B660F8  D0 01 00 6C */	stfs f0, 0x6c(r1)
lbl_80B660FC:
/* 80B660FC  88 1D 10 64 */	lbz r0, 0x1064(r29)
/* 80B66100  28 00 00 00 */	cmplwi r0, 0
/* 80B66104  40 82 02 C4 */	bne lbl_80B663C8
/* 80B66108  88 1D 10 6E */	lbz r0, 0x106e(r29)
/* 80B6610C  28 00 00 00 */	cmplwi r0, 0
/* 80B66110  40 82 02 B8 */	bne lbl_80B663C8
/* 80B66114  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 80B66118  38 81 00 64 */	addi r4, r1, 0x64
/* 80B6611C  4B 70 AA E8 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B66120  7C 7F 1B 78 */	mr r31, r3
/* 80B66124  B3 FD 04 DE */	sth r31, 0x4de(r29)
/* 80B66128  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 80B6612C  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80B66130  38 A0 00 04 */	li r5, 4
/* 80B66134  38 C0 02 00 */	li r6, 0x200
/* 80B66138  4B 70 A4 D0 */	b cLib_addCalcAngleS2__FPssss
/* 80B6613C  A8 1D 04 E6 */	lha r0, 0x4e6(r29)
/* 80B66140  B0 1D 0D 7A */	sth r0, 0xd7a(r29)
/* 80B66144  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80B66148  2C 00 00 00 */	cmpwi r0, 0
/* 80B6614C  40 82 01 10 */	bne lbl_80B6625C
/* 80B66150  80 7D 0B 7C */	lwz r3, 0xb7c(r29)
/* 80B66154  2C 03 00 1D */	cmpwi r3, 0x1d
/* 80B66158  41 82 01 04 */	beq lbl_80B6625C
/* 80B6615C  A8 1D 0D 7A */	lha r0, 0xd7a(r29)
/* 80B66160  7C 00 F8 50 */	subf r0, r0, r31
/* 80B66164  C0 7E 00 E0 */	lfs f3, 0xe0(r30)
/* 80B66168  C0 5E 02 20 */	lfs f2, 0x220(r30)
/* 80B6616C  7C 00 07 34 */	extsh r0, r0
/* 80B66170  C8 3E 01 58 */	lfd f1, 0x158(r30)
/* 80B66174  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80B66178  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80B6617C  3C 00 43 30 */	lis r0, 0x4330
/* 80B66180  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B66184  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80B66188  EC 00 08 28 */	fsubs f0, f0, f1
/* 80B6618C  EC 22 00 32 */	fmuls f1, f2, f0
/* 80B66190  FC 03 08 40 */	fcmpo cr0, f3, f1
/* 80B66194  40 80 00 68 */	bge lbl_80B661FC
/* 80B66198  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80B6619C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80B661A0  40 80 00 30 */	bge lbl_80B661D0
/* 80B661A4  2C 03 00 1B */	cmpwi r3, 0x1b
/* 80B661A8  41 82 00 B4 */	beq lbl_80B6625C
/* 80B661AC  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B661B0  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B661B4  4B 5D F6 E4 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B661B8  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B661BC  38 00 00 1B */	li r0, 0x1b
/* 80B661C0  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B661C4  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80B661C8  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B661CC  48 00 00 90 */	b lbl_80B6625C
lbl_80B661D0:
/* 80B661D0  2C 03 00 18 */	cmpwi r3, 0x18
/* 80B661D4  41 82 00 88 */	beq lbl_80B6625C
/* 80B661D8  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B661DC  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B661E0  4B 5D F6 B8 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B661E4  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B661E8  38 00 00 18 */	li r0, 0x18
/* 80B661EC  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B661F0  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80B661F4  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B661F8  48 00 00 64 */	b lbl_80B6625C
lbl_80B661FC:
/* 80B661FC  C0 1E 02 28 */	lfs f0, 0x228(r30)
/* 80B66200  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B66204  40 80 00 30 */	bge lbl_80B66234
/* 80B66208  2C 03 00 1C */	cmpwi r3, 0x1c
/* 80B6620C  41 82 00 50 */	beq lbl_80B6625C
/* 80B66210  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B66214  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B66218  4B 5D F6 80 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B6621C  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B66220  38 00 00 1C */	li r0, 0x1c
/* 80B66224  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B66228  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80B6622C  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
/* 80B66230  48 00 00 2C */	b lbl_80B6625C
lbl_80B66234:
/* 80B66234  2C 03 00 18 */	cmpwi r3, 0x18
/* 80B66238  41 82 00 24 */	beq lbl_80B6625C
/* 80B6623C  83 9D 0B 80 */	lwz r28, 0xb80(r29)
/* 80B66240  38 7D 0B 74 */	addi r3, r29, 0xb74
/* 80B66244  4B 5D F6 54 */	b initialize__22daNpcT_MotionSeqMngr_cFv
/* 80B66248  93 9D 0B 80 */	stw r28, 0xb80(r29)
/* 80B6624C  38 00 00 18 */	li r0, 0x18
/* 80B66250  90 1D 0B 7C */	stw r0, 0xb7c(r29)
/* 80B66254  C0 1E 02 24 */	lfs f0, 0x224(r30)
/* 80B66258  D0 1D 0B 8C */	stfs f0, 0xb8c(r29)
lbl_80B6625C:
/* 80B6625C  38 7D 09 44 */	addi r3, r29, 0x944
/* 80B66260  A8 9D 04 DE */	lha r4, 0x4de(r29)
/* 80B66264  38 04 40 00 */	addi r0, r4, 0x4000
/* 80B66268  7C 04 07 34 */	extsh r4, r0
/* 80B6626C  4B 4B 78 78 */	b fopAcM_getPolygonAngle__FRC13cBgS_PolyInfos
/* 80B66270  7C 03 00 D0 */	neg r0, r3
/* 80B66274  7C 1B 07 34 */	extsh r27, r0
/* 80B66278  38 7D 0D 78 */	addi r3, r29, 0xd78
/* 80B6627C  A8 9D 0D CA */	lha r4, 0xdca(r29)
/* 80B66280  38 A0 00 06 */	li r5, 6
/* 80B66284  38 C0 02 00 */	li r6, 0x200
/* 80B66288  4B 70 A3 80 */	b cLib_addCalcAngleS2__FPssss
/* 80B6628C  38 7D 0D 7C */	addi r3, r29, 0xd7c
/* 80B66290  7F 64 DB 78 */	mr r4, r27
/* 80B66294  38 A0 00 06 */	li r5, 6
/* 80B66298  38 C0 02 00 */	li r6, 0x200
/* 80B6629C  4B 70 A3 6C */	b cLib_addCalcAngleS2__FPssss
/* 80B662A0  80 7D 10 44 */	lwz r3, 0x1044(r29)
/* 80B662A4  80 1D 10 4C */	lwz r0, 0x104c(r29)
/* 80B662A8  7C 83 00 50 */	subf r4, r3, r0
/* 80B662AC  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B662B0  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 80B662B4  A8 1D 0D CA */	lha r0, 0xdca(r29)
/* 80B662B8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B662BC  7C 63 02 14 */	add r3, r3, r0
/* 80B662C0  C0 23 00 04 */	lfs f1, 4(r3)
/* 80B662C4  38 7E 00 00 */	addi r3, r30, 0
/* 80B662C8  C0 03 00 A0 */	lfs f0, 0xa0(r3)
/* 80B662CC  EF E0 00 72 */	fmuls f31, f0, f1
/* 80B662D0  A8 1D 0D 1C */	lha r0, 0xd1c(r29)
/* 80B662D4  2C 00 00 00 */	cmpwi r0, 0
/* 80B662D8  41 82 00 10 */	beq lbl_80B662E8
/* 80B662DC  C0 1E 00 E0 */	lfs f0, 0xe0(r30)
/* 80B662E0  EF FF 00 32 */	fmuls f31, f31, f0
/* 80B662E4  48 00 00 74 */	b lbl_80B66358
lbl_80B662E8:
/* 80B662E8  A8 03 00 A4 */	lha r0, 0xa4(r3)
/* 80B662EC  7C 84 02 15 */	add. r4, r4, r0
/* 80B662F0  A8 03 00 A6 */	lha r0, 0xa6(r3)
/* 80B662F4  40 80 00 0C */	bge lbl_80B66300
/* 80B662F8  38 60 00 00 */	li r3, 0
/* 80B662FC  48 00 00 14 */	b lbl_80B66310
lbl_80B66300:
/* 80B66300  7C 04 00 00 */	cmpw r4, r0
/* 80B66304  7C 83 23 78 */	mr r3, r4
/* 80B66308  40 81 00 08 */	ble lbl_80B66310
/* 80B6630C  7C 03 03 78 */	mr r3, r0
lbl_80B66310:
/* 80B66310  2C 03 00 00 */	cmpwi r3, 0
/* 80B66314  40 81 00 44 */	ble lbl_80B66358
/* 80B66318  4B 7F ED B8 */	b abs
/* 80B6631C  C8 3E 01 58 */	lfd f1, 0x158(r30)
/* 80B66320  6C 60 80 00 */	xoris r0, r3, 0x8000
/* 80B66324  90 01 00 8C */	stw r0, 0x8c(r1)
/* 80B66328  3C 00 43 30 */	lis r0, 0x4330
/* 80B6632C  90 01 00 88 */	stw r0, 0x88(r1)
/* 80B66330  C8 01 00 88 */	lfd f0, 0x88(r1)
/* 80B66334  EC 20 08 28 */	fsubs f1, f0, f1
/* 80B66338  C0 1E 02 2C */	lfs f0, 0x22c(r30)
/* 80B6633C  EC 20 00 72 */	fmuls f1, f0, f1
/* 80B66340  38 7E 00 00 */	addi r3, r30, 0
/* 80B66344  C0 03 00 A8 */	lfs f0, 0xa8(r3)
/* 80B66348  EC 20 00 72 */	fmuls f1, f0, f1
/* 80B6634C  C0 1E 00 F0 */	lfs f0, 0xf0(r30)
/* 80B66350  EC 00 08 2A */	fadds f0, f0, f1
/* 80B66354  EF FF 00 32 */	fmuls f31, f31, f0
lbl_80B66358:
/* 80B66358  38 7D 05 2C */	addi r3, r29, 0x52c
/* 80B6635C  FC 20 F8 90 */	fmr f1, f31
/* 80B66360  38 9E 00 00 */	addi r4, r30, 0
/* 80B66364  C0 44 00 9C */	lfs f2, 0x9c(r4)
/* 80B66368  4B 70 A3 D8 */	b cLib_chaseF__FPfff
/* 80B6636C  3C 60 00 06 */	lis r3, 0x0006 /* 0x0006008A@ha */
/* 80B66370  38 03 00 8A */	addi r0, r3, 0x008A /* 0x0006008A@l */
/* 80B66374  90 01 00 10 */	stw r0, 0x10(r1)
/* 80B66378  C0 3D 05 2C */	lfs f1, 0x52c(r29)
/* 80B6637C  4B 7F BD 30 */	b __cvt_fp2unsigned
/* 80B66380  7C 65 1B 78 */	mr r5, r3
/* 80B66384  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B66388  38 81 00 10 */	addi r4, r1, 0x10
/* 80B6638C  38 C0 FF FF */	li r6, -1
/* 80B66390  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80B66394  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 80B66398  7D 89 03 A6 */	mtctr r12
/* 80B6639C  4E 80 04 21 */	bctrl 
/* 80B663A0  3C 60 00 05 */	lis r3, 0x0005 /* 0x000500BE@ha */
/* 80B663A4  38 03 00 BE */	addi r0, r3, 0x00BE /* 0x000500BE@l */
/* 80B663A8  90 01 00 0C */	stw r0, 0xc(r1)
/* 80B663AC  38 7D 05 80 */	addi r3, r29, 0x580
/* 80B663B0  38 81 00 0C */	addi r4, r1, 0xc
/* 80B663B4  38 A0 FF FF */	li r5, -1
/* 80B663B8  81 9D 05 80 */	lwz r12, 0x580(r29)
/* 80B663BC  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B663C0  7D 89 03 A6 */	mtctr r12
/* 80B663C4  4E 80 04 21 */	bctrl 
lbl_80B663C8:
/* 80B663C8  38 00 00 00 */	li r0, 0
/* 80B663CC  90 1D 05 5C */	stw r0, 0x55c(r29)
lbl_80B663D0:
/* 80B663D0  A8 1D 04 B8 */	lha r0, 0x4b8(r29)
/* 80B663D4  54 03 06 BE */	clrlwi r3, r0, 0x1a
/* 80B663D8  38 80 00 0E */	li r4, 0xe
/* 80B663DC  38 BD 04 D0 */	addi r5, r29, 0x4d0
/* 80B663E0  38 C0 FF FF */	li r6, -1
/* 80B663E4  4B 53 5F E8 */	b setPosition__7dTres_cFiUcPC3Veci
/* 80B663E8  38 60 00 01 */	li r3, 1
/* 80B663EC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80B663F0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80B663F4  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80B663F8  4B 7F BE 28 */	b _restgpr_27
/* 80B663FC  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B66400  7C 08 03 A6 */	mtlr r0
/* 80B66404  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80B66408  4E 80 00 20 */	blr 
