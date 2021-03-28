lbl_804B02C4:
/* 804B02C4  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 804B02C8  7C 08 02 A6 */	mflr r0
/* 804B02CC  90 01 00 74 */	stw r0, 0x74(r1)
/* 804B02D0  39 61 00 70 */	addi r11, r1, 0x70
/* 804B02D4  4B EB 1E E8 */	b _savegpr_21
/* 804B02D8  7C 79 1B 78 */	mr r25, r3
/* 804B02DC  3C 60 80 4C */	lis r3, lit_1109@ha
/* 804B02E0  3B 63 BB 90 */	addi r27, r3, lit_1109@l
/* 804B02E4  3C 60 80 4C */	lis r3, cNullVec__6Z2Calc@ha
/* 804B02E8  3B 83 B8 50 */	addi r28, r3, cNullVec__6Z2Calc@l
/* 804B02EC  3C 60 80 4C */	lis r3, lit_3879@ha
/* 804B02F0  3B A3 B5 34 */	addi r29, r3, lit_3879@l
/* 804B02F4  80 19 10 AC */	lwz r0, 0x10ac(r25)
/* 804B02F8  90 01 00 08 */	stw r0, 8(r1)
/* 804B02FC  3C 60 80 02 */	lis r3, fpcSch_JudgeByID__FPvPv@ha
/* 804B0300  38 63 35 90 */	addi r3, r3, fpcSch_JudgeByID__FPvPv@l
/* 804B0304  38 81 00 08 */	addi r4, r1, 8
/* 804B0308  4B B6 94 F0 */	b fopAcIt_Judge__FPFPvPv_PvPv
/* 804B030C  7C 7E 1B 78 */	mr r30, r3
/* 804B0310  C0 1D 01 34 */	lfs f0, 0x134(r29)
/* 804B0314  D0 19 0F 64 */	stfs f0, 0xf64(r25)
/* 804B0318  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B031C  D0 19 06 F8 */	stfs f0, 0x6f8(r25)
/* 804B0320  C0 1D 01 C8 */	lfs f0, 0x1c8(r29)
/* 804B0324  D0 19 0F 5C */	stfs f0, 0xf5c(r25)
/* 804B0328  38 00 00 00 */	li r0, 0
/* 804B032C  98 19 10 0D */	stb r0, 0x100d(r25)
/* 804B0330  A8 03 05 B8 */	lha r0, 0x5b8(r3)
/* 804B0334  2C 00 00 02 */	cmpwi r0, 2
/* 804B0338  40 80 00 68 */	bge lbl_804B03A0
/* 804B033C  A8 19 13 B6 */	lha r0, 0x13b6(r25)
/* 804B0340  2C 00 00 19 */	cmpwi r0, 0x19
/* 804B0344  40 81 00 5C */	ble lbl_804B03A0
/* 804B0348  38 80 07 D0 */	li r4, 0x7d0
/* 804B034C  C0 5E 05 BC */	lfs f2, 0x5bc(r30)
/* 804B0350  C0 1D 00 9C */	lfs f0, 0x9c(r29)
/* 804B0354  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 804B0358  40 81 00 24 */	ble lbl_804B037C
/* 804B035C  C0 3D 01 CC */	lfs f1, 0x1cc(r29)
/* 804B0360  EC 02 00 28 */	fsubs f0, f2, f0
/* 804B0364  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B0368  FC 00 00 1E */	fctiwz f0, f0
/* 804B036C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804B0370  80 61 00 1C */	lwz r3, 0x1c(r1)
/* 804B0374  38 03 07 D0 */	addi r0, r3, 0x7d0
/* 804B0378  7C 04 07 34 */	extsh r4, r0
lbl_804B037C:
/* 804B037C  7C 80 07 34 */	extsh r0, r4
/* 804B0380  2C 00 17 70 */	cmpwi r0, 0x1770
/* 804B0384  40 81 00 08 */	ble lbl_804B038C
/* 804B0388  38 80 17 70 */	li r4, 0x1770
lbl_804B038C:
/* 804B038C  38 79 10 B0 */	addi r3, r25, 0x10b0
/* 804B0390  38 A0 00 08 */	li r5, 8
/* 804B0394  38 C0 01 2C */	li r6, 0x12c
/* 804B0398  4B DC 02 70 */	b cLib_addCalcAngleS2__FPssss
/* 804B039C  48 00 00 0C */	b lbl_804B03A8
lbl_804B03A0:
/* 804B03A0  38 00 00 00 */	li r0, 0
/* 804B03A4  B0 19 10 B0 */	sth r0, 0x10b0(r25)
lbl_804B03A8:
/* 804B03A8  A8 99 10 B0 */	lha r4, 0x10b0(r25)
/* 804B03AC  B0 81 00 0C */	sth r4, 0xc(r1)
/* 804B03B0  38 00 00 00 */	li r0, 0
/* 804B03B4  B0 01 00 0E */	sth r0, 0xe(r1)
/* 804B03B8  B0 81 00 10 */	sth r4, 0x10(r1)
/* 804B03BC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B03C0  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 804B03C4  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804B03C8  B0 83 31 5A */	sth r4, 0x315a(r3)
/* 804B03CC  B0 03 31 5C */	sth r0, 0x315c(r3)
/* 804B03D0  B0 83 31 5E */	sth r4, 0x315e(r3)
/* 804B03D4  A0 79 14 C2 */	lhz r3, 0x14c2(r25)
/* 804B03D8  28 03 00 00 */	cmplwi r3, 0
/* 804B03DC  41 82 00 78 */	beq lbl_804B0454
/* 804B03E0  38 03 00 01 */	addi r0, r3, 1
/* 804B03E4  B0 19 14 C2 */	sth r0, 0x14c2(r25)
/* 804B03E8  A0 19 14 C2 */	lhz r0, 0x14c2(r25)
/* 804B03EC  28 00 00 02 */	cmplwi r0, 2
/* 804B03F0  41 80 06 88 */	blt lbl_804B0A78
/* 804B03F4  40 82 00 1C */	bne lbl_804B0410
/* 804B03F8  38 79 14 74 */	addi r3, r25, 0x1474
/* 804B03FC  7F 24 CB 78 */	mr r4, r25
/* 804B0400  38 A0 02 D6 */	li r5, 0x2d6
/* 804B0404  38 C0 00 00 */	li r6, 0
/* 804B0408  38 E0 00 00 */	li r7, 0
/* 804B040C  4B D9 9B 84 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
lbl_804B0410:
/* 804B0410  A0 19 14 C2 */	lhz r0, 0x14c2(r25)
/* 804B0414  28 00 00 64 */	cmplwi r0, 0x64
/* 804B0418  40 81 00 0C */	ble lbl_804B0424
/* 804B041C  38 00 00 64 */	li r0, 0x64
/* 804B0420  B0 19 14 C2 */	sth r0, 0x14c2(r25)
lbl_804B0424:
/* 804B0424  38 79 14 74 */	addi r3, r25, 0x1474
/* 804B0428  7F 24 CB 78 */	mr r4, r25
/* 804B042C  38 A0 00 00 */	li r5, 0
/* 804B0430  38 C0 00 00 */	li r6, 0
/* 804B0434  4B D9 9E A4 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B0438  2C 03 00 00 */	cmpwi r3, 0
/* 804B043C  41 82 06 3C */	beq lbl_804B0A78
/* 804B0440  38 00 00 00 */	li r0, 0
/* 804B0444  B0 19 14 C2 */	sth r0, 0x14c2(r25)
/* 804B0448  38 00 00 01 */	li r0, 1
/* 804B044C  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 804B0450  48 00 06 28 */	b lbl_804B0A78
lbl_804B0454:
/* 804B0454  88 1B 00 44 */	lbz r0, 0x44(r27)
/* 804B0458  28 00 00 01 */	cmplwi r0, 1
/* 804B045C  40 82 00 20 */	bne lbl_804B047C
/* 804B0460  C0 3D 01 D0 */	lfs f1, 0x1d0(r29)
/* 804B0464  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 804B0468  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B046C  FC 00 00 1E */	fctiwz f0, f0
/* 804B0470  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804B0474  83 01 00 1C */	lwz r24, 0x1c(r1)
/* 804B0478  48 00 00 1C */	b lbl_804B0494
lbl_804B047C:
/* 804B047C  C0 3D 00 C0 */	lfs f1, 0xc0(r29)
/* 804B0480  C0 1E 05 BC */	lfs f0, 0x5bc(r30)
/* 804B0484  EC 01 00 32 */	fmuls f0, f1, f0
/* 804B0488  FC 00 00 1E */	fctiwz f0, f0
/* 804B048C  D8 01 00 20 */	stfd f0, 0x20(r1)
/* 804B0490  83 01 00 24 */	lwz r24, 0x24(r1)
lbl_804B0494:
/* 804B0494  7F 00 07 34 */	extsh r0, r24
/* 804B0498  2C 00 00 63 */	cmpwi r0, 0x63
/* 804B049C  40 81 00 08 */	ble lbl_804B04A4
/* 804B04A0  3B 00 00 63 */	li r24, 0x63
lbl_804B04A4:
/* 804B04A4  8A FE 06 35 */	lbz r23, 0x635(r30)
/* 804B04A8  38 7B 00 54 */	addi r3, r27, 0x54
/* 804B04AC  88 63 00 24 */	lbz r3, 0x24(r3)
/* 804B04B0  28 03 00 00 */	cmplwi r3, 0
/* 804B04B4  41 82 00 0C */	beq lbl_804B04C0
/* 804B04B8  38 03 FF FF */	addi r0, r3, -1
/* 804B04BC  54 17 06 3E */	clrlwi r23, r0, 0x18
lbl_804B04C0:
/* 804B04C0  A8 19 13 B6 */	lha r0, 0x13b6(r25)
/* 804B04C4  2C 00 00 01 */	cmpwi r0, 1
/* 804B04C8  40 82 00 FC */	bne lbl_804B05C4
/* 804B04CC  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804B04D0  38 00 00 01 */	li r0, 1
/* 804B04D4  98 03 2F C8 */	stb r0, 0x2fc8(r3)
/* 804B04D8  88 1B 00 44 */	lbz r0, 0x44(r27)
/* 804B04DC  28 00 00 02 */	cmplwi r0, 2
/* 804B04E0  40 82 00 A4 */	bne lbl_804B0584
/* 804B04E4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B04E8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B04EC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804B04F0  56 E0 0D FC */	rlwinm r0, r23, 1, 0x17, 0x1e
/* 804B04F4  38 9C 00 20 */	addi r4, r28, 0x20
/* 804B04F8  7C 84 02 2E */	lhzx r4, r4, r0
/* 804B04FC  4B B8 45 08 */	b getEventReg__11dSv_event_cCFUs
/* 804B0500  7F 00 07 34 */	extsh r0, r24
/* 804B0504  C8 3D 00 A0 */	lfd f1, 0xa0(r29)
/* 804B0508  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B050C  90 01 00 24 */	stw r0, 0x24(r1)
/* 804B0510  3C A0 43 30 */	lis r5, 0x4330
/* 804B0514  90 A1 00 20 */	stw r5, 0x20(r1)
/* 804B0518  C8 01 00 20 */	lfd f0, 0x20(r1)
/* 804B051C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B0520  C0 5D 01 D4 */	lfs f2, 0x1d4(r29)
/* 804B0524  EC 00 10 24 */	fdivs f0, f0, f2
/* 804B0528  FC 00 00 1E */	fctiwz f0, f0
/* 804B052C  D8 01 00 18 */	stfd f0, 0x18(r1)
/* 804B0530  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804B0534  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 804B0538  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804B053C  C8 3D 00 A8 */	lfd f1, 0xa8(r29)
/* 804B0540  90 01 00 2C */	stw r0, 0x2c(r1)
/* 804B0544  90 A1 00 28 */	stw r5, 0x28(r1)
/* 804B0548  C8 01 00 28 */	lfd f0, 0x28(r1)
/* 804B054C  EC 00 08 28 */	fsubs f0, f0, f1
/* 804B0550  EC 00 10 24 */	fdivs f0, f0, f2
/* 804B0554  FC 00 00 1E */	fctiwz f0, f0
/* 804B0558  D8 01 00 30 */	stfd f0, 0x30(r1)
/* 804B055C  80 01 00 34 */	lwz r0, 0x34(r1)
/* 804B0560  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804B0564  7C 04 00 40 */	cmplw r4, r0
/* 804B0568  40 81 00 10 */	ble lbl_804B0578
/* 804B056C  38 00 00 01 */	li r0, 1
/* 804B0570  98 19 14 C0 */	stb r0, 0x14c0(r25)
/* 804B0574  48 00 00 50 */	b lbl_804B05C4
lbl_804B0578:
/* 804B0578  38 00 00 00 */	li r0, 0
/* 804B057C  98 19 14 C0 */	stb r0, 0x14c0(r25)
/* 804B0580  48 00 00 44 */	b lbl_804B05C4
lbl_804B0584:
/* 804B0584  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B0588  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B058C  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804B0590  56 E0 0D FC */	rlwinm r0, r23, 1, 0x17, 0x1e
/* 804B0594  38 9C 00 20 */	addi r4, r28, 0x20
/* 804B0598  7C 84 02 2E */	lhzx r4, r4, r0
/* 804B059C  4B B8 44 68 */	b getEventReg__11dSv_event_cCFUs
/* 804B05A0  57 04 06 3E */	clrlwi r4, r24, 0x18
/* 804B05A4  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 804B05A8  7C 04 00 40 */	cmplw r4, r0
/* 804B05AC  40 81 00 10 */	ble lbl_804B05BC
/* 804B05B0  38 00 00 01 */	li r0, 1
/* 804B05B4  98 19 14 C0 */	stb r0, 0x14c0(r25)
/* 804B05B8  48 00 00 0C */	b lbl_804B05C4
lbl_804B05BC:
/* 804B05BC  38 00 00 00 */	li r0, 0
/* 804B05C0  98 19 14 C0 */	stb r0, 0x14c0(r25)
lbl_804B05C4:
/* 804B05C4  A8 19 13 B6 */	lha r0, 0x13b6(r25)
/* 804B05C8  2C 00 00 28 */	cmpwi r0, 0x28
/* 804B05CC  40 82 00 C0 */	bne lbl_804B068C
/* 804B05D0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B05D4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B05D8  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804B05DC  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804B05E0  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804B05E4  A0 84 03 A6 */	lhz r4, 0x3a6(r4)
/* 804B05E8  4B B8 43 D4 */	b isEventBit__11dSv_event_cCFUs
/* 804B05EC  2C 03 00 00 */	cmpwi r3, 0
/* 804B05F0  40 82 00 24 */	bne lbl_804B0614
/* 804B05F4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B05F8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B05FC  80 63 00 00 */	lwz r3, 0(r3)
/* 804B0600  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B0604  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000044@ha */
/* 804B0608  38 84 00 44 */	addi r4, r4, 0x0044 /* 0x01000044@l */
/* 804B060C  4B DF EE 90 */	b subBgmStart__8Z2SeqMgrFUl
/* 804B0610  48 00 01 1C */	b lbl_804B072C
lbl_804B0614:
/* 804B0614  56 E0 06 3E */	clrlwi r0, r23, 0x18
/* 804B0618  28 00 00 03 */	cmplwi r0, 3
/* 804B061C  40 82 00 24 */	bne lbl_804B0640
/* 804B0620  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B0624  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B0628  80 63 00 00 */	lwz r3, 0(r3)
/* 804B062C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B0630  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000046@ha */
/* 804B0634  38 84 00 46 */	addi r4, r4, 0x0046 /* 0x01000046@l */
/* 804B0638  4B DF EE 64 */	b subBgmStart__8Z2SeqMgrFUl
/* 804B063C  48 00 00 F0 */	b lbl_804B072C
lbl_804B0640:
/* 804B0640  88 19 14 C0 */	lbz r0, 0x14c0(r25)
/* 804B0644  28 00 00 00 */	cmplwi r0, 0
/* 804B0648  41 82 00 24 */	beq lbl_804B066C
/* 804B064C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B0650  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B0654  80 63 00 00 */	lwz r3, 0(r3)
/* 804B0658  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B065C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000044@ha */
/* 804B0660  38 84 00 44 */	addi r4, r4, 0x0044 /* 0x01000044@l */
/* 804B0664  4B DF EE 38 */	b subBgmStart__8Z2SeqMgrFUl
/* 804B0668  48 00 00 C4 */	b lbl_804B072C
lbl_804B066C:
/* 804B066C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804B0670  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804B0674  80 63 00 00 */	lwz r3, 0(r3)
/* 804B0678  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 804B067C  3C 80 01 00 */	lis r4, 0x0100 /* 0x01000045@ha */
/* 804B0680  38 84 00 45 */	addi r4, r4, 0x0045 /* 0x01000045@l */
/* 804B0684  4B DF EE 18 */	b subBgmStart__8Z2SeqMgrFUl
/* 804B0688  48 00 00 A4 */	b lbl_804B072C
lbl_804B068C:
/* 804B068C  2C 00 00 50 */	cmpwi r0, 0x50
/* 804B0690  40 82 00 9C */	bne lbl_804B072C
/* 804B0694  3B 40 00 01 */	li r26, 1
/* 804B0698  88 19 14 C0 */	lbz r0, 0x14c0(r25)
/* 804B069C  28 00 00 00 */	cmplwi r0, 0
/* 804B06A0  41 82 00 44 */	beq lbl_804B06E4
/* 804B06A4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B06A8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B06AC  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804B06B0  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804B06B4  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804B06B8  A0 84 03 A6 */	lhz r4, 0x3a6(r4)
/* 804B06BC  4B B8 43 00 */	b isEventBit__11dSv_event_cCFUs
/* 804B06C0  2C 03 00 00 */	cmpwi r3, 0
/* 804B06C4  40 82 00 0C */	bne lbl_804B06D0
/* 804B06C8  3B 40 00 02 */	li r26, 2
/* 804B06CC  48 00 00 28 */	b lbl_804B06F4
lbl_804B06D0:
/* 804B06D0  56 E0 06 3E */	clrlwi r0, r23, 0x18
/* 804B06D4  28 00 00 03 */	cmplwi r0, 3
/* 804B06D8  41 82 00 1C */	beq lbl_804B06F4
/* 804B06DC  3B 40 00 02 */	li r26, 2
/* 804B06E0  48 00 00 14 */	b lbl_804B06F4
lbl_804B06E4:
/* 804B06E4  56 E0 06 3E */	clrlwi r0, r23, 0x18
/* 804B06E8  28 00 00 03 */	cmplwi r0, 3
/* 804B06EC  40 82 00 08 */	bne lbl_804B06F4
/* 804B06F0  3B 40 00 03 */	li r26, 3
lbl_804B06F4:
/* 804B06F4  56 E0 06 3E */	clrlwi r0, r23, 0x18
/* 804B06F8  28 00 00 01 */	cmplwi r0, 1
/* 804B06FC  40 82 00 08 */	bne lbl_804B0704
/* 804B0700  3B 40 00 02 */	li r26, 2
lbl_804B0704:
/* 804B0704  80 7B 00 40 */	lwz r3, 0x40(r27)
/* 804B0708  28 03 00 00 */	cmplwi r3, 0
/* 804B070C  41 82 00 18 */	beq lbl_804B0724
/* 804B0710  57 40 06 3E */	clrlwi r0, r26, 0x18
/* 804B0714  28 00 00 02 */	cmplwi r0, 2
/* 804B0718  40 82 00 0C */	bne lbl_804B0724
/* 804B071C  38 00 00 0A */	li r0, 0xa
/* 804B0720  B0 03 06 A4 */	sth r0, 0x6a4(r3)
lbl_804B0724:
/* 804B0724  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804B0728  9B 43 2F C8 */	stb r26, 0x2fc8(r3)
lbl_804B072C:
/* 804B072C  A8 19 13 B6 */	lha r0, 0x13b6(r25)
/* 804B0730  2C 00 00 3C */	cmpwi r0, 0x3c
/* 804B0734  41 80 02 F0 */	blt lbl_804B0A24
/* 804B0738  88 19 14 6D */	lbz r0, 0x146d(r25)
/* 804B073C  7C 00 07 75 */	extsb. r0, r0
/* 804B0740  40 82 01 88 */	bne lbl_804B08C8
/* 804B0744  3C 60 80 45 */	lis r3, struct_80450C98+0x2@ha
/* 804B0748  38 83 0C 9A */	addi r4, r3, struct_80450C98+0x2@l
/* 804B074C  88 64 00 00 */	lbz r3, 0(r4)
/* 804B0750  38 03 00 01 */	addi r0, r3, 1
/* 804B0754  98 04 00 00 */	stb r0, 0(r4)
/* 804B0758  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804B075C  28 00 00 C8 */	cmplwi r0, 0xc8
/* 804B0760  40 81 00 0C */	ble lbl_804B076C
/* 804B0764  38 00 00 C8 */	li r0, 0xc8
/* 804B0768  98 04 00 00 */	stb r0, 0(r4)
lbl_804B076C:
/* 804B076C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B0770  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B0774  3A C3 07 F0 */	addi r22, r3, 0x7f0
/* 804B0778  7E C3 B3 78 */	mr r3, r22
/* 804B077C  3C 80 80 3A */	lis r4, saveBitLabels__16dSv_event_flag_c@ha
/* 804B0780  38 84 72 88 */	addi r4, r4, saveBitLabels__16dSv_event_flag_c@l
/* 804B0784  A0 84 03 A6 */	lhz r4, 0x3a6(r4)
/* 804B0788  4B B8 42 04 */	b onEventBit__11dSv_event_cFUs
/* 804B078C  7E C3 B3 78 */	mr r3, r22
/* 804B0790  56 FA 0D FC */	rlwinm r26, r23, 1, 0x17, 0x1e
/* 804B0794  3A BC 00 20 */	addi r21, r28, 0x20
/* 804B0798  7C 95 D2 2E */	lhzx r4, r21, r26
/* 804B079C  4B B8 42 68 */	b getEventReg__11dSv_event_cCFUs
/* 804B07A0  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804B07A4  40 82 00 40 */	bne lbl_804B07E4
/* 804B07A8  7E C3 B3 78 */	mr r3, r22
/* 804B07AC  7C 95 D2 2E */	lhzx r4, r21, r26
/* 804B07B0  38 A0 00 01 */	li r5, 1
/* 804B07B4  4B B8 42 2C */	b setEventReg__11dSv_event_cFUsUc
/* 804B07B8  80 1B 00 40 */	lwz r0, 0x40(r27)
/* 804B07BC  28 00 00 00 */	cmplwi r0, 0
/* 804B07C0  41 82 00 14 */	beq lbl_804B07D4
/* 804B07C4  38 7C 00 C0 */	addi r3, r28, 0xc0
/* 804B07C8  7C 03 D2 2E */	lhzx r0, r3, r26
/* 804B07CC  B0 19 14 C4 */	sth r0, 0x14c4(r25)
/* 804B07D0  48 00 00 74 */	b lbl_804B0844
lbl_804B07D4:
/* 804B07D4  38 7C 00 D8 */	addi r3, r28, 0xd8
/* 804B07D8  7C 03 D2 2E */	lhzx r0, r3, r26
/* 804B07DC  B0 19 14 C4 */	sth r0, 0x14c4(r25)
/* 804B07E0  48 00 00 64 */	b lbl_804B0844
lbl_804B07E4:
/* 804B07E4  88 19 14 C0 */	lbz r0, 0x14c0(r25)
/* 804B07E8  28 00 00 00 */	cmplwi r0, 0
/* 804B07EC  41 82 00 30 */	beq lbl_804B081C
/* 804B07F0  80 1B 00 40 */	lwz r0, 0x40(r27)
/* 804B07F4  28 00 00 00 */	cmplwi r0, 0
/* 804B07F8  41 82 00 14 */	beq lbl_804B080C
/* 804B07FC  38 7C 00 C8 */	addi r3, r28, 0xc8
/* 804B0800  7C 03 D2 2E */	lhzx r0, r3, r26
/* 804B0804  B0 19 14 C4 */	sth r0, 0x14c4(r25)
/* 804B0808  48 00 00 3C */	b lbl_804B0844
lbl_804B080C:
/* 804B080C  38 7C 00 E0 */	addi r3, r28, 0xe0
/* 804B0810  7C 03 D2 2E */	lhzx r0, r3, r26
/* 804B0814  B0 19 14 C4 */	sth r0, 0x14c4(r25)
/* 804B0818  48 00 00 2C */	b lbl_804B0844
lbl_804B081C:
/* 804B081C  80 1B 00 40 */	lwz r0, 0x40(r27)
/* 804B0820  28 00 00 00 */	cmplwi r0, 0
/* 804B0824  41 82 00 14 */	beq lbl_804B0838
/* 804B0828  38 7C 00 D0 */	addi r3, r28, 0xd0
/* 804B082C  7C 03 D2 2E */	lhzx r0, r3, r26
/* 804B0830  B0 19 14 C4 */	sth r0, 0x14c4(r25)
/* 804B0834  48 00 00 10 */	b lbl_804B0844
lbl_804B0838:
/* 804B0838  38 7C 00 E8 */	addi r3, r28, 0xe8
/* 804B083C  7C 03 D2 2E */	lhzx r0, r3, r26
/* 804B0840  B0 19 14 C4 */	sth r0, 0x14c4(r25)
lbl_804B0844:
/* 804B0844  88 1B 00 44 */	lbz r0, 0x44(r27)
/* 804B0848  28 00 00 02 */	cmplwi r0, 2
/* 804B084C  40 82 00 4C */	bne lbl_804B0898
/* 804B0850  7F 00 07 34 */	extsh r0, r24
/* 804B0854  C8 3D 00 A0 */	lfd f1, 0xa0(r29)
/* 804B0858  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804B085C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804B0860  3C 00 43 30 */	lis r0, 0x4330
/* 804B0864  90 01 00 30 */	stw r0, 0x30(r1)
/* 804B0868  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804B086C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804B0870  C0 1D 01 D4 */	lfs f0, 0x1d4(r29)
/* 804B0874  EC 01 00 24 */	fdivs f0, f1, f0
/* 804B0878  FC 00 00 1E */	fctiwz f0, f0
/* 804B087C  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 804B0880  80 01 00 2C */	lwz r0, 0x2c(r1)
/* 804B0884  54 00 06 3E */	clrlwi r0, r0, 0x18
/* 804B0888  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B088C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B0890  90 03 5E 0C */	stw r0, 0x5e0c(r3)
/* 804B0894  48 00 00 14 */	b lbl_804B08A8
lbl_804B0898:
/* 804B0898  7F 00 07 34 */	extsh r0, r24
/* 804B089C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B08A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B08A4  90 03 5E 0C */	stw r0, 0x5e0c(r3)
lbl_804B08A8:
/* 804B08A8  38 79 14 74 */	addi r3, r25, 0x1474
/* 804B08AC  7F 24 CB 78 */	mr r4, r25
/* 804B08B0  A0 B9 14 C4 */	lhz r5, 0x14c4(r25)
/* 804B08B4  38 C0 00 00 */	li r6, 0
/* 804B08B8  38 E0 00 00 */	li r7, 0
/* 804B08BC  4B D9 96 D4 */	b init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 804B08C0  38 00 00 01 */	li r0, 1
/* 804B08C4  98 19 14 6D */	stb r0, 0x146d(r25)
lbl_804B08C8:
/* 804B08C8  88 19 14 6D */	lbz r0, 0x146d(r25)
/* 804B08CC  2C 00 00 01 */	cmpwi r0, 1
/* 804B08D0  40 82 01 54 */	bne lbl_804B0A24
/* 804B08D4  38 79 14 74 */	addi r3, r25, 0x1474
/* 804B08D8  7F 24 CB 78 */	mr r4, r25
/* 804B08DC  38 A0 00 00 */	li r5, 0
/* 804B08E0  38 C0 00 00 */	li r6, 0
/* 804B08E4  4B D9 99 F4 */	b doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 804B08E8  2C 03 00 00 */	cmpwi r3, 0
/* 804B08EC  41 82 01 38 */	beq lbl_804B0A24
/* 804B08F0  38 00 00 02 */	li r0, 2
/* 804B08F4  98 19 14 6D */	stb r0, 0x146d(r25)
/* 804B08F8  3B 40 00 00 */	li r26, 0
/* 804B08FC  88 19 14 C0 */	lbz r0, 0x14c0(r25)
/* 804B0900  28 00 00 00 */	cmplwi r0, 0
/* 804B0904  41 82 00 E4 */	beq lbl_804B09E8
/* 804B0908  38 00 00 01 */	li r0, 1
/* 804B090C  3C 60 80 45 */	lis r3, struct_80450C98+0x3@ha
/* 804B0910  98 03 0C 9B */	stb r0, struct_80450C98+0x3@l(r3)
/* 804B0914  4B D8 7B 2C */	b getSelectCursorPos__12dMsgObject_cFv
/* 804B0918  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804B091C  40 82 00 CC */	bne lbl_804B09E8
/* 804B0920  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B0924  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B0928  38 63 07 F0 */	addi r3, r3, 0x7f0
/* 804B092C  56 E0 0D FC */	rlwinm r0, r23, 1, 0x17, 0x1e
/* 804B0930  38 9C 00 20 */	addi r4, r28, 0x20
/* 804B0934  7C 84 02 2E */	lhzx r4, r4, r0
/* 804B0938  57 05 06 3E */	clrlwi r5, r24, 0x18
/* 804B093C  4B B8 40 A4 */	b setEventReg__11dSv_event_cFUsUc
/* 804B0940  3B 40 00 01 */	li r26, 1
/* 804B0944  38 00 00 01 */	li r0, 1
/* 804B0948  B0 19 05 62 */	sth r0, 0x562(r25)
/* 804B094C  38 00 FF FF */	li r0, -1
/* 804B0950  90 19 10 AC */	stw r0, 0x10ac(r25)
/* 804B0954  38 00 00 02 */	li r0, 2
/* 804B0958  B0 19 13 B4 */	sth r0, 0x13b4(r25)
/* 804B095C  38 00 00 14 */	li r0, 0x14
/* 804B0960  B0 19 13 B6 */	sth r0, 0x13b6(r25)
/* 804B0964  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804B0968  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 804B096C  B0 19 14 18 */	sth r0, 0x1418(r25)
/* 804B0970  C0 1D 00 58 */	lfs f0, 0x58(r29)
/* 804B0974  D0 19 14 10 */	stfs f0, 0x1410(r25)
/* 804B0978  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804B097C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804B0980  88 03 5D B0 */	lbz r0, 0x5db0(r3)
/* 804B0984  7C 00 07 74 */	extsb r0, r0
/* 804B0988  1C 00 00 38 */	mulli r0, r0, 0x38
/* 804B098C  7C 63 02 14 */	add r3, r3, r0
/* 804B0990  80 63 5D 74 */	lwz r3, 0x5d74(r3)
/* 804B0994  38 63 02 48 */	addi r3, r3, 0x248
/* 804B0998  38 80 00 01 */	li r4, 1
/* 804B099C  4B CB 26 70 */	b SetTrimSize__9dCamera_cFl
/* 804B09A0  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804B09A4  80 03 05 90 */	lwz r0, 0x590(r3)
/* 804B09A8  60 00 00 01 */	ori r0, r0, 1
/* 804B09AC  90 03 05 90 */	stw r0, 0x590(r3)
/* 804B09B0  38 00 00 02 */	li r0, 2
/* 804B09B4  3C 60 80 45 */	lis r3, struct_80450C98+0x3@ha
/* 804B09B8  9C 03 0C 9B */	stbu r0, struct_80450C98+0x3@l(r3)
/* 804B09BC  56 E0 06 3E */	clrlwi r0, r23, 0x18
/* 804B09C0  28 00 00 01 */	cmplwi r0, 1
/* 804B09C4  40 82 00 24 */	bne lbl_804B09E8
/* 804B09C8  7F 00 07 34 */	extsh r0, r24
/* 804B09CC  2C 00 00 48 */	cmpwi r0, 0x48
/* 804B09D0  41 80 00 10 */	blt lbl_804B09E0
/* 804B09D4  38 00 00 04 */	li r0, 4
/* 804B09D8  98 03 00 00 */	stb r0, 0(r3)
/* 804B09DC  48 00 00 0C */	b lbl_804B09E8
lbl_804B09E0:
/* 804B09E0  38 00 00 03 */	li r0, 3
/* 804B09E4  98 03 00 00 */	stb r0, 0(r3)
lbl_804B09E8:
/* 804B09E8  2C 1A 00 00 */	cmpwi r26, 0
/* 804B09EC  40 82 00 30 */	bne lbl_804B0A1C
/* 804B09F0  A0 19 14 C4 */	lhz r0, 0x14c4(r25)
/* 804B09F4  28 00 02 D1 */	cmplwi r0, 0x2d1
/* 804B09F8  41 82 00 0C */	beq lbl_804B0A04
/* 804B09FC  28 00 02 D5 */	cmplwi r0, 0x2d5
/* 804B0A00  40 82 00 10 */	bne lbl_804B0A10
lbl_804B0A04:
/* 804B0A04  38 00 00 01 */	li r0, 1
/* 804B0A08  B0 19 14 C2 */	sth r0, 0x14c2(r25)
/* 804B0A0C  48 00 00 18 */	b lbl_804B0A24
lbl_804B0A10:
/* 804B0A10  38 00 00 01 */	li r0, 1
/* 804B0A14  B0 1E 05 62 */	sth r0, 0x562(r30)
/* 804B0A18  48 00 00 0C */	b lbl_804B0A24
lbl_804B0A1C:
/* 804B0A1C  38 00 00 02 */	li r0, 2
/* 804B0A20  B0 1E 05 62 */	sth r0, 0x562(r30)
lbl_804B0A24:
/* 804B0A24  A8 19 05 62 */	lha r0, 0x562(r25)
/* 804B0A28  2C 00 00 00 */	cmpwi r0, 0
/* 804B0A2C  41 82 00 4C */	beq lbl_804B0A78
/* 804B0A30  38 00 00 01 */	li r0, 1
/* 804B0A34  B0 19 0F 7E */	sth r0, 0xf7e(r25)
/* 804B0A38  C0 1D 00 9C */	lfs f0, 0x9c(r29)
/* 804B0A3C  D0 19 0F 5C */	stfs f0, 0xf5c(r25)
/* 804B0A40  38 60 00 00 */	li r3, 0
/* 804B0A44  98 79 10 A5 */	stb r3, 0x10a5(r25)
/* 804B0A48  38 00 00 14 */	li r0, 0x14
/* 804B0A4C  B0 19 05 7E */	sth r0, 0x57e(r25)
/* 804B0A50  B0 79 04 DC */	sth r3, 0x4dc(r25)
/* 804B0A54  B0 79 04 DE */	sth r3, 0x4de(r25)
/* 804B0A58  B0 79 04 E0 */	sth r3, 0x4e0(r25)
/* 804B0A5C  B0 79 10 00 */	sth r3, 0x1000(r25)
/* 804B0A60  B0 79 0F FC */	sth r3, 0xffc(r25)
/* 804B0A64  80 9F 5D B4 */	lwz r4, 0x5db4(r31)
/* 804B0A68  98 64 2F C8 */	stb r3, 0x2fc8(r4)
/* 804B0A6C  80 7F 5D B4 */	lwz r3, 0x5db4(r31)
/* 804B0A70  A8 03 04 E6 */	lha r0, 0x4e6(r3)
/* 804B0A74  B0 03 31 1A */	sth r0, 0x311a(r3)
lbl_804B0A78:
/* 804B0A78  39 61 00 70 */	addi r11, r1, 0x70
/* 804B0A7C  4B EB 17 8C */	b _restgpr_21
/* 804B0A80  80 01 00 74 */	lwz r0, 0x74(r1)
/* 804B0A84  7C 08 03 A6 */	mtlr r0
/* 804B0A88  38 21 00 70 */	addi r1, r1, 0x70
/* 804B0A8C  4E 80 00 20 */	blr 
