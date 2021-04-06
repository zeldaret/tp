lbl_8048027C:
/* 8048027C  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 80480280  7C 08 02 A6 */	mflr r0
/* 80480284  90 01 00 54 */	stw r0, 0x54(r1)
/* 80480288  39 61 00 50 */	addi r11, r1, 0x50
/* 8048028C  4B EE 1F 3D */	bl _savegpr_24
/* 80480290  7C 7C 1B 78 */	mr r28, r3
/* 80480294  7C 9D 23 78 */	mr r29, r4
/* 80480298  3C 80 80 48 */	lis r4, cNullVec__6Z2Calc@ha /* 0x80481704@ha */
/* 8048029C  3B C4 17 04 */	addi r30, r4, cNullVec__6Z2Calc@l /* 0x80481704@l */
/* 804802A0  3C 80 80 48 */	lis r4, M_lin5__Q212daObjMovebox5Bgc_c@ha /* 0x80480F28@ha */
/* 804802A4  3B E4 0F 28 */	addi r31, r4, M_lin5__Q212daObjMovebox5Bgc_c@l /* 0x80480F28@l */
/* 804802A8  88 83 09 08 */	lbz r4, 0x908(r3)
/* 804802AC  7C 80 07 75 */	extsb. r0, r4
/* 804802B0  41 82 00 20 */	beq lbl_804802D0
/* 804802B4  38 04 FF FF */	addi r0, r4, -1
/* 804802B8  98 1C 09 08 */	stb r0, 0x908(r28)
/* 804802BC  7C 00 07 75 */	extsb. r0, r0
/* 804802C0  40 82 00 08 */	bne lbl_804802C8
/* 804802C4  4B B9 99 B9 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_804802C8:
/* 804802C8  38 60 00 01 */	li r3, 1
/* 804802CC  48 00 04 44 */	b lbl_80480710
lbl_804802D0:
/* 804802D0  38 7C 05 EC */	addi r3, r28, 0x5ec
/* 804802D4  4B C0 41 8D */	bl ChkTgHit__12dCcD_GObjInfFv
/* 804802D8  28 03 00 00 */	cmplwi r3, 0
/* 804802DC  41 82 01 E0 */	beq lbl_804804BC
/* 804802E0  38 7C 05 EC */	addi r3, r28, 0x5ec
/* 804802E4  4B C0 42 65 */	bl GetTgHitGObj__12dCcD_GObjInfFv
/* 804802E8  7C 79 1B 78 */	mr r25, r3
/* 804802EC  38 7C 05 EC */	addi r3, r28, 0x5ec
/* 804802F0  4B C0 41 71 */	bl ChkTgHit__12dCcD_GObjInfFv
/* 804802F4  28 03 00 00 */	cmplwi r3, 0
/* 804802F8  41 82 01 C4 */	beq lbl_804804BC
/* 804802FC  28 19 00 00 */	cmplwi r25, 0
/* 80480300  41 82 01 BC */	beq lbl_804804BC
/* 80480304  80 79 00 10 */	lwz r3, 0x10(r25)
/* 80480308  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 8048030C  40 82 00 5C */	bne lbl_80480368
/* 80480310  88 19 00 75 */	lbz r0, 0x75(r25)
/* 80480314  28 00 00 01 */	cmplwi r0, 1
/* 80480318  40 82 00 50 */	bne lbl_80480368
/* 8048031C  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80480320  7C 07 07 74 */	extsb r7, r0
/* 80480324  38 00 00 00 */	li r0, 0
/* 80480328  90 01 00 08 */	stw r0, 8(r1)
/* 8048032C  38 60 00 DC */	li r3, 0xdc
/* 80480330  28 1C 00 00 */	cmplwi r28, 0
/* 80480334  41 82 00 0C */	beq lbl_80480340
/* 80480338  80 9C 00 04 */	lwz r4, 4(r28)
/* 8048033C  48 00 00 08 */	b lbl_80480344
lbl_80480340:
/* 80480340  38 80 FF FF */	li r4, -1
lbl_80480344:
/* 80480344  38 A0 00 01 */	li r5, 1
/* 80480348  38 DC 04 D0 */	addi r6, r28, 0x4d0
/* 8048034C  39 1C 04 E4 */	addi r8, r28, 0x4e4
/* 80480350  39 3C 04 EC */	addi r9, r28, 0x4ec
/* 80480354  39 40 FF FF */	li r10, -1
/* 80480358  4B B9 9B 99 */	bl fopAcM_createChild__FsUiUlPC4cXyziPC5csXyzPC4cXyzScPFPv_i
/* 8048035C  38 00 00 05 */	li r0, 5
/* 80480360  98 1C 09 08 */	stb r0, 0x908(r28)
/* 80480364  48 00 01 58 */	b lbl_804804BC
lbl_80480368:
/* 80480368  54 60 06 B5 */	rlwinm. r0, r3, 0, 0x1a, 0x1a
/* 8048036C  40 82 00 0C */	bne lbl_80480378
/* 80480370  54 60 02 53 */	rlwinm. r0, r3, 0, 9, 9
/* 80480374  41 82 01 48 */	beq lbl_804804BC
lbl_80480378:
/* 80480378  38 7C 06 88 */	addi r3, r28, 0x688
/* 8048037C  4B C0 33 0D */	bl GetAc__22dCcD_GAtTgCoCommonBaseFv
/* 80480380  28 03 00 00 */	cmplwi r3, 0
/* 80480384  41 82 01 38 */	beq lbl_804804BC
/* 80480388  A8 03 00 0E */	lha r0, 0xe(r3)
/* 8048038C  2C 00 02 FC */	cmpwi r0, 0x2fc
/* 80480390  41 82 01 2C */	beq lbl_804804BC
/* 80480394  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80480398  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8048039C  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 804803A0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804803A4  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 804803A8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804803AC  3C 60 80 48 */	lis r3, d_a_obj_movebox__stringBase0@ha /* 0x804816A4@ha */
/* 804803B0  38 83 16 A4 */	addi r4, r3, d_a_obj_movebox__stringBase0@l /* 0x804816A4@l */
/* 804803B4  38 64 00 46 */	addi r3, r4, 0x46
/* 804803B8  38 84 00 4D */	addi r4, r4, 0x4d
/* 804803BC  3C A0 80 40 */	lis r5, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804803C0  38 A5 61 C0 */	addi r5, r5, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804803C4  3C A5 00 02 */	addis r5, r5, 2
/* 804803C8  38 C0 00 80 */	li r6, 0x80
/* 804803CC  38 A5 C2 F8 */	addi r5, r5, -15624
/* 804803D0  4B BB BF AD */	bl getRes__14dRes_control_cFPCcPCcP11dRes_info_ci
/* 804803D4  7C 7A 1B 78 */	mr r26, r3
/* 804803D8  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 804803DC  7C 05 07 74 */	extsb r5, r0
/* 804803E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804803E4  3B 23 61 C0 */	addi r25, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804803E8  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 804803EC  3C 80 80 45 */	lis r4, mEcallback__18dPa_modelEcallBack@ha /* 0x80450E90@ha */
/* 804803F0  38 04 0E 90 */	addi r0, r4, mEcallback__18dPa_modelEcallBack@l /* 0x80450E90@l */
/* 804803F4  90 01 00 08 */	stw r0, 8(r1)
/* 804803F8  90 A1 00 0C */	stw r5, 0xc(r1)
/* 804803FC  38 00 00 00 */	li r0, 0
/* 80480400  90 01 00 10 */	stw r0, 0x10(r1)
/* 80480404  90 01 00 14 */	stw r0, 0x14(r1)
/* 80480408  38 1C 04 EC */	addi r0, r28, 0x4ec
/* 8048040C  90 01 00 18 */	stw r0, 0x18(r1)
/* 80480410  38 80 00 00 */	li r4, 0
/* 80480414  3C A0 00 01 */	lis r5, 0x0001 /* 0x000082AF@ha */
/* 80480418  38 A5 82 AF */	addi r5, r5, 0x82AF /* 0x000082AF@l */
/* 8048041C  38 C1 00 24 */	addi r6, r1, 0x24
/* 80480420  38 E0 00 00 */	li r7, 0
/* 80480424  39 00 00 00 */	li r8, 0
/* 80480428  39 20 00 00 */	li r9, 0
/* 8048042C  39 40 00 FF */	li r10, 0xff
/* 80480430  C0 3F 01 D4 */	lfs f1, 0x1d4(r31)
/* 80480434  4B BC C6 5D */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80480438  7F 44 D3 78 */	mr r4, r26
/* 8048043C  38 BC 01 0C */	addi r5, r28, 0x10c
/* 80480440  38 C0 00 03 */	li r6, 3
/* 80480444  38 E0 00 00 */	li r7, 0
/* 80480448  39 00 00 00 */	li r8, 0
/* 8048044C  39 20 00 00 */	li r9, 0
/* 80480450  4B BC A7 B1 */	bl setModel__18dPa_modelEcallBackFP14JPABaseEmitterP12J3DModelDataRC12dKy_tevstr_cUcPvUcUc
/* 80480454  3B 00 00 00 */	li r24, 0
/* 80480458  3B 60 00 00 */	li r27, 0
/* 8048045C  3B 5F 07 70 */	addi r26, r31, 0x770
lbl_80480460:
/* 80480460  80 79 5D 3C */	lwz r3, 0x5d3c(r25)
/* 80480464  38 80 00 00 */	li r4, 0
/* 80480468  90 81 00 08 */	stw r4, 8(r1)
/* 8048046C  38 00 FF FF */	li r0, -1
/* 80480470  90 01 00 0C */	stw r0, 0xc(r1)
/* 80480474  90 81 00 10 */	stw r4, 0x10(r1)
/* 80480478  90 81 00 14 */	stw r4, 0x14(r1)
/* 8048047C  90 81 00 18 */	stw r4, 0x18(r1)
/* 80480480  38 80 00 00 */	li r4, 0
/* 80480484  7C BA DA 2E */	lhzx r5, r26, r27
/* 80480488  38 C1 00 24 */	addi r6, r1, 0x24
/* 8048048C  38 E0 00 00 */	li r7, 0
/* 80480490  39 00 00 00 */	li r8, 0
/* 80480494  39 3C 04 EC */	addi r9, r28, 0x4ec
/* 80480498  39 40 00 FF */	li r10, 0xff
/* 8048049C  C0 3F 01 D4 */	lfs f1, 0x1d4(r31)
/* 804804A0  4B BC C5 F1 */	bl set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 804804A4  3B 18 00 01 */	addi r24, r24, 1
/* 804804A8  2C 18 00 03 */	cmpwi r24, 3
/* 804804AC  3B 7B 00 02 */	addi r27, r27, 2
/* 804804B0  41 80 FF B0 */	blt lbl_80480460
/* 804804B4  7F 83 E3 78 */	mr r3, r28
/* 804804B8  4B B9 97 C5 */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_804804BC:
/* 804804BC  88 1C 09 08 */	lbz r0, 0x908(r28)
/* 804804C0  7C 00 07 75 */	extsb. r0, r0
/* 804804C4  40 82 02 40 */	bne lbl_80480704
/* 804804C8  80 1C 08 A8 */	lwz r0, 0x8a8(r28)
/* 804804CC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804804D0  41 82 00 50 */	beq lbl_80480520
/* 804804D4  88 FC 08 FF */	lbz r7, 0x8ff(r28)
/* 804804D8  80 1C 08 AC */	lwz r0, 0x8ac(r28)
/* 804804DC  1C 80 00 A0 */	mulli r4, r0, 0xa0
/* 804804E0  38 7F 02 40 */	addi r3, r31, 0x240
/* 804804E4  38 04 00 88 */	addi r0, r4, 0x88
/* 804804E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 804804EC  90 01 00 20 */	stw r0, 0x20(r1)
/* 804804F0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha /* 0x80451368@ha */
/* 804804F4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l /* 0x80451368@l */
/* 804804F8  80 63 00 00 */	lwz r3, 0(r3)
/* 804804FC  38 81 00 20 */	addi r4, r1, 0x20
/* 80480500  38 BC 05 38 */	addi r5, r28, 0x538
/* 80480504  38 C0 00 00 */	li r6, 0
/* 80480508  C0 3F 01 D4 */	lfs f1, 0x1d4(r31)
/* 8048050C  FC 40 08 90 */	fmr f2, f1
/* 80480510  C0 7F 07 60 */	lfs f3, 0x760(r31)
/* 80480514  FC 80 18 90 */	fmr f4, f3
/* 80480518  39 00 00 00 */	li r8, 0
/* 8048051C  4B E2 B4 69 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80480520:
/* 80480520  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 80480524  2C 00 00 00 */	cmpwi r0, 0
/* 80480528  40 82 00 64 */	bne lbl_8048058C
/* 8048052C  80 7C 08 A8 */	lwz r3, 0x8a8(r28)
/* 80480530  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 80480534  41 82 00 7C */	beq lbl_804805B0
/* 80480538  A8 1C 08 FA */	lha r0, 0x8fa(r28)
/* 8048053C  2C 00 00 00 */	cmpwi r0, 0
/* 80480540  40 82 00 70 */	bne lbl_804805B0
/* 80480544  54 60 07 FF */	clrlwi. r0, r3, 0x1f
/* 80480548  41 82 00 38 */	beq lbl_80480580
/* 8048054C  80 1C 08 AC */	lwz r0, 0x8ac(r28)
/* 80480550  1C 00 00 A0 */	mulli r0, r0, 0xa0
/* 80480554  38 7F 02 40 */	addi r3, r31, 0x240
/* 80480558  7C 63 02 14 */	add r3, r3, r0
/* 8048055C  C0 23 00 28 */	lfs f1, 0x28(r3)
/* 80480560  C0 03 00 14 */	lfs f0, 0x14(r3)
/* 80480564  EC 21 00 2A */	fadds f1, f1, f0
/* 80480568  C0 1F 01 C0 */	lfs f0, 0x1c0(r31)
/* 8048056C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80480570  40 81 00 40 */	ble lbl_804805B0
/* 80480574  7F 83 E3 78 */	mr r3, r28
/* 80480578  4B FF F7 45 */	bl mode_afl_init__Q212daObjMovebox5Act_cFv
/* 8048057C  48 00 00 34 */	b lbl_804805B0
lbl_80480580:
/* 80480580  7F 83 E3 78 */	mr r3, r28
/* 80480584  4B FF F7 39 */	bl mode_afl_init__Q212daObjMovebox5Act_cFv
/* 80480588  48 00 00 28 */	b lbl_804805B0
lbl_8048058C:
/* 8048058C  2C 00 00 02 */	cmpwi r0, 2
/* 80480590  40 82 00 20 */	bne lbl_804805B0
/* 80480594  80 1C 08 A8 */	lwz r0, 0x8a8(r28)
/* 80480598  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 8048059C  41 82 00 14 */	beq lbl_804805B0
/* 804805A0  7F 83 E3 78 */	mr r3, r28
/* 804805A4  4B FF F0 91 */	bl mode_wait_init__Q212daObjMovebox5Act_cFv
/* 804805A8  38 00 00 14 */	li r0, 0x14
/* 804805AC  B0 1C 08 FA */	sth r0, 0x8fa(r28)
lbl_804805B0:
/* 804805B0  3C 60 80 48 */	lis r3, data_80482C5C@ha /* 0x80482C5C@ha */
/* 804805B4  38 A3 2C 5C */	addi r5, r3, data_80482C5C@l /* 0x80482C5C@l */
/* 804805B8  88 05 00 00 */	lbz r0, 0(r5)
/* 804805BC  7C 00 07 75 */	extsb. r0, r0
/* 804805C0  40 82 00 5C */	bne lbl_8048061C
/* 804805C4  3C 60 80 48 */	lis r3, data_80481748@ha /* 0x80481748@ha */
/* 804805C8  38 83 17 48 */	addi r4, r3, data_80481748@l /* 0x80481748@l */
/* 804805CC  80 7E 00 20 */	lwz r3, 0x20(r30)
/* 804805D0  80 1E 00 24 */	lwz r0, 0x24(r30)
/* 804805D4  90 64 00 00 */	stw r3, 0(r4)
/* 804805D8  90 04 00 04 */	stw r0, 4(r4)
/* 804805DC  80 1E 00 28 */	lwz r0, 0x28(r30)
/* 804805E0  90 04 00 08 */	stw r0, 8(r4)
/* 804805E4  80 7E 00 2C */	lwz r3, 0x2c(r30)
/* 804805E8  80 1E 00 30 */	lwz r0, 0x30(r30)
/* 804805EC  90 64 00 0C */	stw r3, 0xc(r4)
/* 804805F0  90 04 00 10 */	stw r0, 0x10(r4)
/* 804805F4  80 1E 00 34 */	lwz r0, 0x34(r30)
/* 804805F8  90 04 00 14 */	stw r0, 0x14(r4)
/* 804805FC  80 7E 00 38 */	lwz r3, 0x38(r30)
/* 80480600  80 1E 00 3C */	lwz r0, 0x3c(r30)
/* 80480604  90 64 00 18 */	stw r3, 0x18(r4)
/* 80480608  90 04 00 1C */	stw r0, 0x1c(r4)
/* 8048060C  80 1E 00 40 */	lwz r0, 0x40(r30)
/* 80480610  90 04 00 20 */	stw r0, 0x20(r4)
/* 80480614  38 00 00 01 */	li r0, 1
/* 80480618  98 05 00 00 */	stb r0, 0(r5)
lbl_8048061C:
/* 8048061C  7F 83 E3 78 */	mr r3, r28
/* 80480620  80 1C 05 AC */	lwz r0, 0x5ac(r28)
/* 80480624  1C A0 00 0C */	mulli r5, r0, 0xc
/* 80480628  3C 80 80 48 */	lis r4, data_80481748@ha /* 0x80481748@ha */
/* 8048062C  38 04 17 48 */	addi r0, r4, data_80481748@l /* 0x80481748@l */
/* 80480630  7D 80 2A 14 */	add r12, r0, r5
/* 80480634  4B EE 1A 51 */	bl __ptmf_scall
/* 80480638  60 00 00 00 */	nop 
/* 8048063C  38 7C 07 28 */	addi r3, r28, 0x728
/* 80480640  7F 84 E3 78 */	mr r4, r28
/* 80480644  4B FF DA F1 */	bl proc_vertical__Q212daObjMovebox5Bgc_cFPQ212daObjMovebox5Act_c
/* 80480648  80 1C 07 84 */	lwz r0, 0x784(r28)
/* 8048064C  2C 00 00 00 */	cmpwi r0, 0
/* 80480650  41 80 00 38 */	blt lbl_80480688
/* 80480654  88 1C 04 E2 */	lbz r0, 0x4e2(r28)
/* 80480658  98 1C 04 8C */	stb r0, 0x48c(r28)
/* 8048065C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 80480660  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 80480664  38 63 0F 38 */	addi r3, r3, 0xf38
/* 80480668  80 1C 07 84 */	lwz r0, 0x784(r28)
/* 8048066C  1C A0 00 54 */	mulli r5, r0, 0x54
/* 80480670  3C 80 80 48 */	lis r4, M_gnd_work__Q212daObjMovebox5Bgc_c@ha /* 0x804818D4@ha */
/* 80480674  38 04 18 D4 */	addi r0, r4, M_gnd_work__Q212daObjMovebox5Bgc_c@l /* 0x804818D4@l */
/* 80480678  7C 80 2A 14 */	add r4, r0, r5
/* 8048067C  38 84 00 14 */	addi r4, r4, 0x14
/* 80480680  4B BF 45 69 */	bl GetPolyColor__4dBgSFRC13cBgS_PolyInfo
/* 80480684  98 7C 04 8D */	stb r3, 0x48d(r28)
lbl_80480688:
/* 80480688  A8 7C 08 FC */	lha r3, 0x8fc(r28)
/* 8048068C  2C 03 00 00 */	cmpwi r3, 0
/* 80480690  40 81 00 10 */	ble lbl_804806A0
/* 80480694  38 03 FF FF */	addi r0, r3, -1
/* 80480698  B0 1C 08 FC */	sth r0, 0x8fc(r28)
/* 8048069C  48 00 00 34 */	b lbl_804806D0
lbl_804806A0:
/* 804806A0  80 1C 08 A8 */	lwz r0, 0x8a8(r28)
/* 804806A4  54 00 07 7B */	rlwinm. r0, r0, 0, 0x1d, 0x1d
/* 804806A8  41 82 00 28 */	beq lbl_804806D0
/* 804806AC  7F 83 E3 78 */	mr r3, r28
/* 804806B0  4B FF FA 35 */	bl sound_land__Q212daObjMovebox5Act_cFv
/* 804806B4  7F 83 E3 78 */	mr r3, r28
/* 804806B8  4B FF FA F1 */	bl vib_land__Q212daObjMovebox5Act_cFv
/* 804806BC  80 1C 08 A8 */	lwz r0, 0x8a8(r28)
/* 804806C0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804806C4  40 82 00 0C */	bne lbl_804806D0
/* 804806C8  7F 83 E3 78 */	mr r3, r28
/* 804806CC  4B FF FB 31 */	bl eff_land_smoke__Q212daObjMovebox5Act_cFv
lbl_804806D0:
/* 804806D0  7F 83 E3 78 */	mr r3, r28
/* 804806D4  4B FF DF F5 */	bl set_mtx__Q212daObjMovebox5Act_cFv
/* 804806D8  80 1C 08 AC */	lwz r0, 0x8ac(r28)
/* 804806DC  2C 00 00 00 */	cmpwi r0, 0
/* 804806E0  40 82 00 24 */	bne lbl_80480704
/* 804806E4  38 7C 05 EC */	addi r3, r28, 0x5ec
/* 804806E8  38 9C 04 D0 */	addi r4, r28, 0x4d0
/* 804806EC  4B C0 42 D9 */	bl MoveCTg__8dCcD_CylFR4cXyz
/* 804806F0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 804806F4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 804806F8  38 63 23 3C */	addi r3, r3, 0x233c
/* 804806FC  38 9C 05 EC */	addi r4, r28, 0x5ec
/* 80480700  4B DE 44 A9 */	bl Set__4cCcSFP8cCcD_Obj
lbl_80480704:
/* 80480704  38 1C 05 6C */	addi r0, r28, 0x56c
/* 80480708  90 1D 00 00 */	stw r0, 0(r29)
/* 8048070C  38 60 00 01 */	li r3, 1
lbl_80480710:
/* 80480710  39 61 00 50 */	addi r11, r1, 0x50
/* 80480714  4B EE 1B 01 */	bl _restgpr_24
/* 80480718  80 01 00 54 */	lwz r0, 0x54(r1)
/* 8048071C  7C 08 03 A6 */	mtlr r0
/* 80480720  38 21 00 50 */	addi r1, r1, 0x50
/* 80480724  4E 80 00 20 */	blr 
