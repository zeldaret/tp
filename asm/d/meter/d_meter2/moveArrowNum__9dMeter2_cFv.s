lbl_80224354:
/* 80224354  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80224358  7C 08 02 A6 */	mflr r0
/* 8022435C  90 01 00 34 */	stw r0, 0x34(r1)
/* 80224360  39 61 00 30 */	addi r11, r1, 0x30
/* 80224364  48 13 DE 71 */	bl _savegpr_27
/* 80224368  7C 7E 1B 78 */	mr r30, r3
/* 8022436C  3C 60 80 43 */	lis r3, g_mwHIO@ha
/* 80224370  38 63 E8 6C */	addi r3, r3, g_mwHIO@l
/* 80224374  4B FD 5A A9 */	bl getArrowFlag__9dMw_HIO_cFv
/* 80224378  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022437C  40 82 00 18 */	bne lbl_80224394
/* 80224380  3C 60 80 43 */	lis r3, g_meter2_info@ha
/* 80224384  38 63 01 88 */	addi r3, r3, g_meter2_info@l
/* 80224388  88 03 00 DD */	lbz r0, 0xdd(r3)
/* 8022438C  28 00 00 01 */	cmplwi r0, 1
/* 80224390  40 82 00 44 */	bne lbl_802243D4
lbl_80224394:
/* 80224394  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80224398  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 8022439C  88 04 00 EC */	lbz r0, 0xec(r4)
/* 802243A0  88 64 00 F8 */	lbz r3, 0xf8(r4)
/* 802243A4  7C 03 00 40 */	cmplw r3, r0
/* 802243A8  41 82 00 10 */	beq lbl_802243B8
/* 802243AC  A8 04 5D F4 */	lha r0, 0x5df4(r4)
/* 802243B0  7C 00 1A 14 */	add r0, r0, r3
/* 802243B4  B0 04 5D F4 */	sth r0, 0x5df4(r4)
lbl_802243B8:
/* 802243B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802243BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 802243C0  A8 03 5D F4 */	lha r0, 0x5df4(r3)
/* 802243C4  2C 00 00 00 */	cmpwi r0, 0
/* 802243C8  40 80 00 0C */	bge lbl_802243D4
/* 802243CC  38 00 00 00 */	li r0, 0
/* 802243D0  B0 03 5D F4 */	sth r0, 0x5df4(r3)
lbl_802243D4:
/* 802243D4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 802243D8  38 A3 61 C0 */	addi r5, r3, g_dComIfG_gameInfo@l
/* 802243DC  A8 C5 5D F4 */	lha r6, 0x5df4(r5)
/* 802243E0  7C C0 07 35 */	extsh. r0, r6
/* 802243E4  40 82 00 24 */	bne lbl_80224408
/* 802243E8  88 65 00 F8 */	lbz r3, 0xf8(r5)
/* 802243EC  88 1E 01 FB */	lbz r0, 0x1fb(r30)
/* 802243F0  7C 00 18 40 */	cmplw r0, r3
/* 802243F4  40 82 00 14 */	bne lbl_80224408
/* 802243F8  88 65 00 EC */	lbz r3, 0xec(r5)
/* 802243FC  88 1E 01 DA */	lbz r0, 0x1da(r30)
/* 80224400  7C 00 18 40 */	cmplw r0, r3
/* 80224404  41 82 02 64 */	beq lbl_80224668
lbl_80224408:
/* 80224408  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8022440C  38 83 61 C0 */	addi r4, r3, g_dComIfG_gameInfo@l
/* 80224410  88 04 00 EC */	lbz r0, 0xec(r4)
/* 80224414  7C 00 32 14 */	add r0, r0, r6
/* 80224418  7C 06 07 35 */	extsh. r6, r0
/* 8022441C  38 00 00 00 */	li r0, 0
/* 80224420  B0 05 5D F4 */	sth r0, 0x5df4(r5)
/* 80224424  40 80 00 08 */	bge lbl_8022442C
/* 80224428  38 C0 00 00 */	li r6, 0
lbl_8022442C:
/* 8022442C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80224430  3B E3 61 C0 */	addi r31, r3, g_dComIfG_gameInfo@l
/* 80224434  88 7F 00 F8 */	lbz r3, 0xf8(r31)
/* 80224438  7C C0 07 34 */	extsh r0, r6
/* 8022443C  7C 00 18 00 */	cmpw r0, r3
/* 80224440  40 81 00 08 */	ble lbl_80224448
/* 80224444  7C 66 1B 78 */	mr r6, r3
lbl_80224448:
/* 80224448  98 C4 00 EC */	stb r6, 0xec(r4)
/* 8022444C  88 1F 00 F8 */	lbz r0, 0xf8(r31)
/* 80224450  98 1E 01 FB */	stb r0, 0x1fb(r30)
/* 80224454  88 04 00 EC */	lbz r0, 0xec(r4)
/* 80224458  88 7E 01 DA */	lbz r3, 0x1da(r30)
/* 8022445C  7C 03 00 40 */	cmplw r3, r0
/* 80224460  40 80 01 20 */	bge lbl_80224580
/* 80224464  38 03 00 01 */	addi r0, r3, 1
/* 80224468  98 1E 01 DA */	stb r0, 0x1da(r30)
/* 8022446C  88 1E 01 EB */	lbz r0, 0x1eb(r30)
/* 80224470  60 00 00 04 */	ori r0, r0, 4
/* 80224474  98 1E 01 EB */	stb r0, 0x1eb(r30)
/* 80224478  88 BE 01 EB */	lbz r5, 0x1eb(r30)
/* 8022447C  54 A0 F7 FF */	rlwinm. r0, r5, 0x1e, 0x1f, 0x1f
/* 80224480  41 82 01 0C */	beq lbl_8022458C
/* 80224484  88 64 00 EC */	lbz r3, 0xec(r4)
/* 80224488  88 1E 01 DA */	lbz r0, 0x1da(r30)
/* 8022448C  7C 00 18 40 */	cmplw r0, r3
/* 80224490  41 82 00 80 */	beq lbl_80224510
/* 80224494  54 A0 07 FF */	clrlwi. r0, r5, 0x1f
/* 80224498  40 82 00 68 */	bne lbl_80224500
/* 8022449C  7F C3 F3 78 */	mr r3, r30
/* 802244A0  48 00 15 59 */	bl isArrowEquip__9dMeter2_cFv
/* 802244A4  2C 03 00 00 */	cmpwi r3, 0
/* 802244A8  41 82 00 58 */	beq lbl_80224500
/* 802244AC  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 802244B0  4B FF 6C 19 */	bl isButtonVisible__13dMeter2Draw_cFv
/* 802244B4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 802244B8  41 82 00 48 */	beq lbl_80224500
/* 802244BC  88 1E 01 EB */	lbz r0, 0x1eb(r30)
/* 802244C0  60 00 00 01 */	ori r0, r0, 1
/* 802244C4  98 1E 01 EB */	stb r0, 0x1eb(r30)
/* 802244C8  38 00 00 1B */	li r0, 0x1b
/* 802244CC  90 01 00 0C */	stw r0, 0xc(r1)
/* 802244D0  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 802244D4  38 81 00 0C */	addi r4, r1, 0xc
/* 802244D8  38 A0 00 00 */	li r5, 0
/* 802244DC  38 C0 00 00 */	li r6, 0
/* 802244E0  38 E0 00 00 */	li r7, 0
/* 802244E4  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 802244E8  FC 40 08 90 */	fmr f2, f1
/* 802244EC  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 802244F0  FC 80 18 90 */	fmr f4, f3
/* 802244F4  39 00 00 00 */	li r8, 0
/* 802244F8  48 08 74 8D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 802244FC  48 00 00 90 */	b lbl_8022458C
lbl_80224500:
/* 80224500  88 1E 01 EB */	lbz r0, 0x1eb(r30)
/* 80224504  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 80224508  98 1E 01 EB */	stb r0, 0x1eb(r30)
/* 8022450C  48 00 00 80 */	b lbl_8022458C
lbl_80224510:
/* 80224510  7F C3 F3 78 */	mr r3, r30
/* 80224514  48 00 14 E5 */	bl isArrowEquip__9dMeter2_cFv
/* 80224518  2C 03 00 00 */	cmpwi r3, 0
/* 8022451C  41 82 00 48 */	beq lbl_80224564
/* 80224520  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 80224524  4B FF 6B A5 */	bl isButtonVisible__13dMeter2Draw_cFv
/* 80224528  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8022452C  41 82 00 38 */	beq lbl_80224564
/* 80224530  38 00 00 1C */	li r0, 0x1c
/* 80224534  90 01 00 08 */	stw r0, 8(r1)
/* 80224538  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 8022453C  38 81 00 08 */	addi r4, r1, 8
/* 80224540  38 A0 00 00 */	li r5, 0
/* 80224544  38 C0 00 00 */	li r6, 0
/* 80224548  38 E0 00 00 */	li r7, 0
/* 8022454C  C0 22 AF CC */	lfs f1, lit_4663(r2)
/* 80224550  FC 40 08 90 */	fmr f2, f1
/* 80224554  C0 62 AF D0 */	lfs f3, lit_4837(r2)
/* 80224558  FC 80 18 90 */	fmr f4, f3
/* 8022455C  39 00 00 00 */	li r8, 0
/* 80224560  48 08 74 25 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80224564:
/* 80224564  88 1E 01 EB */	lbz r0, 0x1eb(r30)
/* 80224568  54 00 07 B8 */	rlwinm r0, r0, 0, 0x1e, 0x1c
/* 8022456C  98 1E 01 EB */	stb r0, 0x1eb(r30)
/* 80224570  88 1E 01 EB */	lbz r0, 0x1eb(r30)
/* 80224574  54 00 06 3C */	rlwinm r0, r0, 0, 0x18, 0x1e
/* 80224578  98 1E 01 EB */	stb r0, 0x1eb(r30)
/* 8022457C  48 00 00 10 */	b lbl_8022458C
lbl_80224580:
/* 80224580  40 81 00 0C */	ble lbl_8022458C
/* 80224584  38 03 FF FF */	addi r0, r3, -1
/* 80224588  98 1E 01 DA */	stb r0, 0x1da(r30)
lbl_8022458C:
/* 8022458C  3B 80 00 00 */	li r28, 0
/* 80224590  3B A0 00 00 */	li r29, 0
lbl_80224594:
/* 80224594  38 1D 01 D2 */	addi r0, r29, 0x1d2
/* 80224598  7C 1E 00 AE */	lbzx r0, r30, r0
/* 8022459C  28 00 00 43 */	cmplwi r0, 0x43
/* 802245A0  41 82 00 2C */	beq lbl_802245CC
/* 802245A4  28 00 00 53 */	cmplwi r0, 0x53
/* 802245A8  41 82 00 24 */	beq lbl_802245CC
/* 802245AC  28 00 00 54 */	cmplwi r0, 0x54
/* 802245B0  41 82 00 1C */	beq lbl_802245CC
/* 802245B4  28 00 00 55 */	cmplwi r0, 0x55
/* 802245B8  41 82 00 14 */	beq lbl_802245CC
/* 802245BC  28 00 00 56 */	cmplwi r0, 0x56
/* 802245C0  41 82 00 0C */	beq lbl_802245CC
/* 802245C4  28 00 00 5A */	cmplwi r0, 0x5a
/* 802245C8  40 82 00 1C */	bne lbl_802245E4
lbl_802245CC:
/* 802245CC  88 DF 00 F8 */	lbz r6, 0xf8(r31)
/* 802245D0  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 802245D4  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 802245D8  88 BE 01 DA */	lbz r5, 0x1da(r30)
/* 802245DC  4B FF 65 A9 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 802245E0  48 00 00 78 */	b lbl_80224658
lbl_802245E4:
/* 802245E4  28 00 00 4B */	cmplwi r0, 0x4b
/* 802245E8  40 82 00 1C */	bne lbl_80224604
/* 802245EC  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 802245F0  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 802245F4  88 BE 01 DB */	lbz r5, 0x1db(r30)
/* 802245F8  38 C0 00 32 */	li r6, 0x32
/* 802245FC  4B FF 65 89 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
/* 80224600  48 00 00 58 */	b lbl_80224658
lbl_80224604:
/* 80224604  28 00 00 59 */	cmplwi r0, 0x59
/* 80224608  40 82 00 50 */	bne lbl_80224658
/* 8022460C  7F 83 E3 78 */	mr r3, r28
/* 80224610  4B E0 9F B1 */	bl dComIfGp_getSelectItemNum__Fi
/* 80224614  54 7B 06 3E */	clrlwi r27, r3, 0x18
/* 80224618  7F 83 E3 78 */	mr r3, r28
/* 8022461C  4B E0 A0 6D */	bl dComIfGp_getSelectItemMaxNum__Fi
/* 80224620  54 66 06 3E */	clrlwi r6, r3, 0x18
/* 80224624  88 1E 01 DA */	lbz r0, 0x1da(r30)
/* 80224628  7C 1B 00 40 */	cmplw r27, r0
/* 8022462C  40 81 00 08 */	ble lbl_80224634
/* 80224630  7C 1B 03 78 */	mr r27, r0
lbl_80224634:
/* 80224634  88 7F 00 F8 */	lbz r3, 0xf8(r31)
/* 80224638  54 60 06 3E */	clrlwi r0, r3, 0x18
/* 8022463C  7C 06 00 40 */	cmplw r6, r0
/* 80224640  40 80 00 08 */	bge lbl_80224648
/* 80224644  7C 66 1B 78 */	mr r6, r3
lbl_80224648:
/* 80224648  80 7E 01 0C */	lwz r3, 0x10c(r30)
/* 8022464C  57 84 06 3E */	clrlwi r4, r28, 0x18
/* 80224650  7F 65 DB 78 */	mr r5, r27
/* 80224654  4B FF 65 31 */	bl setItemNum__13dMeter2Draw_cFUcUcUc
lbl_80224658:
/* 80224658  3B 9C 00 01 */	addi r28, r28, 1
/* 8022465C  2C 1C 00 02 */	cmpwi r28, 2
/* 80224660  3B BD 00 02 */	addi r29, r29, 2
/* 80224664  41 80 FF 30 */	blt lbl_80224594
lbl_80224668:
/* 80224668  39 61 00 30 */	addi r11, r1, 0x30
/* 8022466C  48 13 DB B5 */	bl _restgpr_27
/* 80224670  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80224674  7C 08 03 A6 */	mtlr r0
/* 80224678  38 21 00 30 */	addi r1, r1, 0x30
/* 8022467C  4E 80 00 20 */	blr 
