lbl_80B9423C:
/* 80B9423C  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B94240  7C 08 02 A6 */	mflr r0
/* 80B94244  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B94248  39 61 00 40 */	addi r11, r1, 0x40
/* 80B9424C  4B 7C DF 7C */	b _savegpr_24
/* 80B94250  7C 7E 1B 78 */	mr r30, r3
/* 80B94254  3C 80 80 BA */	lis r4, m__17daNpc_zrZ_Param_c@ha
/* 80B94258  3B E4 AF EC */	addi r31, r4, m__17daNpc_zrZ_Param_c@l
/* 80B9425C  80 03 04 A0 */	lwz r0, 0x4a0(r3)
/* 80B94260  54 00 07 39 */	rlwinm. r0, r0, 0, 0x1c, 0x1c
/* 80B94264  40 82 00 1C */	bne lbl_80B94280
/* 80B94268  28 1E 00 00 */	cmplwi r30, 0
/* 80B9426C  41 82 00 08 */	beq lbl_80B94274
/* 80B94270  4B FF FB 5D */	bl __ct__11daNpc_zrZ_cFv
lbl_80B94274:
/* 80B94274  80 1E 04 A0 */	lwz r0, 0x4a0(r30)
/* 80B94278  60 00 00 08 */	ori r0, r0, 8
/* 80B9427C  90 1E 04 A0 */	stw r0, 0x4a0(r30)
lbl_80B94280:
/* 80B94280  7F C3 F3 78 */	mr r3, r30
/* 80B94284  48 00 1E F9 */	bl getTypeFromParam__11daNpc_zrZ_cFv
/* 80B94288  98 7E 14 4C */	stb r3, 0x144c(r30)
/* 80B9428C  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B94290  54 00 87 3E */	rlwinm r0, r0, 0x10, 0x1c, 0x1f
/* 80B94294  98 1E 14 4E */	stb r0, 0x144e(r30)
/* 80B94298  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 80B9429C  98 1E 14 54 */	stb r0, 0x1454(r30)
/* 80B942A0  A8 1E 04 B8 */	lha r0, 0x4b8(r30)
/* 80B942A4  54 00 C6 3E */	rlwinm r0, r0, 0x18, 0x18, 0x1f
/* 80B942A8  98 1E 14 55 */	stb r0, 0x1455(r30)
/* 80B942AC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80B942B0  54 00 46 3E */	srwi r0, r0, 0x18
/* 80B942B4  98 1E 14 56 */	stb r0, 0x1456(r30)
/* 80B942B8  A8 7E 04 B4 */	lha r3, 0x4b4(r30)
/* 80B942BC  3C 03 00 00 */	addis r0, r3, 0
/* 80B942C0  28 00 FF FF */	cmplwi r0, 0xffff
/* 80B942C4  41 82 00 0C */	beq lbl_80B942D0
/* 80B942C8  90 7E 14 44 */	stw r3, 0x1444(r30)
/* 80B942CC  48 00 00 0C */	b lbl_80B942D8
lbl_80B942D0:
/* 80B942D0  38 00 FF FF */	li r0, -1
/* 80B942D4  90 1E 14 44 */	stw r0, 0x1444(r30)
lbl_80B942D8:
/* 80B942D8  7F C3 F3 78 */	mr r3, r30
/* 80B942DC  48 00 1E D9 */	bl isDelete__11daNpc_zrZ_cFv
/* 80B942E0  2C 03 00 00 */	cmpwi r3, 0
/* 80B942E4  41 82 00 0C */	beq lbl_80B942F0
/* 80B942E8  38 60 00 05 */	li r3, 5
/* 80B942EC  48 00 02 38 */	b lbl_80B94524
lbl_80B942F0:
/* 80B942F0  3B 20 00 00 */	li r25, 0
/* 80B942F4  3B 00 00 00 */	li r24, 0
/* 80B942F8  3B A0 00 00 */	li r29, 0
/* 80B942FC  3B 80 00 00 */	li r28, 0
/* 80B94300  3C 60 80 BA */	lis r3, l_resNames@ha
/* 80B94304  3B 43 B3 94 */	addi r26, r3, l_resNames@l
/* 80B94308  3C 60 80 BA */	lis r3, l_loadRes_list@ha
/* 80B9430C  3B 63 B3 88 */	addi r27, r3, l_loadRes_list@l
/* 80B94310  48 00 00 48 */	b lbl_80B94358
lbl_80B94314:
/* 80B94314  38 7C 14 18 */	addi r3, r28, 0x1418
/* 80B94318  7C 7E 1A 14 */	add r3, r30, r3
/* 80B9431C  54 00 10 3A */	slwi r0, r0, 2
/* 80B94320  7C 9A 00 2E */	lwzx r4, r26, r0
/* 80B94324  4B 49 8B 98 */	b dComIfG_resLoad__FP30request_of_phase_process_classPCc
/* 80B94328  2C 03 00 05 */	cmpwi r3, 5
/* 80B9432C  41 82 00 0C */	beq lbl_80B94338
/* 80B94330  2C 03 00 03 */	cmpwi r3, 3
/* 80B94334  40 82 00 0C */	bne lbl_80B94340
lbl_80B94338:
/* 80B94338  38 60 00 05 */	li r3, 5
/* 80B9433C  48 00 01 E8 */	b lbl_80B94524
lbl_80B94340:
/* 80B94340  2C 03 00 04 */	cmpwi r3, 4
/* 80B94344  40 82 00 08 */	bne lbl_80B9434C
/* 80B94348  3B 39 00 01 */	addi r25, r25, 1
lbl_80B9434C:
/* 80B9434C  3B 18 00 01 */	addi r24, r24, 1
/* 80B94350  3B BD 00 04 */	addi r29, r29, 4
/* 80B94354  3B 9C 00 08 */	addi r28, r28, 8
lbl_80B94358:
/* 80B94358  88 1E 14 4C */	lbz r0, 0x144c(r30)
/* 80B9435C  54 00 10 3A */	slwi r0, r0, 2
/* 80B94360  7C 7B 00 2E */	lwzx r3, r27, r0
/* 80B94364  7C 03 E8 2E */	lwzx r0, r3, r29
/* 80B94368  2C 00 00 00 */	cmpwi r0, 0
/* 80B9436C  40 80 FF A8 */	bge lbl_80B94314
/* 80B94370  7C 19 C0 00 */	cmpw r25, r24
/* 80B94374  40 82 01 AC */	bne lbl_80B94520
/* 80B94378  7F C3 F3 78 */	mr r3, r30
/* 80B9437C  3C 80 80 B9 */	lis r4, createHeapCallBack__11daNpc_zrZ_cFP10fopAc_ac_c@ha
/* 80B94380  38 84 50 F4 */	addi r4, r4, createHeapCallBack__11daNpc_zrZ_cFP10fopAc_ac_c@l
/* 80B94384  38 A0 52 30 */	li r5, 0x5230
/* 80B94388  4B 48 61 28 */	b fopAcM_entrySolidHeap__FP10fopAc_ac_cPFP10fopAc_ac_c_iUl
/* 80B9438C  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 80B94390  40 82 00 0C */	bne lbl_80B9439C
/* 80B94394  38 60 00 05 */	li r3, 5
/* 80B94398  48 00 01 8C */	b lbl_80B94524
lbl_80B9439C:
/* 80B9439C  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B943A0  80 63 00 04 */	lwz r3, 4(r3)
/* 80B943A4  38 03 00 24 */	addi r0, r3, 0x24
/* 80B943A8  90 1E 05 04 */	stw r0, 0x504(r30)
/* 80B943AC  7F C3 F3 78 */	mr r3, r30
/* 80B943B0  C0 3F 00 84 */	lfs f1, 0x84(r31)
/* 80B943B4  C0 5F 00 88 */	lfs f2, 0x88(r31)
/* 80B943B8  FC 60 08 90 */	fmr f3, f1
/* 80B943BC  C0 9F 00 8C */	lfs f4, 0x8c(r31)
/* 80B943C0  C0 BF 00 90 */	lfs f5, 0x90(r31)
/* 80B943C4  FC C0 20 90 */	fmr f6, f4
/* 80B943C8  4B 48 61 80 */	b fopAcM_setCullSizeBox__FP10fopAc_ac_cffffff
/* 80B943CC  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80B943D0  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B943D4  38 BE 05 38 */	addi r5, r30, 0x538
/* 80B943D8  38 C0 00 03 */	li r6, 3
/* 80B943DC  38 E0 00 01 */	li r7, 1
/* 80B943E0  4B 72 C1 50 */	b init__10Z2CreatureFP3VecP3VecUcUc
/* 80B943E4  38 7E 07 E4 */	addi r3, r30, 0x7e4
/* 80B943E8  38 9F 00 00 */	addi r4, r31, 0
/* 80B943EC  C0 24 00 1C */	lfs f1, 0x1c(r4)
/* 80B943F0  C0 44 00 18 */	lfs f2, 0x18(r4)
/* 80B943F4  4B 4E 1B 64 */	b SetWall__12dBgS_AcchCirFff
/* 80B943F8  38 1E 04 E4 */	addi r0, r30, 0x4e4
/* 80B943FC  90 01 00 08 */	stw r0, 8(r1)
/* 80B94400  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B94404  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 80B94408  38 BE 04 BC */	addi r5, r30, 0x4bc
/* 80B9440C  7F C6 F3 78 */	mr r6, r30
/* 80B94410  38 E0 00 01 */	li r7, 1
/* 80B94414  39 1E 07 E4 */	addi r8, r30, 0x7e4
/* 80B94418  39 3E 04 F8 */	addi r9, r30, 0x4f8
/* 80B9441C  39 5E 04 DC */	addi r10, r30, 0x4dc
/* 80B94420  4B 4E 1E 28 */	b Set__9dBgS_AcchFP4cXyzP4cXyzP10fopAc_ac_ciP12dBgS_AcchCirP4cXyzP5csXyzP5csXyz
/* 80B94424  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 80B94428  38 9F 00 00 */	addi r4, r31, 0
/* 80B9442C  C0 04 00 10 */	lfs f0, 0x10(r4)
/* 80B94430  FC 00 00 1E */	fctiwz f0, f0
/* 80B94434  D8 01 00 10 */	stfd f0, 0x10(r1)
/* 80B94438  80 81 00 14 */	lwz r4, 0x14(r1)
/* 80B9443C  38 A0 00 00 */	li r5, 0
/* 80B94440  7F C6 F3 78 */	mr r6, r30
/* 80B94444  4B 4E F4 1C */	b Init__9dCcD_SttsFiiP10fopAc_ac_c
/* 80B94448  38 7E 12 C4 */	addi r3, r30, 0x12c4
/* 80B9444C  3C 80 80 3B */	lis r4, mCcDCyl__8daNpcF_c@ha
/* 80B94450  38 84 37 E0 */	addi r4, r4, mCcDCyl__8daNpcF_c@l
/* 80B94454  4B 4F 04 60 */	b Set__8dCcD_CylFRC11dCcD_SrcCyl
/* 80B94458  38 1E 07 A8 */	addi r0, r30, 0x7a8
/* 80B9445C  90 1E 13 08 */	stw r0, 0x1308(r30)
/* 80B94460  3C 60 80 15 */	lis r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@ha
/* 80B94464  38 03 26 14 */	addi r0, r3, tgHitCallBack__8daNpcF_cFP10fopAc_ac_cP12dCcD_GObjInfP10fopAc_ac_cP12dCcD_GObjInf@l
/* 80B94468  90 1E 13 68 */	stw r0, 0x1368(r30)
/* 80B9446C  38 7E 05 D0 */	addi r3, r30, 0x5d0
/* 80B94470  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80B94474  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80B94478  38 84 0F 38 */	addi r4, r4, 0xf38
/* 80B9447C  4B 4E 26 30 */	b CrrPos__9dBgS_AcchFR4dBgS
/* 80B94480  80 1E 06 AC */	lwz r0, 0x6ac(r30)
/* 80B94484  90 1E 0A 44 */	stw r0, 0xa44(r30)
/* 80B94488  80 1E 06 B0 */	lwz r0, 0x6b0(r30)
/* 80B9448C  90 1E 0A 48 */	stw r0, 0xa48(r30)
/* 80B94490  80 1E 06 B4 */	lwz r0, 0x6b4(r30)
/* 80B94494  90 1E 0A 4C */	stw r0, 0xa4c(r30)
/* 80B94498  88 1E 06 B8 */	lbz r0, 0x6b8(r30)
/* 80B9449C  98 1E 0A 50 */	stb r0, 0xa50(r30)
/* 80B944A0  A0 1E 06 C0 */	lhz r0, 0x6c0(r30)
/* 80B944A4  B0 1E 0A 58 */	sth r0, 0xa58(r30)
/* 80B944A8  A0 1E 06 C2 */	lhz r0, 0x6c2(r30)
/* 80B944AC  B0 1E 0A 5A */	sth r0, 0xa5a(r30)
/* 80B944B0  80 1E 06 C4 */	lwz r0, 0x6c4(r30)
/* 80B944B4  90 1E 0A 5C */	stw r0, 0xa5c(r30)
/* 80B944B8  80 1E 06 C8 */	lwz r0, 0x6c8(r30)
/* 80B944BC  90 1E 0A 60 */	stw r0, 0xa60(r30)
/* 80B944C0  C0 1E 06 D0 */	lfs f0, 0x6d0(r30)
/* 80B944C4  D0 1E 0A 68 */	stfs f0, 0xa68(r30)
/* 80B944C8  C0 1E 06 D4 */	lfs f0, 0x6d4(r30)
/* 80B944CC  D0 1E 0A 6C */	stfs f0, 0xa6c(r30)
/* 80B944D0  C0 1E 06 D8 */	lfs f0, 0x6d8(r30)
/* 80B944D4  D0 1E 0A 70 */	stfs f0, 0xa70(r30)
/* 80B944D8  80 1E 06 DC */	lwz r0, 0x6dc(r30)
/* 80B944DC  90 1E 0A 74 */	stw r0, 0xa74(r30)
/* 80B944E0  C0 1E 06 E0 */	lfs f0, 0x6e0(r30)
/* 80B944E4  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 80B944E8  80 1E 06 E4 */	lwz r0, 0x6e4(r30)
/* 80B944EC  90 1E 0A 7C */	stw r0, 0xa7c(r30)
/* 80B944F0  C0 1E 06 68 */	lfs f0, 0x668(r30)
/* 80B944F4  D0 1E 09 80 */	stfs f0, 0x980(r30)
/* 80B944F8  7F C3 F3 78 */	mr r3, r30
/* 80B944FC  4B 5B E8 88 */	b setEnvTevColor__8daNpcF_cFv
/* 80B94500  7F C3 F3 78 */	mr r3, r30
/* 80B94504  4B 5B E8 DC */	b setRoomNo__8daNpcF_cFv
/* 80B94508  7F C3 F3 78 */	mr r3, r30
/* 80B9450C  48 00 1D 5D */	bl reset__11daNpc_zrZ_cFv
/* 80B94510  7F C3 F3 78 */	mr r3, r30
/* 80B94514  48 00 05 15 */	bl Execute__11daNpc_zrZ_cFv
/* 80B94518  38 60 00 04 */	li r3, 4
/* 80B9451C  48 00 00 08 */	b lbl_80B94524
lbl_80B94520:
/* 80B94520  38 60 00 00 */	li r3, 0
lbl_80B94524:
/* 80B94524  39 61 00 40 */	addi r11, r1, 0x40
/* 80B94528  4B 7C DC EC */	b _restgpr_24
/* 80B9452C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B94530  7C 08 03 A6 */	mtlr r0
/* 80B94534  38 21 00 40 */	addi r1, r1, 0x40
/* 80B94538  4E 80 00 20 */	blr 
