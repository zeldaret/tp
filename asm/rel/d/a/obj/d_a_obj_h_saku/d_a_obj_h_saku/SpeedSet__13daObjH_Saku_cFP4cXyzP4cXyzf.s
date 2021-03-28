lbl_80C15810:
/* 80C15810  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80C15814  7C 08 02 A6 */	mflr r0
/* 80C15818  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80C1581C  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80C15820  4B 74 C9 B8 */	b _savegpr_28
/* 80C15824  7C 7D 1B 78 */	mr r29, r3
/* 80C15828  7C 9E 23 78 */	mr r30, r4
/* 80C1582C  7C BC 2B 78 */	mr r28, r5
/* 80C15830  3C 60 80 C1 */	lis r3, lit_3703@ha
/* 80C15834  3B E3 64 C8 */	addi r31, r3, lit_3703@l
/* 80C15838  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80C1583C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80C15840  EC 01 00 2A */	fadds f0, f1, f0
/* 80C15844  D0 1D 05 C4 */	stfs f0, 0x5c4(r29)
/* 80C15848  C0 04 00 00 */	lfs f0, 0(r4)
/* 80C1584C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80C15850  C0 04 00 04 */	lfs f0, 4(r4)
/* 80C15854  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 80C15858  C0 04 00 08 */	lfs f0, 8(r4)
/* 80C1585C  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C15860  C0 25 00 04 */	lfs f1, 4(r5)
/* 80C15864  C0 1D 05 30 */	lfs f0, 0x530(r29)
/* 80C15868  EC 01 00 2A */	fadds f0, f1, f0
/* 80C1586C  D0 05 00 04 */	stfs f0, 4(r5)
/* 80C15870  7F C3 F3 78 */	mr r3, r30
/* 80C15874  7F 84 E3 78 */	mr r4, r28
/* 80C15878  7F C5 F3 78 */	mr r5, r30
/* 80C1587C  4B 73 18 14 */	b PSVECAdd
/* 80C15880  C0 3D 05 C4 */	lfs f1, 0x5c4(r29)
/* 80C15884  C0 1F 00 14 */	lfs f0, 0x14(r31)
/* 80C15888  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80C1588C  40 81 01 A4 */	ble lbl_80C15A30
/* 80C15890  38 61 00 30 */	addi r3, r1, 0x30
/* 80C15894  4B 46 23 D4 */	b __ct__11dBgS_LinChkFv
/* 80C15898  38 61 00 30 */	addi r3, r1, 0x30
/* 80C1589C  38 81 00 24 */	addi r4, r1, 0x24
/* 80C158A0  7F C5 F3 78 */	mr r5, r30
/* 80C158A4  38 C0 00 00 */	li r6, 0
/* 80C158A8  4B 46 24 BC */	b Set__11dBgS_LinChkFPC4cXyzPC4cXyzPC10fopAc_ac_c
/* 80C158AC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C158B0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C158B4  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80C158B8  38 81 00 30 */	addi r4, r1, 0x30
/* 80C158BC  4B 45 EA F8 */	b LineCross__4cBgSFP11cBgS_LinChk
/* 80C158C0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80C158C4  41 82 01 60 */	beq lbl_80C15A24
/* 80C158C8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80C158CC  D0 1E 00 00 */	stfs f0, 0(r30)
/* 80C158D0  C0 01 00 64 */	lfs f0, 0x64(r1)
/* 80C158D4  D0 1E 00 04 */	stfs f0, 4(r30)
/* 80C158D8  C0 01 00 68 */	lfs f0, 0x68(r1)
/* 80C158DC  D0 1E 00 08 */	stfs f0, 8(r30)
/* 80C158E0  C0 3C 00 04 */	lfs f1, 4(r28)
/* 80C158E4  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C158E8  EC 01 00 32 */	fmuls f0, f1, f0
/* 80C158EC  D0 1C 00 04 */	stfs f0, 4(r28)
/* 80C158F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C158F4  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l
/* 80C158F8  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C158FC  38 80 00 00 */	li r4, 0
/* 80C15900  90 81 00 08 */	stw r4, 8(r1)
/* 80C15904  38 00 FF FF */	li r0, -1
/* 80C15908  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C1590C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C15910  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C15914  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C15918  38 80 00 00 */	li r4, 0
/* 80C1591C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008856@ha */
/* 80C15920  38 A5 88 56 */	addi r5, r5, 0x8856 /* 0x00008856@l */
/* 80C15924  7F C6 F3 78 */	mr r6, r30
/* 80C15928  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80C1592C  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80C15930  39 20 00 00 */	li r9, 0
/* 80C15934  39 40 00 FF */	li r10, 0xff
/* 80C15938  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C1593C  4B 43 71 54 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C15940  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C15944  38 80 00 00 */	li r4, 0
/* 80C15948  90 81 00 08 */	stw r4, 8(r1)
/* 80C1594C  38 00 FF FF */	li r0, -1
/* 80C15950  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C15954  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C15958  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C1595C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C15960  38 80 00 00 */	li r4, 0
/* 80C15964  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008857@ha */
/* 80C15968  38 A5 88 57 */	addi r5, r5, 0x8857 /* 0x00008857@l */
/* 80C1596C  7F C6 F3 78 */	mr r6, r30
/* 80C15970  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80C15974  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80C15978  39 20 00 00 */	li r9, 0
/* 80C1597C  39 40 00 FF */	li r10, 0xff
/* 80C15980  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C15984  4B 43 71 0C */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C15988  80 7C 5D 3C */	lwz r3, 0x5d3c(r28)
/* 80C1598C  38 80 00 00 */	li r4, 0
/* 80C15990  90 81 00 08 */	stw r4, 8(r1)
/* 80C15994  38 00 FF FF */	li r0, -1
/* 80C15998  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C1599C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80C159A0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80C159A4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80C159A8  38 80 00 00 */	li r4, 0
/* 80C159AC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008858@ha */
/* 80C159B0  38 A5 88 58 */	addi r5, r5, 0x8858 /* 0x00008858@l */
/* 80C159B4  7F C6 F3 78 */	mr r6, r30
/* 80C159B8  38 FD 01 0C */	addi r7, r29, 0x10c
/* 80C159BC  39 1D 04 E4 */	addi r8, r29, 0x4e4
/* 80C159C0  39 20 00 00 */	li r9, 0
/* 80C159C4  39 40 00 FF */	li r10, 0xff
/* 80C159C8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C159CC  4B 43 70 C4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80C159D0  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080237@ha */
/* 80C159D4  38 03 02 37 */	addi r0, r3, 0x0237 /* 0x00080237@l */
/* 80C159D8  90 01 00 20 */	stw r0, 0x20(r1)
/* 80C159DC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C159E0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C159E4  80 63 00 00 */	lwz r3, 0(r3)
/* 80C159E8  38 81 00 20 */	addi r4, r1, 0x20
/* 80C159EC  7F C5 F3 78 */	mr r5, r30
/* 80C159F0  38 C0 00 00 */	li r6, 0
/* 80C159F4  38 E0 00 00 */	li r7, 0
/* 80C159F8  C0 3F 00 0C */	lfs f1, 0xc(r31)
/* 80C159FC  FC 40 08 90 */	fmr f2, f1
/* 80C15A00  C0 7F 00 10 */	lfs f3, 0x10(r31)
/* 80C15A04  FC 80 18 90 */	fmr f4, f3
/* 80C15A08  39 00 00 00 */	li r8, 0
/* 80C15A0C  4B 69 5F 78 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C15A10  38 61 00 30 */	addi r3, r1, 0x30
/* 80C15A14  38 80 FF FF */	li r4, -1
/* 80C15A18  4B 46 22 C4 */	b __dt__11dBgS_LinChkFv
/* 80C15A1C  38 60 00 01 */	li r3, 1
/* 80C15A20  48 00 00 14 */	b lbl_80C15A34
lbl_80C15A24:
/* 80C15A24  38 61 00 30 */	addi r3, r1, 0x30
/* 80C15A28  38 80 FF FF */	li r4, -1
/* 80C15A2C  4B 46 22 B0 */	b __dt__11dBgS_LinChkFv
lbl_80C15A30:
/* 80C15A30  38 60 00 00 */	li r3, 0
lbl_80C15A34:
/* 80C15A34  39 61 00 B0 */	addi r11, r1, 0xb0
/* 80C15A38  4B 74 C7 EC */	b _restgpr_28
/* 80C15A3C  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80C15A40  7C 08 03 A6 */	mtlr r0
/* 80C15A44  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80C15A48  4E 80 00 20 */	blr 
