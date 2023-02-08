lbl_80D65090:
/* 80D65090  94 21 FF A0 */	stwu r1, -0x60(r1)
/* 80D65094  7C 08 02 A6 */	mflr r0
/* 80D65098  90 01 00 64 */	stw r0, 0x64(r1)
/* 80D6509C  DB E1 00 50 */	stfd f31, 0x50(r1)
/* 80D650A0  F3 E1 00 58 */	psq_st f31, 88(r1), 0, 0 /* qr0 */
/* 80D650A4  DB C1 00 40 */	stfd f30, 0x40(r1)
/* 80D650A8  F3 C1 00 48 */	psq_st f30, 72(r1), 0, 0 /* qr0 */
/* 80D650AC  39 61 00 40 */	addi r11, r1, 0x40
/* 80D650B0  4B 5F D1 21 */	bl _savegpr_26
/* 80D650B4  7C 7D 1B 78 */	mr r29, r3
/* 80D650B8  3C 60 80 D6 */	lis r3, lit_4044@ha /* 0x80D658CC@ha */
/* 80D650BC  3B E3 58 CC */	addi r31, r3, lit_4044@l /* 0x80D658CC@l */
/* 80D650C0  38 00 00 00 */	li r0, 0
/* 80D650C4  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80D650C8  88 7D 05 6D */	lbz r3, 0x56d(r29)
/* 80D650CC  28 03 00 00 */	cmplwi r3, 0
/* 80D650D0  41 82 00 0C */	beq lbl_80D650DC
/* 80D650D4  38 03 FF FF */	addi r0, r3, -1
/* 80D650D8  98 1D 05 6D */	stb r0, 0x56d(r29)
lbl_80D650DC:
/* 80D650DC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D650E0  3B 83 61 C0 */	addi r28, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D650E4  83 DC 5D B4 */	lwz r30, 0x5db4(r28)
/* 80D650E8  3C 60 80 45 */	lis r3, m_midnaActor__9daPy_py_c@ha /* 0x80451018@ha */
/* 80D650EC  83 63 10 18 */	lwz r27, m_midnaActor__9daPy_py_c@l(r3)  /* 0x80451018@l */
/* 80D650F0  28 1B 00 00 */	cmplwi r27, 0
/* 80D650F4  40 82 00 0C */	bne lbl_80D65100
/* 80D650F8  38 60 00 01 */	li r3, 1
/* 80D650FC  48 00 07 58 */	b lbl_80D65854
lbl_80D65100:
/* 80D65100  A0 1D 00 F8 */	lhz r0, 0xf8(r29)
/* 80D65104  28 00 00 01 */	cmplwi r0, 1
/* 80D65108  40 82 02 98 */	bne lbl_80D653A0
/* 80D6510C  3B 40 00 01 */	li r26, 1
/* 80D65110  38 00 00 00 */	li r0, 0
/* 80D65114  88 7B 08 4E */	lbz r3, 0x84e(r27)
/* 80D65118  28 03 00 02 */	cmplwi r3, 2
/* 80D6511C  41 82 00 0C */	beq lbl_80D65128
/* 80D65120  28 03 00 01 */	cmplwi r3, 1
/* 80D65124  40 82 00 08 */	bne lbl_80D6512C
lbl_80D65128:
/* 80D65128  38 00 00 01 */	li r0, 1
lbl_80D6512C:
/* 80D6512C  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D65130  40 82 02 14 */	bne lbl_80D65344
/* 80D65134  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80D65138  2C 00 00 00 */	cmpwi r0, 0
/* 80D6513C  41 82 01 00 */	beq lbl_80D6523C
/* 80D65140  88 9D 05 71 */	lbz r4, 0x571(r29)
/* 80D65144  28 04 00 FF */	cmplwi r4, 0xff
/* 80D65148  41 82 00 20 */	beq lbl_80D65168
/* 80D6514C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D65150  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D65154  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D65158  7C 05 07 74 */	extsb r5, r0
/* 80D6515C  4B 2D 02 05 */	bl isSwitch__10dSv_info_cCFii
/* 80D65160  2C 03 00 00 */	cmpwi r3, 0
/* 80D65164  40 82 00 D8 */	bne lbl_80D6523C
lbl_80D65168:
/* 80D65168  88 1D 05 6F */	lbz r0, 0x56f(r29)
/* 80D6516C  28 00 00 00 */	cmplwi r0, 0
/* 80D65170  40 82 00 68 */	bne lbl_80D651D8
/* 80D65174  38 7D 05 78 */	addi r3, r29, 0x578
/* 80D65178  7F A4 EB 78 */	mr r4, r29
/* 80D6517C  A8 1D 04 E4 */	lha r0, 0x4e4(r29)
/* 80D65180  54 05 04 3E */	clrlwi r5, r0, 0x10
/* 80D65184  38 C0 00 00 */	li r6, 0
/* 80D65188  38 E0 00 00 */	li r7, 0
/* 80D6518C  4B 4E 4E 05 */	bl init__10dMsgFlow_cFP10fopAc_ac_ciiPP10fopAc_ac_c
/* 80D65190  38 00 00 01 */	li r0, 1
/* 80D65194  98 1D 05 6F */	stb r0, 0x56f(r29)
/* 80D65198  38 00 00 10 */	li r0, 0x10
/* 80D6519C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D651A0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D651A4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D651A8  80 63 00 00 */	lwz r3, 0(r3)
/* 80D651AC  38 81 00 14 */	addi r4, r1, 0x14
/* 80D651B0  38 A0 00 00 */	li r5, 0
/* 80D651B4  38 C0 00 00 */	li r6, 0
/* 80D651B8  38 E0 00 00 */	li r7, 0
/* 80D651BC  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D651C0  FC 40 08 90 */	fmr f2, f1
/* 80D651C4  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80D651C8  FC 80 18 90 */	fmr f4, f3
/* 80D651CC  39 00 00 00 */	li r8, 0
/* 80D651D0  4B 54 67 B5 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D651D4  48 00 01 70 */	b lbl_80D65344
lbl_80D651D8:
/* 80D651D8  38 7D 05 78 */	addi r3, r29, 0x578
/* 80D651DC  7F A4 EB 78 */	mr r4, r29
/* 80D651E0  38 A0 00 00 */	li r5, 0
/* 80D651E4  38 C0 00 00 */	li r6, 0
/* 80D651E8  4B 4E 50 F1 */	bl doFlow__10dMsgFlow_cFP10fopAc_ac_cPP10fopAc_ac_ci
/* 80D651EC  2C 03 00 00 */	cmpwi r3, 0
/* 80D651F0  41 82 01 54 */	beq lbl_80D65344
/* 80D651F4  38 00 00 11 */	li r0, 0x11
/* 80D651F8  90 01 00 10 */	stw r0, 0x10(r1)
/* 80D651FC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D65200  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D65204  80 63 00 00 */	lwz r3, 0(r3)
/* 80D65208  38 81 00 10 */	addi r4, r1, 0x10
/* 80D6520C  38 A0 00 00 */	li r5, 0
/* 80D65210  38 C0 00 00 */	li r6, 0
/* 80D65214  38 E0 00 00 */	li r7, 0
/* 80D65218  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D6521C  FC 40 08 90 */	fmr f2, f1
/* 80D65220  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80D65224  FC 80 18 90 */	fmr f4, f3
/* 80D65228  39 00 00 00 */	li r8, 0
/* 80D6522C  4B 54 67 59 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D65230  38 00 00 00 */	li r0, 0
/* 80D65234  B0 1D 04 E4 */	sth r0, 0x4e4(r29)
/* 80D65238  48 00 01 0C */	b lbl_80D65344
lbl_80D6523C:
/* 80D6523C  88 1D 05 70 */	lbz r0, 0x570(r29)
/* 80D65240  98 1D 05 68 */	stb r0, 0x568(r29)
/* 80D65244  38 7B 04 D0 */	addi r3, r27, 0x4d0
/* 80D65248  38 9D 05 38 */	addi r4, r29, 0x538
/* 80D6524C  4B 5E 21 51 */	bl PSVECSquareDistance
/* 80D65250  C0 1F 00 08 */	lfs f0, 8(r31)
/* 80D65254  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D65258  40 81 00 58 */	ble lbl_80D652B0
/* 80D6525C  FC 00 08 34 */	frsqrte f0, f1
/* 80D65260  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80D65264  FC 44 00 32 */	fmul f2, f4, f0
/* 80D65268  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80D6526C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D65270  FC 01 00 32 */	fmul f0, f1, f0
/* 80D65274  FC 03 00 28 */	fsub f0, f3, f0
/* 80D65278  FC 02 00 32 */	fmul f0, f2, f0
/* 80D6527C  FC 44 00 32 */	fmul f2, f4, f0
/* 80D65280  FC 00 00 32 */	fmul f0, f0, f0
/* 80D65284  FC 01 00 32 */	fmul f0, f1, f0
/* 80D65288  FC 03 00 28 */	fsub f0, f3, f0
/* 80D6528C  FC 02 00 32 */	fmul f0, f2, f0
/* 80D65290  FC 44 00 32 */	fmul f2, f4, f0
/* 80D65294  FC 00 00 32 */	fmul f0, f0, f0
/* 80D65298  FC 01 00 32 */	fmul f0, f1, f0
/* 80D6529C  FC 03 00 28 */	fsub f0, f3, f0
/* 80D652A0  FC 02 00 32 */	fmul f0, f2, f0
/* 80D652A4  FC 21 00 32 */	fmul f1, f1, f0
/* 80D652A8  FC 20 08 18 */	frsp f1, f1
/* 80D652AC  48 00 00 88 */	b lbl_80D65334
lbl_80D652B0:
/* 80D652B0  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80D652B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D652B8  40 80 00 10 */	bge lbl_80D652C8
/* 80D652BC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D652C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80D652C4  48 00 00 70 */	b lbl_80D65334
lbl_80D652C8:
/* 80D652C8  D0 21 00 08 */	stfs f1, 8(r1)
/* 80D652CC  80 81 00 08 */	lwz r4, 8(r1)
/* 80D652D0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D652D4  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D652D8  7C 03 00 00 */	cmpw r3, r0
/* 80D652DC  41 82 00 14 */	beq lbl_80D652F0
/* 80D652E0  40 80 00 40 */	bge lbl_80D65320
/* 80D652E4  2C 03 00 00 */	cmpwi r3, 0
/* 80D652E8  41 82 00 20 */	beq lbl_80D65308
/* 80D652EC  48 00 00 34 */	b lbl_80D65320
lbl_80D652F0:
/* 80D652F0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D652F4  41 82 00 0C */	beq lbl_80D65300
/* 80D652F8  38 00 00 01 */	li r0, 1
/* 80D652FC  48 00 00 28 */	b lbl_80D65324
lbl_80D65300:
/* 80D65300  38 00 00 02 */	li r0, 2
/* 80D65304  48 00 00 20 */	b lbl_80D65324
lbl_80D65308:
/* 80D65308  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D6530C  41 82 00 0C */	beq lbl_80D65318
/* 80D65310  38 00 00 05 */	li r0, 5
/* 80D65314  48 00 00 10 */	b lbl_80D65324
lbl_80D65318:
/* 80D65318  38 00 00 03 */	li r0, 3
/* 80D6531C  48 00 00 08 */	b lbl_80D65324
lbl_80D65320:
/* 80D65320  38 00 00 04 */	li r0, 4
lbl_80D65324:
/* 80D65324  2C 00 00 01 */	cmpwi r0, 1
/* 80D65328  40 82 00 0C */	bne lbl_80D65334
/* 80D6532C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80D65330  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_80D65334:
/* 80D65334  C0 1F 00 28 */	lfs f0, 0x28(r31)
/* 80D65338  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D6533C  40 80 00 08 */	bge lbl_80D65344
/* 80D65340  3B 40 00 00 */	li r26, 0
lbl_80D65344:
/* 80D65344  2C 1A 00 00 */	cmpwi r26, 0
/* 80D65348  41 82 00 0C */	beq lbl_80D65354
/* 80D6534C  38 60 00 01 */	li r3, 1
/* 80D65350  48 00 05 04 */	b lbl_80D65854
lbl_80D65354:
/* 80D65354  38 00 00 00 */	li r0, 0
/* 80D65358  98 1D 05 6F */	stb r0, 0x56f(r29)
/* 80D6535C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D65360  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D65364  38 63 4E C8 */	addi r3, r3, 0x4ec8
/* 80D65368  4B 2D D1 01 */	bl reset__14dEvt_control_cFv
/* 80D6536C  38 00 00 00 */	li r0, 0
/* 80D65370  98 1D 05 6C */	stb r0, 0x56c(r29)
/* 80D65374  38 00 00 01 */	li r0, 1
/* 80D65378  98 1D 05 72 */	stb r0, 0x572(r29)
/* 80D6537C  88 9D 05 71 */	lbz r4, 0x571(r29)
/* 80D65380  28 04 00 FF */	cmplwi r4, 0xff
/* 80D65384  41 82 00 84 */	beq lbl_80D65408
/* 80D65388  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D6538C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D65390  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D65394  7C 05 07 74 */	extsb r5, r0
/* 80D65398  4B 2C FE 69 */	bl onSwitch__10dSv_info_cFii
/* 80D6539C  48 00 00 6C */	b lbl_80D65408
lbl_80D653A0:
/* 80D653A0  38 00 00 00 */	li r0, 0
/* 80D653A4  88 7C 4F AD */	lbz r3, 0x4fad(r28)
/* 80D653A8  28 03 00 00 */	cmplwi r3, 0
/* 80D653AC  41 82 00 0C */	beq lbl_80D653B8
/* 80D653B0  28 03 00 02 */	cmplwi r3, 2
/* 80D653B4  40 82 00 08 */	bne lbl_80D653BC
lbl_80D653B8:
/* 80D653B8  38 00 00 01 */	li r0, 1
lbl_80D653BC:
/* 80D653BC  54 00 06 3F */	clrlwi. r0, r0, 0x18
/* 80D653C0  40 82 00 10 */	bne lbl_80D653D0
/* 80D653C4  38 00 00 00 */	li r0, 0
/* 80D653C8  98 1D 05 72 */	stb r0, 0x572(r29)
/* 80D653CC  48 00 00 3C */	b lbl_80D65408
lbl_80D653D0:
/* 80D653D0  80 1B 08 90 */	lwz r0, 0x890(r27)
/* 80D653D4  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 80D653D8  40 82 00 28 */	bne lbl_80D65400
/* 80D653DC  A8 7D 05 74 */	lha r3, 0x574(r29)
/* 80D653E0  38 03 00 01 */	addi r0, r3, 1
/* 80D653E4  B0 1D 05 74 */	sth r0, 0x574(r29)
/* 80D653E8  A8 1D 05 74 */	lha r0, 0x574(r29)
/* 80D653EC  2C 00 00 05 */	cmpwi r0, 5
/* 80D653F0  41 80 00 18 */	blt lbl_80D65408
/* 80D653F4  38 00 00 00 */	li r0, 0
/* 80D653F8  98 1D 05 72 */	stb r0, 0x572(r29)
/* 80D653FC  48 00 00 0C */	b lbl_80D65408
lbl_80D65400:
/* 80D65400  38 00 00 00 */	li r0, 0
/* 80D65404  B0 1D 05 74 */	sth r0, 0x574(r29)
lbl_80D65408:
/* 80D65408  80 7C 5D B4 */	lwz r3, 0x5db4(r28)
/* 80D6540C  80 03 05 74 */	lwz r0, 0x574(r3)
/* 80D65410  54 00 01 8D */	rlwinm. r0, r0, 0, 6, 6
/* 80D65414  41 82 00 64 */	beq lbl_80D65478
/* 80D65418  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D6541C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D65420  3B 63 07 F0 */	addi r27, r3, 0x7f0
/* 80D65424  7F 63 DB 78 */	mr r3, r27
/* 80D65428  38 80 0C 10 */	li r4, 0xc10
/* 80D6542C  4B 2C F5 91 */	bl isEventBit__11dSv_event_cCFUs
/* 80D65430  2C 03 00 00 */	cmpwi r3, 0
/* 80D65434  41 82 00 44 */	beq lbl_80D65478
/* 80D65438  3B 40 00 00 */	li r26, 0
/* 80D6543C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D65440  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D65444  38 63 00 28 */	addi r3, r3, 0x28
/* 80D65448  38 80 00 03 */	li r4, 3
/* 80D6544C  4B 2C D7 A1 */	bl isTransformLV__21dSv_player_status_b_cCFi
/* 80D65450  2C 03 00 00 */	cmpwi r3, 0
/* 80D65454  41 82 00 1C */	beq lbl_80D65470
/* 80D65458  7F 63 DB 78 */	mr r3, r27
/* 80D6545C  38 80 1E 08 */	li r4, 0x1e08
/* 80D65460  4B 2C F5 5D */	bl isEventBit__11dSv_event_cCFUs
/* 80D65464  2C 03 00 00 */	cmpwi r3, 0
/* 80D65468  40 82 00 08 */	bne lbl_80D65470
/* 80D6546C  3B 40 00 01 */	li r26, 1
lbl_80D65470:
/* 80D65470  57 40 06 3F */	clrlwi. r0, r26, 0x18
/* 80D65474  41 82 00 0C */	beq lbl_80D65480
lbl_80D65478:
/* 80D65478  38 60 00 01 */	li r3, 1
/* 80D6547C  48 00 03 D8 */	b lbl_80D65854
lbl_80D65480:
/* 80D65480  88 9D 05 71 */	lbz r4, 0x571(r29)
/* 80D65484  28 04 00 FF */	cmplwi r4, 0xff
/* 80D65488  41 82 00 44 */	beq lbl_80D654CC
/* 80D6548C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D65490  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D65494  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D65498  7C 05 07 74 */	extsb r5, r0
/* 80D6549C  4B 2C FE C5 */	bl isSwitch__10dSv_info_cCFii
/* 80D654A0  2C 03 00 00 */	cmpwi r3, 0
/* 80D654A4  41 82 00 28 */	beq lbl_80D654CC
/* 80D654A8  38 60 00 00 */	li r3, 0
/* 80D654AC  98 7D 05 6C */	stb r3, 0x56c(r29)
/* 80D654B0  88 1D 05 73 */	lbz r0, 0x573(r29)
/* 80D654B4  28 00 00 00 */	cmplwi r0, 0
/* 80D654B8  41 82 00 14 */	beq lbl_80D654CC
/* 80D654BC  98 7D 05 73 */	stb r3, 0x573(r29)
/* 80D654C0  38 00 00 01 */	li r0, 1
/* 80D654C4  98 1D 05 72 */	stb r0, 0x572(r29)
/* 80D654C8  B0 7D 05 74 */	sth r3, 0x574(r29)
lbl_80D654CC:
/* 80D654CC  88 1D 05 6C */	lbz r0, 0x56c(r29)
/* 80D654D0  28 00 00 00 */	cmplwi r0, 0
/* 80D654D4  40 82 00 38 */	bne lbl_80D6550C
/* 80D654D8  88 1D 05 72 */	lbz r0, 0x572(r29)
/* 80D654DC  28 00 00 00 */	cmplwi r0, 0
/* 80D654E0  40 82 00 2C */	bne lbl_80D6550C
/* 80D654E4  88 9D 05 71 */	lbz r4, 0x571(r29)
/* 80D654E8  28 04 00 FF */	cmplwi r4, 0xff
/* 80D654EC  41 82 00 20 */	beq lbl_80D6550C
/* 80D654F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D654F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D654F8  88 1D 04 BA */	lbz r0, 0x4ba(r29)
/* 80D654FC  7C 05 07 74 */	extsb r5, r0
/* 80D65500  4B 2C FE 61 */	bl isSwitch__10dSv_info_cCFii
/* 80D65504  2C 03 00 00 */	cmpwi r3, 0
/* 80D65508  41 82 03 08 */	beq lbl_80D65810
lbl_80D6550C:
/* 80D6550C  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 80D65510  83 83 00 08 */	lwz r28, 8(r3)
/* 80D65514  7F C3 F3 78 */	mr r3, r30
/* 80D65518  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D6551C  81 8C 00 88 */	lwz r12, 0x88(r12)
/* 80D65520  7D 89 03 A6 */	mtctr r12
/* 80D65524  4E 80 04 21 */	bctrl 
/* 80D65528  2C 03 00 00 */	cmpwi r3, 0
/* 80D6552C  40 82 01 40 */	bne lbl_80D6566C
/* 80D65530  7F C3 F3 78 */	mr r3, r30
/* 80D65534  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D65538  81 8C 00 84 */	lwz r12, 0x84(r12)
/* 80D6553C  7D 89 03 A6 */	mtctr r12
/* 80D65540  4E 80 04 21 */	bctrl 
/* 80D65544  2C 03 00 00 */	cmpwi r3, 0
/* 80D65548  40 82 00 C8 */	bne lbl_80D65610
/* 80D6554C  3B 40 00 00 */	li r26, 0
/* 80D65550  C3 DF 00 2C */	lfs f30, 0x2c(r31)
/* 80D65554  CB FF 00 38 */	lfd f31, 0x38(r31)
/* 80D65558  3F 60 43 30 */	lis r27, 0x4330
/* 80D6555C  48 00 00 88 */	b lbl_80D655E4
lbl_80D65560:
/* 80D65560  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80D65564  38 9C 00 04 */	addi r4, r28, 4
/* 80D65568  4B 5E 1E 35 */	bl PSVECSquareDistance
/* 80D6556C  88 1C 00 00 */	lbz r0, 0(r28)
/* 80D65570  7C 00 01 D6 */	mullw r0, r0, r0
/* 80D65574  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 80D65578  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D6557C  93 61 00 18 */	stw r27, 0x18(r1)
/* 80D65580  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80D65584  EC 00 F8 28 */	fsubs f0, f0, f31
/* 80D65588  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80D6558C  EC 1E 00 32 */	fmuls f0, f30, f0
/* 80D65590  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D65594  40 80 00 48 */	bge lbl_80D655DC
/* 80D65598  9B 5D 05 6A */	stb r26, 0x56a(r29)
/* 80D6559C  2C 1A 00 00 */	cmpwi r26, 0
/* 80D655A0  40 82 00 10 */	bne lbl_80D655B0
/* 80D655A4  38 00 00 01 */	li r0, 1
/* 80D655A8  98 1D 05 68 */	stb r0, 0x568(r29)
/* 80D655AC  48 00 00 48 */	b lbl_80D655F4
lbl_80D655B0:
/* 80D655B0  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 80D655B4  A0 63 00 00 */	lhz r3, 0(r3)
/* 80D655B8  38 03 FF FF */	addi r0, r3, -1
/* 80D655BC  7C 1A 00 00 */	cmpw r26, r0
/* 80D655C0  40 82 00 10 */	bne lbl_80D655D0
/* 80D655C4  38 1A FF FF */	addi r0, r26, -1
/* 80D655C8  98 1D 05 68 */	stb r0, 0x568(r29)
/* 80D655CC  48 00 00 28 */	b lbl_80D655F4
lbl_80D655D0:
/* 80D655D0  38 1A 00 01 */	addi r0, r26, 1
/* 80D655D4  98 1D 05 68 */	stb r0, 0x568(r29)
/* 80D655D8  48 00 00 1C */	b lbl_80D655F4
lbl_80D655DC:
/* 80D655DC  3B 5A 00 01 */	addi r26, r26, 1
/* 80D655E0  3B 9C 00 10 */	addi r28, r28, 0x10
lbl_80D655E4:
/* 80D655E4  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 80D655E8  A0 03 00 00 */	lhz r0, 0(r3)
/* 80D655EC  7C 1A 00 00 */	cmpw r26, r0
/* 80D655F0  41 80 FF 70 */	blt lbl_80D65560
lbl_80D655F4:
/* 80D655F4  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 80D655F8  A0 03 00 00 */	lhz r0, 0(r3)
/* 80D655FC  7C 1A 00 00 */	cmpw r26, r0
/* 80D65600  40 82 00 6C */	bne lbl_80D6566C
/* 80D65604  38 00 FF FF */	li r0, -1
/* 80D65608  98 1D 05 68 */	stb r0, 0x568(r29)
/* 80D6560C  48 00 00 60 */	b lbl_80D6566C
lbl_80D65610:
/* 80D65610  88 1D 05 6B */	lbz r0, 0x56b(r29)
/* 80D65614  28 00 00 00 */	cmplwi r0, 0
/* 80D65618  41 82 00 54 */	beq lbl_80D6566C
/* 80D6561C  38 00 00 00 */	li r0, 0
/* 80D65620  98 1D 05 6B */	stb r0, 0x56b(r29)
/* 80D65624  88 9D 05 6A */	lbz r4, 0x56a(r29)
/* 80D65628  88 7D 05 68 */	lbz r3, 0x568(r29)
/* 80D6562C  7C 60 07 74 */	extsb r0, r3
/* 80D65630  7C 04 00 00 */	cmpw r4, r0
/* 80D65634  40 80 00 30 */	bge lbl_80D65664
/* 80D65638  38 03 00 01 */	addi r0, r3, 1
/* 80D6563C  98 1D 05 68 */	stb r0, 0x568(r29)
/* 80D65640  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 80D65644  A0 63 00 00 */	lhz r3, 0(r3)
/* 80D65648  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 80D6564C  7C 00 07 74 */	extsb r0, r0
/* 80D65650  7C 03 00 00 */	cmpw r3, r0
/* 80D65654  40 82 00 18 */	bne lbl_80D6566C
/* 80D65658  38 00 FF FF */	li r0, -1
/* 80D6565C  98 1D 05 68 */	stb r0, 0x568(r29)
/* 80D65660  48 00 00 0C */	b lbl_80D6566C
lbl_80D65664:
/* 80D65664  38 03 FF FF */	addi r0, r3, -1
/* 80D65668  98 1D 05 68 */	stb r0, 0x568(r29)
lbl_80D6566C:
/* 80D6566C  88 9D 05 68 */	lbz r4, 0x568(r29)
/* 80D65670  7C 80 07 75 */	extsb. r0, r4
/* 80D65674  41 80 01 90 */	blt lbl_80D65804
/* 80D65678  80 7D 05 C4 */	lwz r3, 0x5c4(r29)
/* 80D6567C  80 63 00 08 */	lwz r3, 8(r3)
/* 80D65680  7C 80 07 74 */	extsb r0, r4
/* 80D65684  54 00 20 36 */	slwi r0, r0, 4
/* 80D65688  7C 63 02 14 */	add r3, r3, r0
/* 80D6568C  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80D65690  C0 23 00 08 */	lfs f1, 8(r3)
/* 80D65694  C0 03 00 04 */	lfs f0, 4(r3)
/* 80D65698  D0 1D 05 38 */	stfs f0, 0x538(r29)
/* 80D6569C  D0 3D 05 3C */	stfs f1, 0x53c(r29)
/* 80D656A0  D0 5D 05 40 */	stfs f2, 0x540(r29)
/* 80D656A4  C0 1D 05 38 */	lfs f0, 0x538(r29)
/* 80D656A8  D0 1D 05 50 */	stfs f0, 0x550(r29)
/* 80D656AC  C0 1D 05 3C */	lfs f0, 0x53c(r29)
/* 80D656B0  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80D656B4  C0 1D 05 40 */	lfs f0, 0x540(r29)
/* 80D656B8  D0 1D 05 58 */	stfs f0, 0x558(r29)
/* 80D656BC  C0 3D 05 54 */	lfs f1, 0x554(r29)
/* 80D656C0  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80D656C4  EC 01 00 2A */	fadds f0, f1, f0
/* 80D656C8  D0 1D 05 54 */	stfs f0, 0x554(r29)
/* 80D656CC  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 80D656D0  88 03 00 03 */	lbz r0, 3(r3)
/* 80D656D4  C8 3F 00 40 */	lfd f1, 0x40(r31)
/* 80D656D8  90 01 00 1C */	stw r0, 0x1c(r1)
/* 80D656DC  3C 00 43 30 */	lis r0, 0x4330
/* 80D656E0  90 01 00 18 */	stw r0, 0x18(r1)
/* 80D656E4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 80D656E8  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D656EC  EC 02 00 32 */	fmuls f0, f2, f0
/* 80D656F0  D0 1D 05 C8 */	stfs f0, 0x5c8(r29)
/* 80D656F4  88 03 00 01 */	lbz r0, 1(r3)
/* 80D656F8  28 00 00 01 */	cmplwi r0, 1
/* 80D656FC  40 82 00 10 */	bne lbl_80D6570C
/* 80D65700  38 00 00 01 */	li r0, 1
/* 80D65704  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
/* 80D65708  48 00 00 0C */	b lbl_80D65714
lbl_80D6570C:
/* 80D6570C  38 00 00 00 */	li r0, 0
/* 80D65710  B0 1D 04 E8 */	sth r0, 0x4e8(r29)
lbl_80D65714:
/* 80D65714  88 1D 05 72 */	lbz r0, 0x572(r29)
/* 80D65718  28 00 00 00 */	cmplwi r0, 0
/* 80D6571C  40 82 00 D8 */	bne lbl_80D657F4
/* 80D65720  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80D65724  3B 43 61 C0 */	addi r26, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80D65728  88 1A 4F AD */	lbz r0, 0x4fad(r26)
/* 80D6572C  28 00 00 00 */	cmplwi r0, 0
/* 80D65730  40 82 00 B0 */	bne lbl_80D657E0
/* 80D65734  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80D65738  60 00 00 01 */	ori r0, r0, 1
/* 80D6573C  B0 1D 00 FA */	sth r0, 0xfa(r29)
/* 80D65740  7F C3 F3 78 */	mr r3, r30
/* 80D65744  81 9E 06 28 */	lwz r12, 0x628(r30)
/* 80D65748  81 8C 00 44 */	lwz r12, 0x44(r12)
/* 80D6574C  7D 89 03 A6 */	mtctr r12
/* 80D65750  4E 80 04 21 */	bctrl 
/* 80D65754  28 03 00 00 */	cmplwi r3, 0
/* 80D65758  40 82 00 88 */	bne lbl_80D657E0
/* 80D6575C  A0 1E 00 FA */	lhz r0, 0xfa(r30)
/* 80D65760  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80D65764  2C 00 00 01 */	cmpwi r0, 1
/* 80D65768  40 82 00 78 */	bne lbl_80D657E0
/* 80D6576C  38 7A 5B 48 */	addi r3, r26, 0x5b48
/* 80D65770  7F A4 EB 78 */	mr r4, r29
/* 80D65774  38 A0 01 FF */	li r5, 0x1ff
/* 80D65778  4B 30 E1 85 */	bl request__10dAttHint_cFP10fopAc_ac_ci
/* 80D6577C  88 1D 05 6E */	lbz r0, 0x56e(r29)
/* 80D65780  28 00 00 00 */	cmplwi r0, 0
/* 80D65784  40 82 00 5C */	bne lbl_80D657E0
/* 80D65788  38 00 00 01 */	li r0, 1
/* 80D6578C  98 1D 05 6E */	stb r0, 0x56e(r29)
/* 80D65790  88 1D 05 6D */	lbz r0, 0x56d(r29)
/* 80D65794  28 00 00 00 */	cmplwi r0, 0
/* 80D65798  40 82 00 40 */	bne lbl_80D657D8
/* 80D6579C  38 00 00 0E */	li r0, 0xe
/* 80D657A0  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D657A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 80D657A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 80D657AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D657B0  38 81 00 0C */	addi r4, r1, 0xc
/* 80D657B4  38 A0 00 00 */	li r5, 0
/* 80D657B8  38 C0 00 00 */	li r6, 0
/* 80D657BC  38 E0 00 00 */	li r7, 0
/* 80D657C0  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80D657C4  FC 40 08 90 */	fmr f2, f1
/* 80D657C8  C0 7F 00 04 */	lfs f3, 4(r31)
/* 80D657CC  FC 80 18 90 */	fmr f4, f3
/* 80D657D0  39 00 00 00 */	li r8, 0
/* 80D657D4  4B 54 61 B1 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D657D8:
/* 80D657D8  38 00 00 3C */	li r0, 0x3c
/* 80D657DC  98 1D 05 6D */	stb r0, 0x56d(r29)
lbl_80D657E0:
/* 80D657E0  88 1D 05 68 */	lbz r0, 0x568(r29)
/* 80D657E4  98 1D 05 70 */	stb r0, 0x570(r29)
/* 80D657E8  38 00 FF FF */	li r0, -1
/* 80D657EC  98 1D 05 68 */	stb r0, 0x568(r29)
/* 80D657F0  48 00 00 30 */	b lbl_80D65820
lbl_80D657F4:
/* 80D657F4  80 1D 05 5C */	lwz r0, 0x55c(r29)
/* 80D657F8  60 00 00 81 */	ori r0, r0, 0x81
/* 80D657FC  90 1D 05 5C */	stw r0, 0x55c(r29)
/* 80D65800  48 00 00 20 */	b lbl_80D65820
lbl_80D65804:
/* 80D65804  38 00 00 00 */	li r0, 0
/* 80D65808  98 1D 05 72 */	stb r0, 0x572(r29)
/* 80D6580C  48 00 00 14 */	b lbl_80D65820
lbl_80D65810:
/* 80D65810  38 00 00 00 */	li r0, 0
/* 80D65814  98 1D 05 72 */	stb r0, 0x572(r29)
/* 80D65818  38 00 FF FF */	li r0, -1
/* 80D6581C  98 1D 05 68 */	stb r0, 0x568(r29)
lbl_80D65820:
/* 80D65820  C0 1D 05 50 */	lfs f0, 0x550(r29)
/* 80D65824  D0 1D 04 D0 */	stfs f0, 0x4d0(r29)
/* 80D65828  C0 1D 05 54 */	lfs f0, 0x554(r29)
/* 80D6582C  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
/* 80D65830  C0 1D 05 58 */	lfs f0, 0x558(r29)
/* 80D65834  D0 1D 04 D8 */	stfs f0, 0x4d8(r29)
/* 80D65838  A0 1D 00 FA */	lhz r0, 0xfa(r29)
/* 80D6583C  54 00 07 FE */	clrlwi r0, r0, 0x1f
/* 80D65840  2C 00 00 01 */	cmpwi r0, 1
/* 80D65844  41 82 00 0C */	beq lbl_80D65850
/* 80D65848  38 00 00 00 */	li r0, 0
/* 80D6584C  98 1D 05 6E */	stb r0, 0x56e(r29)
lbl_80D65850:
/* 80D65850  38 60 00 01 */	li r3, 1
lbl_80D65854:
/* 80D65854  E3 E1 00 58 */	psq_l f31, 88(r1), 0, 0 /* qr0 */
/* 80D65858  CB E1 00 50 */	lfd f31, 0x50(r1)
/* 80D6585C  E3 C1 00 48 */	psq_l f30, 72(r1), 0, 0 /* qr0 */
/* 80D65860  CB C1 00 40 */	lfd f30, 0x40(r1)
/* 80D65864  39 61 00 40 */	addi r11, r1, 0x40
/* 80D65868  4B 5F C9 B5 */	bl _restgpr_26
/* 80D6586C  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80D65870  7C 08 03 A6 */	mtlr r0
/* 80D65874  38 21 00 60 */	addi r1, r1, 0x60
/* 80D65878  4E 80 00 20 */	blr 
