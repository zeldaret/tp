lbl_80D1D8C8:
/* 80D1D8C8  94 21 FF 50 */	stwu r1, -0xb0(r1)
/* 80D1D8CC  7C 08 02 A6 */	mflr r0
/* 80D1D8D0  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 80D1D8D4  DB E1 00 A0 */	stfd f31, 0xa0(r1)
/* 80D1D8D8  F3 E1 00 A8 */	psq_st f31, 168(r1), 0, 0 /* qr0 */
/* 80D1D8DC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80D1D8E0  4B 64 48 EC */	b _savegpr_25
/* 80D1D8E4  7C 7F 1B 78 */	mr r31, r3
/* 80D1D8E8  3C 80 80 D2 */	lis r4, lit_3879@ha
/* 80D1D8EC  3B C4 EE 2C */	addi r30, r4, lit_3879@l
/* 80D1D8F0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80D1D8F4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80D1D8F8  83 24 5D AC */	lwz r25, 0x5dac(r4)
/* 80D1D8FC  88 03 05 A4 */	lbz r0, 0x5a4(r3)
/* 80D1D900  28 00 00 00 */	cmplwi r0, 0
/* 80D1D904  41 82 00 10 */	beq lbl_80D1D914
/* 80D1D908  4B 2F C3 74 */	b fopAcM_delete__FP10fopAc_ac_c
/* 80D1D90C  38 60 00 01 */	li r3, 1
/* 80D1D910  48 00 0B 30 */	b lbl_80D1E440
lbl_80D1D914:
/* 80D1D914  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1D918  83 43 00 04 */	lwz r26, 4(r3)
/* 80D1D91C  A8 7F 05 CC */	lha r3, 0x5cc(r31)
/* 80D1D920  38 03 00 01 */	addi r0, r3, 1
/* 80D1D924  B0 1F 05 CC */	sth r0, 0x5cc(r31)
/* 80D1D928  38 60 00 00 */	li r3, 0
/* 80D1D92C  38 00 00 02 */	li r0, 2
/* 80D1D930  7C 09 03 A6 */	mtctr r0
lbl_80D1D934:
/* 80D1D934  38 A3 05 B8 */	addi r5, r3, 0x5b8
/* 80D1D938  7C 9F 2A AE */	lhax r4, r31, r5
/* 80D1D93C  2C 04 00 00 */	cmpwi r4, 0
/* 80D1D940  41 82 00 0C */	beq lbl_80D1D94C
/* 80D1D944  38 04 FF FF */	addi r0, r4, -1
/* 80D1D948  7C 1F 2B 2E */	sthx r0, r31, r5
lbl_80D1D94C:
/* 80D1D94C  38 63 00 02 */	addi r3, r3, 2
/* 80D1D950  42 00 FF E4 */	bdnz lbl_80D1D934
/* 80D1D954  A8 7F 05 BC */	lha r3, 0x5bc(r31)
/* 80D1D958  2C 03 00 00 */	cmpwi r3, 0
/* 80D1D95C  41 82 00 0C */	beq lbl_80D1D968
/* 80D1D960  38 03 FF FF */	addi r0, r3, -1
/* 80D1D964  B0 1F 05 BC */	sth r0, 0x5bc(r31)
lbl_80D1D968:
/* 80D1D968  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1D96C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1D970  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D1D974  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D1D978  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D1D97C  4B 62 8F 6C */	b PSMTXTrans
/* 80D1D980  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1D984  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1D988  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 80D1D98C  4B 2E EA A8 */	b mDoMtx_YrotM__FPA4_fs
/* 80D1D990  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1D994  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1D998  38 9A 00 24 */	addi r4, r26, 0x24
/* 80D1D99C  4B 62 8B 14 */	b PSMTXCopy
/* 80D1D9A0  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D1D9A4  7C 03 07 74 */	extsb r3, r0
/* 80D1D9A8  4B 30 F6 C4 */	b dComIfGp_getReverb__Fi
/* 80D1D9AC  7C 65 07 74 */	extsb r5, r3
/* 80D1D9B0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1D9B4  38 80 00 00 */	li r4, 0
/* 80D1D9B8  38 C0 00 00 */	li r6, 0
/* 80D1D9BC  4B 2F 2C 0C */	b play__14mDoExt_McaMorfFP3VecUlSc
/* 80D1D9C0  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1D9C4  4B 2F 2C E8 */	b modelCalc__14mDoExt_McaMorfFv
/* 80D1D9C8  3B A0 00 00 */	li r29, 0
/* 80D1D9CC  3B 80 00 00 */	li r28, 0
/* 80D1D9D0  A8 9F 05 A6 */	lha r4, 0x5a6(r31)
/* 80D1D9D4  28 04 00 07 */	cmplwi r4, 7
/* 80D1D9D8  41 81 05 34 */	bgt lbl_80D1DF0C
/* 80D1D9DC  3C 60 80 D2 */	lis r3, lit_4263@ha
/* 80D1D9E0  38 63 EE C0 */	addi r3, r3, lit_4263@l
/* 80D1D9E4  54 80 10 3A */	slwi r0, r4, 2
/* 80D1D9E8  7C 03 00 2E */	lwzx r0, r3, r0
/* 80D1D9EC  7C 09 03 A6 */	mtctr r0
/* 80D1D9F0  4E 80 04 20 */	bctr 
lbl_80D1D9F4:
/* 80D1D9F4  7F E3 FB 78 */	mr r3, r31
/* 80D1D9F8  38 80 00 07 */	li r4, 7
/* 80D1D9FC  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80D1DA00  38 A0 00 00 */	li r5, 0
/* 80D1DA04  FC 40 08 90 */	fmr f2, f1
/* 80D1DA08  4B FF FD 5D */	bl anm_init__FP12obj_tp_classifUcf
/* 80D1DA0C  A8 7F 05 A6 */	lha r3, 0x5a6(r31)
/* 80D1DA10  38 03 00 01 */	addi r0, r3, 1
/* 80D1DA14  B0 1F 05 A6 */	sth r0, 0x5a6(r31)
/* 80D1DA18  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80D1DA1C  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D1DA20  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D1DA24  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80D1DA28  28 00 00 00 */	cmplwi r0, 0
/* 80D1DA2C  41 82 04 E0 */	beq lbl_80D1DF0C
/* 80D1DA30  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80D1DA34  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D1DA38  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80D1DA3C  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D1DA40  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D1DA44  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80D1DA48  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D1DA4C  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80D1DA50  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D1DA54  48 00 04 B8 */	b lbl_80D1DF0C
lbl_80D1DA58:
/* 80D1DA58  88 9F 05 97 */	lbz r4, 0x597(r31)
/* 80D1DA5C  28 04 00 FF */	cmplwi r4, 0xff
/* 80D1DA60  41 82 00 20 */	beq lbl_80D1DA80
/* 80D1DA64  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1DA68  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1DA6C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D1DA70  7C 05 07 74 */	extsb r5, r0
/* 80D1DA74  4B 31 78 EC */	b isSwitch__10dSv_info_cCFii
/* 80D1DA78  2C 03 00 00 */	cmpwi r3, 0
/* 80D1DA7C  40 82 04 90 */	bne lbl_80D1DF0C
lbl_80D1DA80:
/* 80D1DA80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1DA84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1DA88  88 9F 05 96 */	lbz r4, 0x596(r31)
/* 80D1DA8C  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D1DA90  7C 05 07 74 */	extsb r5, r0
/* 80D1DA94  4B 31 78 CC */	b isSwitch__10dSv_info_cCFii
/* 80D1DA98  2C 03 00 00 */	cmpwi r3, 0
/* 80D1DA9C  41 82 04 70 */	beq lbl_80D1DF0C
/* 80D1DAA0  C0 3E 00 10 */	lfs f1, 0x10(r30)
/* 80D1DAA4  4B 54 9E B0 */	b cM_rndF__Ff
/* 80D1DAA8  FC 00 08 1E */	fctiwz f0, f1
/* 80D1DAAC  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 80D1DAB0  80 01 00 7C */	lwz r0, 0x7c(r1)
/* 80D1DAB4  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80D1DAB8  38 00 00 23 */	li r0, 0x23
/* 80D1DABC  B0 1F 05 BA */	sth r0, 0x5ba(r31)
/* 80D1DAC0  38 00 00 02 */	li r0, 2
/* 80D1DAC4  B0 1F 05 A6 */	sth r0, 0x5a6(r31)
/* 80D1DAC8  48 00 04 44 */	b lbl_80D1DF0C
lbl_80D1DACC:
/* 80D1DACC  3B 80 00 01 */	li r28, 1
/* 80D1DAD0  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 80D1DAD4  2C 00 00 00 */	cmpwi r0, 0
/* 80D1DAD8  40 82 04 34 */	bne lbl_80D1DF0C
/* 80D1DADC  7F E3 FB 78 */	mr r3, r31
/* 80D1DAE0  38 80 00 09 */	li r4, 9
/* 80D1DAE4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80D1DAE8  38 A0 00 00 */	li r5, 0
/* 80D1DAEC  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80D1DAF0  4B FF FC 75 */	bl anm_init__FP12obj_tp_classifUcf
/* 80D1DAF4  C0 1E 00 14 */	lfs f0, 0x14(r30)
/* 80D1DAF8  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1DAFC  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 80D1DB00  38 00 00 04 */	li r0, 4
/* 80D1DB04  B0 1F 05 A6 */	sth r0, 0x5a6(r31)
/* 80D1DB08  48 00 04 04 */	b lbl_80D1DF0C
lbl_80D1DB0C:
/* 80D1DB0C  3B 80 00 01 */	li r28, 1
/* 80D1DB10  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1DB14  38 80 00 01 */	li r4, 1
/* 80D1DB18  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80D1DB1C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D1DB20  40 82 00 18 */	bne lbl_80D1DB38
/* 80D1DB24  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80D1DB28  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D1DB2C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D1DB30  41 82 00 08 */	beq lbl_80D1DB38
/* 80D1DB34  38 80 00 00 */	li r4, 0
lbl_80D1DB38:
/* 80D1DB38  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D1DB3C  41 82 03 D0 */	beq lbl_80D1DF0C
/* 80D1DB40  7F E3 FB 78 */	mr r3, r31
/* 80D1DB44  38 80 00 09 */	li r4, 9
/* 80D1DB48  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80D1DB4C  38 A0 00 00 */	li r5, 0
/* 80D1DB50  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80D1DB54  4B FF FC 11 */	bl anm_init__FP12obj_tp_classifUcf
/* 80D1DB58  A8 7F 05 A6 */	lha r3, 0x5a6(r31)
/* 80D1DB5C  38 03 00 01 */	addi r0, r3, 1
/* 80D1DB60  B0 1F 05 A6 */	sth r0, 0x5a6(r31)
/* 80D1DB64  48 00 03 A8 */	b lbl_80D1DF0C
lbl_80D1DB68:
/* 80D1DB68  3B 80 00 01 */	li r28, 1
/* 80D1DB6C  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1DB70  38 63 00 0C */	addi r3, r3, 0xc
/* 80D1DB74  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 80D1DB78  4B 60 A8 B4 */	b checkPass__12J3DFrameCtrlFf
/* 80D1DB7C  2C 03 00 00 */	cmpwi r3, 0
/* 80D1DB80  41 82 00 74 */	beq lbl_80D1DBF4
/* 80D1DB84  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800F1@ha */
/* 80D1DB88  38 03 00 F1 */	addi r0, r3, 0x00F1 /* 0x000800F1@l */
/* 80D1DB8C  90 01 00 38 */	stw r0, 0x38(r1)
/* 80D1DB90  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D1DB94  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D1DB98  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1DB9C  38 81 00 38 */	addi r4, r1, 0x38
/* 80D1DBA0  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D1DBA4  38 C0 00 00 */	li r6, 0
/* 80D1DBA8  38 E0 00 00 */	li r7, 0
/* 80D1DBAC  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1DBB0  FC 40 08 90 */	fmr f2, f1
/* 80D1DBB4  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80D1DBB8  FC 80 18 90 */	fmr f4, f3
/* 80D1DBBC  39 00 00 00 */	li r8, 0
/* 80D1DBC0  4B 58 DD C4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D1DBC4  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80D1DBC8  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80D1DBCC  C0 1E 00 00 */	lfs f0, 0(r30)
/* 80D1DBD0  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80D1DBD4  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 80D1DBD8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1DBDC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1DBE0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80D1DBE4  38 80 00 05 */	li r4, 5
/* 80D1DBE8  38 A0 00 0F */	li r5, 0xf
/* 80D1DBEC  38 C1 00 54 */	addi r6, r1, 0x54
/* 80D1DBF0  4B 35 1E 34 */	b StartShock__12dVibration_cFii4cXyz
lbl_80D1DBF4:
/* 80D1DBF4  A8 1F 05 BA */	lha r0, 0x5ba(r31)
/* 80D1DBF8  2C 00 00 00 */	cmpwi r0, 0
/* 80D1DBFC  40 82 03 10 */	bne lbl_80D1DF0C
/* 80D1DC00  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1DC04  38 80 00 01 */	li r4, 1
/* 80D1DC08  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80D1DC0C  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D1DC10  40 82 00 18 */	bne lbl_80D1DC28
/* 80D1DC14  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80D1DC18  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D1DC1C  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D1DC20  41 82 00 08 */	beq lbl_80D1DC28
/* 80D1DC24  38 80 00 00 */	li r4, 0
lbl_80D1DC28:
/* 80D1DC28  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D1DC2C  41 82 02 E0 */	beq lbl_80D1DF0C
/* 80D1DC30  A8 7F 05 A6 */	lha r3, 0x5a6(r31)
/* 80D1DC34  38 03 00 01 */	addi r0, r3, 1
/* 80D1DC38  B0 1F 05 A6 */	sth r0, 0x5a6(r31)
/* 80D1DC3C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800F3@ha */
/* 80D1DC40  38 03 00 F3 */	addi r0, r3, 0x00F3 /* 0x000800F3@l */
/* 80D1DC44  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D1DC48  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D1DC4C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D1DC50  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1DC54  38 81 00 34 */	addi r4, r1, 0x34
/* 80D1DC58  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D1DC5C  38 C0 00 00 */	li r6, 0
/* 80D1DC60  38 E0 00 00 */	li r7, 0
/* 80D1DC64  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1DC68  FC 40 08 90 */	fmr f2, f1
/* 80D1DC6C  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80D1DC70  FC 80 18 90 */	fmr f4, f3
/* 80D1DC74  39 00 00 00 */	li r8, 0
/* 80D1DC78  4B 58 DD 0C */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D1DC7C  48 00 02 90 */	b lbl_80D1DF0C
lbl_80D1DC80:
/* 80D1DC80  3B 80 00 01 */	li r28, 1
/* 80D1DC84  3B A0 00 01 */	li r29, 1
/* 80D1DC88  80 7F 05 78 */	lwz r3, 0x578(r31)
/* 80D1DC8C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D1DC90  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80D1DC94  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1DC98  40 80 00 08 */	bge lbl_80D1DCA0
/* 80D1DC9C  4B 2E F7 8C */	b play__14mDoExt_baseAnmFv
lbl_80D1DCA0:
/* 80D1DCA0  88 9F 05 97 */	lbz r4, 0x597(r31)
/* 80D1DCA4  28 04 00 FF */	cmplwi r4, 0xff
/* 80D1DCA8  41 82 00 20 */	beq lbl_80D1DCC8
/* 80D1DCAC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1DCB0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1DCB4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D1DCB8  7C 05 07 74 */	extsb r5, r0
/* 80D1DCBC  4B 31 76 A4 */	b isSwitch__10dSv_info_cCFii
/* 80D1DCC0  2C 03 00 00 */	cmpwi r3, 0
/* 80D1DCC4  40 82 00 24 */	bne lbl_80D1DCE8
lbl_80D1DCC8:
/* 80D1DCC8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1DCCC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1DCD0  88 9F 05 96 */	lbz r4, 0x596(r31)
/* 80D1DCD4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 80D1DCD8  7C 05 07 74 */	extsb r5, r0
/* 80D1DCDC  4B 31 76 84 */	b isSwitch__10dSv_info_cCFii
/* 80D1DCE0  2C 03 00 00 */	cmpwi r3, 0
/* 80D1DCE4  40 82 02 28 */	bne lbl_80D1DF0C
lbl_80D1DCE8:
/* 80D1DCE8  A8 7F 05 A6 */	lha r3, 0x5a6(r31)
/* 80D1DCEC  38 03 00 01 */	addi r0, r3, 1
/* 80D1DCF0  B0 1F 05 A6 */	sth r0, 0x5a6(r31)
/* 80D1DCF4  A8 1F 05 A8 */	lha r0, 0x5a8(r31)
/* 80D1DCF8  2C 00 00 00 */	cmpwi r0, 0
/* 80D1DCFC  41 82 00 20 */	beq lbl_80D1DD1C
/* 80D1DD00  C0 1E 00 20 */	lfs f0, 0x20(r30)
/* 80D1DD04  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80D1DD08  D0 03 00 10 */	stfs f0, 0x10(r3)
/* 80D1DD0C  C0 1E 00 24 */	lfs f0, 0x24(r30)
/* 80D1DD10  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80D1DD14  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 80D1DD18  48 00 01 F4 */	b lbl_80D1DF0C
lbl_80D1DD1C:
/* 80D1DD1C  38 00 00 12 */	li r0, 0x12
/* 80D1DD20  B0 1F 05 B8 */	sth r0, 0x5b8(r31)
/* 80D1DD24  48 00 01 E8 */	b lbl_80D1DF0C
lbl_80D1DD28:
/* 80D1DD28  3B A0 00 02 */	li r29, 2
/* 80D1DD2C  3B 80 00 01 */	li r28, 1
/* 80D1DD30  A8 1F 05 A8 */	lha r0, 0x5a8(r31)
/* 80D1DD34  2C 00 00 00 */	cmpwi r0, 0
/* 80D1DD38  41 82 00 DC */	beq lbl_80D1DE14
/* 80D1DD3C  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80D1DD40  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80D1DD44  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80D1DD48  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80D1DD4C  4C 40 13 82 */	cror 2, 0, 2
/* 80D1DD50  40 82 01 BC */	bne lbl_80D1DF0C
/* 80D1DD54  38 00 00 00 */	li r0, 0
/* 80D1DD58  B0 1F 05 A8 */	sth r0, 0x5a8(r31)
/* 80D1DD5C  3B A0 00 00 */	li r29, 0
/* 80D1DD60  A8 7F 05 A6 */	lha r3, 0x5a6(r31)
/* 80D1DD64  38 03 00 01 */	addi r0, r3, 1
/* 80D1DD68  B0 1F 05 A6 */	sth r0, 0x5a6(r31)
/* 80D1DD6C  7F E3 FB 78 */	mr r3, r31
/* 80D1DD70  38 80 00 08 */	li r4, 8
/* 80D1DD74  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80D1DD78  38 A0 00 00 */	li r5, 0
/* 80D1DD7C  4B FF F9 E9 */	bl anm_init__FP12obj_tp_classifUcf
/* 80D1DD80  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1DD84  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1DD88  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D1DD8C  38 80 00 00 */	li r4, 0
/* 80D1DD90  90 81 00 08 */	stw r4, 8(r1)
/* 80D1DD94  38 00 FF FF */	li r0, -1
/* 80D1DD98  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D1DD9C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D1DDA0  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D1DDA4  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D1DDA8  38 80 00 00 */	li r4, 0
/* 80D1DDAC  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008392@ha */
/* 80D1DDB0  38 A5 83 92 */	addi r5, r5, 0x8392 /* 0x00008392@l */
/* 80D1DDB4  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80D1DDB8  38 E0 00 00 */	li r7, 0
/* 80D1DDBC  39 00 00 00 */	li r8, 0
/* 80D1DDC0  39 20 00 00 */	li r9, 0
/* 80D1DDC4  39 40 00 FF */	li r10, 0xff
/* 80D1DDC8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1DDCC  4B 32 EC C4 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D1DDD0  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800F2@ha */
/* 80D1DDD4  38 03 00 F2 */	addi r0, r3, 0x00F2 /* 0x000800F2@l */
/* 80D1DDD8  90 01 00 30 */	stw r0, 0x30(r1)
/* 80D1DDDC  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D1DDE0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D1DDE4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1DDE8  38 81 00 30 */	addi r4, r1, 0x30
/* 80D1DDEC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D1DDF0  38 C0 00 00 */	li r6, 0
/* 80D1DDF4  38 E0 00 00 */	li r7, 0
/* 80D1DDF8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1DDFC  FC 40 08 90 */	fmr f2, f1
/* 80D1DE00  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80D1DE04  FC 80 18 90 */	fmr f4, f3
/* 80D1DE08  39 00 00 00 */	li r8, 0
/* 80D1DE0C  4B 58 DB 78 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D1DE10  48 00 00 FC */	b lbl_80D1DF0C
lbl_80D1DE14:
/* 80D1DE14  A8 1F 05 B8 */	lha r0, 0x5b8(r31)
/* 80D1DE18  2C 00 00 00 */	cmpwi r0, 0
/* 80D1DE1C  40 82 00 F0 */	bne lbl_80D1DF0C
/* 80D1DE20  38 04 00 01 */	addi r0, r4, 1
/* 80D1DE24  B0 1F 05 A6 */	sth r0, 0x5a6(r31)
/* 80D1DE28  7F E3 FB 78 */	mr r3, r31
/* 80D1DE2C  38 80 00 08 */	li r4, 8
/* 80D1DE30  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80D1DE34  38 A0 00 00 */	li r5, 0
/* 80D1DE38  C0 5E 00 00 */	lfs f2, 0(r30)
/* 80D1DE3C  4B FF F9 29 */	bl anm_init__FP12obj_tp_classifUcf
/* 80D1DE40  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1DE44  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1DE48  80 63 5D 3C */	lwz r3, 0x5d3c(r3)
/* 80D1DE4C  38 80 00 00 */	li r4, 0
/* 80D1DE50  90 81 00 08 */	stw r4, 8(r1)
/* 80D1DE54  38 00 FF FF */	li r0, -1
/* 80D1DE58  90 01 00 0C */	stw r0, 0xc(r1)
/* 80D1DE5C  90 81 00 10 */	stw r4, 0x10(r1)
/* 80D1DE60  90 81 00 14 */	stw r4, 0x14(r1)
/* 80D1DE64  90 81 00 18 */	stw r4, 0x18(r1)
/* 80D1DE68  38 80 00 00 */	li r4, 0
/* 80D1DE6C  3C A0 00 01 */	lis r5, 0x0001 /* 0x00008392@ha */
/* 80D1DE70  38 A5 83 92 */	addi r5, r5, 0x8392 /* 0x00008392@l */
/* 80D1DE74  38 DF 04 D0 */	addi r6, r31, 0x4d0
/* 80D1DE78  38 E0 00 00 */	li r7, 0
/* 80D1DE7C  39 00 00 00 */	li r8, 0
/* 80D1DE80  39 20 00 00 */	li r9, 0
/* 80D1DE84  39 40 00 FF */	li r10, 0xff
/* 80D1DE88  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1DE8C  4B 32 EC 04 */	b set__13dPa_control_cFUcUsPC4cXyzPC12dKy_tevstr_cPC5csXyzPC4cXyzUcP18dPa_levelEcallBackScPC8_GXColorPC8_GXColorPC4cXyzf
/* 80D1DE90  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800F2@ha */
/* 80D1DE94  38 03 00 F2 */	addi r0, r3, 0x00F2 /* 0x000800F2@l */
/* 80D1DE98  90 01 00 2C */	stw r0, 0x2c(r1)
/* 80D1DE9C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D1DEA0  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D1DEA4  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1DEA8  38 81 00 2C */	addi r4, r1, 0x2c
/* 80D1DEAC  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D1DEB0  38 C0 00 00 */	li r6, 0
/* 80D1DEB4  38 E0 00 00 */	li r7, 0
/* 80D1DEB8  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1DEBC  FC 40 08 90 */	fmr f2, f1
/* 80D1DEC0  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80D1DEC4  FC 80 18 90 */	fmr f4, f3
/* 80D1DEC8  39 00 00 00 */	li r8, 0
/* 80D1DECC  4B 58 DA B8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D1DED0  48 00 00 3C */	b lbl_80D1DF0C
lbl_80D1DED4:
/* 80D1DED4  80 7F 05 70 */	lwz r3, 0x570(r31)
/* 80D1DED8  38 80 00 01 */	li r4, 1
/* 80D1DEDC  88 03 00 11 */	lbz r0, 0x11(r3)
/* 80D1DEE0  54 00 07 FF */	clrlwi. r0, r0, 0x1f
/* 80D1DEE4  40 82 00 18 */	bne lbl_80D1DEFC
/* 80D1DEE8  C0 3E 00 08 */	lfs f1, 8(r30)
/* 80D1DEEC  C0 03 00 18 */	lfs f0, 0x18(r3)
/* 80D1DEF0  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80D1DEF4  41 82 00 08 */	beq lbl_80D1DEFC
/* 80D1DEF8  38 80 00 00 */	li r4, 0
lbl_80D1DEFC:
/* 80D1DEFC  54 80 06 3F */	clrlwi. r0, r4, 0x18
/* 80D1DF00  41 82 00 0C */	beq lbl_80D1DF0C
/* 80D1DF04  38 00 00 00 */	li r0, 0
/* 80D1DF08  B0 1F 05 A6 */	sth r0, 0x5a6(r31)
lbl_80D1DF0C:
/* 80D1DF0C  3C 60 80 D2 */	lis r3, s_tp_sub__FPvPv@ha
/* 80D1DF10  38 63 D8 50 */	addi r3, r3, s_tp_sub__FPvPv@l
/* 80D1DF14  7F E4 FB 78 */	mr r4, r31
/* 80D1DF18  4B 30 34 20 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80D1DF1C  28 03 00 00 */	cmplwi r3, 0
/* 80D1DF20  41 82 00 1C */	beq lbl_80D1DF3C
/* 80D1DF24  C0 03 04 D0 */	lfs f0, 0x4d0(r3)
/* 80D1DF28  D0 1F 05 AC */	stfs f0, 0x5ac(r31)
/* 80D1DF2C  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 80D1DF30  D0 1F 05 B0 */	stfs f0, 0x5b0(r31)
/* 80D1DF34  C0 03 04 D8 */	lfs f0, 0x4d8(r3)
/* 80D1DF38  D0 1F 05 B4 */	stfs f0, 0x5b4(r31)
lbl_80D1DF3C:
/* 80D1DF3C  38 61 00 48 */	addi r3, r1, 0x48
/* 80D1DF40  38 9F 05 AC */	addi r4, r31, 0x5ac
/* 80D1DF44  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D1DF48  4B 54 8B EC */	b __mi__4cXyzCFRC3Vec
/* 80D1DF4C  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80D1DF50  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80D1DF54  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 80D1DF58  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80D1DF5C  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80D1DF60  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80D1DF64  38 61 00 6C */	addi r3, r1, 0x6c
/* 80D1DF68  4B 62 91 D0 */	b PSVECSquareMag
/* 80D1DF6C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80D1DF70  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1DF74  40 81 00 58 */	ble lbl_80D1DFCC
/* 80D1DF78  FC 00 08 34 */	frsqrte f0, f1
/* 80D1DF7C  C8 9E 00 28 */	lfd f4, 0x28(r30)
/* 80D1DF80  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1DF84  C8 7E 00 30 */	lfd f3, 0x30(r30)
/* 80D1DF88  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1DF8C  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1DF90  FC 03 00 28 */	fsub f0, f3, f0
/* 80D1DF94  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1DF98  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1DF9C  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1DFA0  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1DFA4  FC 03 00 28 */	fsub f0, f3, f0
/* 80D1DFA8  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1DFAC  FC 44 00 32 */	fmul f2, f4, f0
/* 80D1DFB0  FC 00 00 32 */	fmul f0, f0, f0
/* 80D1DFB4  FC 01 00 32 */	fmul f0, f1, f0
/* 80D1DFB8  FC 03 00 28 */	fsub f0, f3, f0
/* 80D1DFBC  FC 02 00 32 */	fmul f0, f2, f0
/* 80D1DFC0  FC 21 00 32 */	fmul f1, f1, f0
/* 80D1DFC4  FC 20 08 18 */	frsp f1, f1
/* 80D1DFC8  48 00 00 88 */	b lbl_80D1E050
lbl_80D1DFCC:
/* 80D1DFCC  C8 1E 00 38 */	lfd f0, 0x38(r30)
/* 80D1DFD0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1DFD4  40 80 00 10 */	bge lbl_80D1DFE4
/* 80D1DFD8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D1DFDC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 80D1DFE0  48 00 00 70 */	b lbl_80D1E050
lbl_80D1DFE4:
/* 80D1DFE4  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80D1DFE8  80 81 00 20 */	lwz r4, 0x20(r1)
/* 80D1DFEC  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80D1DFF0  3C 00 7F 80 */	lis r0, 0x7f80
/* 80D1DFF4  7C 03 00 00 */	cmpw r3, r0
/* 80D1DFF8  41 82 00 14 */	beq lbl_80D1E00C
/* 80D1DFFC  40 80 00 40 */	bge lbl_80D1E03C
/* 80D1E000  2C 03 00 00 */	cmpwi r3, 0
/* 80D1E004  41 82 00 20 */	beq lbl_80D1E024
/* 80D1E008  48 00 00 34 */	b lbl_80D1E03C
lbl_80D1E00C:
/* 80D1E00C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D1E010  41 82 00 0C */	beq lbl_80D1E01C
/* 80D1E014  38 00 00 01 */	li r0, 1
/* 80D1E018  48 00 00 28 */	b lbl_80D1E040
lbl_80D1E01C:
/* 80D1E01C  38 00 00 02 */	li r0, 2
/* 80D1E020  48 00 00 20 */	b lbl_80D1E040
lbl_80D1E024:
/* 80D1E024  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80D1E028  41 82 00 0C */	beq lbl_80D1E034
/* 80D1E02C  38 00 00 05 */	li r0, 5
/* 80D1E030  48 00 00 10 */	b lbl_80D1E040
lbl_80D1E034:
/* 80D1E034  38 00 00 03 */	li r0, 3
/* 80D1E038  48 00 00 08 */	b lbl_80D1E040
lbl_80D1E03C:
/* 80D1E03C  38 00 00 04 */	li r0, 4
lbl_80D1E040:
/* 80D1E040  2C 00 00 01 */	cmpwi r0, 1
/* 80D1E044  40 82 00 0C */	bne lbl_80D1E050
/* 80D1E048  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80D1E04C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_80D1E050:
/* 80D1E050  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 80D1E054  EF E0 00 72 */	fmuls f31, f0, f1
/* 80D1E058  C0 21 00 6C */	lfs f1, 0x6c(r1)
/* 80D1E05C  C0 41 00 74 */	lfs f2, 0x74(r1)
/* 80D1E060  4B 54 96 14 */	b cM_atan2s__Fff
/* 80D1E064  7C 7B 1B 78 */	mr r27, r3
/* 80D1E068  C0 01 00 6C */	lfs f0, 0x6c(r1)
/* 80D1E06C  EC 20 00 32 */	fmuls f1, f0, f0
/* 80D1E070  C0 01 00 74 */	lfs f0, 0x74(r1)
/* 80D1E074  EC 00 00 32 */	fmuls f0, f0, f0
/* 80D1E078  EC 41 00 2A */	fadds f2, f1, f0
/* 80D1E07C  C0 1E 00 08 */	lfs f0, 8(r30)
/* 80D1E080  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80D1E084  40 81 00 0C */	ble lbl_80D1E090
/* 80D1E088  FC 00 10 34 */	frsqrte f0, f2
/* 80D1E08C  EC 40 00 B2 */	fmuls f2, f0, f2
lbl_80D1E090:
/* 80D1E090  C0 21 00 70 */	lfs f1, 0x70(r1)
/* 80D1E094  4B 54 95 E0 */	b cM_atan2s__Fff
/* 80D1E098  7C 03 00 D0 */	neg r0, r3
/* 80D1E09C  7C 1A 07 34 */	extsh r26, r0
/* 80D1E0A0  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 80D1E0A4  41 82 02 58 */	beq lbl_80D1E2FC
/* 80D1E0A8  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80D1E0AC  28 00 00 00 */	cmplwi r0, 0
/* 80D1E0B0  41 82 02 4C */	beq lbl_80D1E2FC
/* 80D1E0B4  A8 7F 05 A8 */	lha r3, 0x5a8(r31)
/* 80D1E0B8  2C 03 00 01 */	cmpwi r3, 1
/* 80D1E0BC  41 82 00 1C */	beq lbl_80D1E0D8
/* 80D1E0C0  40 80 02 3C */	bge lbl_80D1E2FC
/* 80D1E0C4  2C 03 00 00 */	cmpwi r3, 0
/* 80D1E0C8  40 80 00 08 */	bge lbl_80D1E0D0
/* 80D1E0CC  48 00 02 30 */	b lbl_80D1E2FC
lbl_80D1E0D0:
/* 80D1E0D0  38 03 00 01 */	addi r0, r3, 1
/* 80D1E0D4  B0 1F 05 A8 */	sth r0, 0x5a8(r31)
lbl_80D1E0D8:
/* 80D1E0D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E0DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E0E0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D1E0E4  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D1E0E8  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D1E0EC  4B 62 87 FC */	b PSMTXTrans
/* 80D1E0F0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E0F4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E0F8  7F 64 DB 78 */	mr r4, r27
/* 80D1E0FC  4B 2E E3 38 */	b mDoMtx_YrotM__FPA4_fs
/* 80D1E100  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E104  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E108  7F 44 D3 78 */	mr r4, r26
/* 80D1E10C  4B 2E E2 90 */	b mDoMtx_XrotM__FPA4_fs
/* 80D1E110  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1E114  FC 40 08 90 */	fmr f2, f1
/* 80D1E118  FC 60 F8 90 */	fmr f3, f31
/* 80D1E11C  4B 2E ED 1C */	b scaleM__14mDoMtx_stack_cFfff
/* 80D1E120  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E124  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E128  38 80 C0 00 */	li r4, -16384
/* 80D1E12C  4B 2E E3 08 */	b mDoMtx_YrotM__FPA4_fs
/* 80D1E130  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80D1E134  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80D1E138  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80D1E13C  4B 2E EC 60 */	b transM__14mDoMtx_stack_cFfff
/* 80D1E140  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E144  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E148  80 9F 05 7C */	lwz r4, 0x57c(r31)
/* 80D1E14C  38 84 00 24 */	addi r4, r4, 0x24
/* 80D1E150  4B 62 83 60 */	b PSMTXCopy
/* 80D1E154  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E158  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E15C  80 9F 05 80 */	lwz r4, 0x580(r31)
/* 80D1E160  38 84 00 24 */	addi r4, r4, 0x24
/* 80D1E164  4B 62 83 4C */	b PSMTXCopy
/* 80D1E168  80 7F 05 84 */	lwz r3, 0x584(r31)
/* 80D1E16C  4B 2E F2 BC */	b play__14mDoExt_baseAnmFv
/* 80D1E170  80 7F 05 88 */	lwz r3, 0x588(r31)
/* 80D1E174  4B 2E F2 B4 */	b play__14mDoExt_baseAnmFv
/* 80D1E178  80 7F 05 8C */	lwz r3, 0x58c(r31)
/* 80D1E17C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D1E180  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80D1E184  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1E188  40 80 00 08 */	bge lbl_80D1E190
/* 80D1E18C  4B 2E F2 9C */	b play__14mDoExt_baseAnmFv
lbl_80D1E190:
/* 80D1E190  38 61 00 3C */	addi r3, r1, 0x3c
/* 80D1E194  38 9F 05 C0 */	addi r4, r31, 0x5c0
/* 80D1E198  38 B9 04 D0 */	addi r5, r25, 0x4d0
/* 80D1E19C  4B 54 89 98 */	b __mi__4cXyzCFRC3Vec
/* 80D1E1A0  C0 01 00 3C */	lfs f0, 0x3c(r1)
/* 80D1E1A4  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 80D1E1A8  C0 01 00 40 */	lfs f0, 0x40(r1)
/* 80D1E1AC  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 80D1E1B0  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 80D1E1B4  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 80D1E1B8  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 80D1E1BC  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 80D1E1C0  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1E1C4  7C 1B 00 D0 */	neg r0, r27
/* 80D1E1C8  7C 04 07 34 */	extsh r4, r0
/* 80D1E1CC  4B 2E E2 10 */	b mDoMtx_YrotS__FPA4_fs
/* 80D1E1D0  38 61 00 6C */	addi r3, r1, 0x6c
/* 80D1E1D4  38 81 00 60 */	addi r4, r1, 0x60
/* 80D1E1D8  4B 55 2D 14 */	b MtxPosition__FP4cXyzP4cXyz
/* 80D1E1DC  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80D1E1E0  28 00 00 01 */	cmplwi r0, 1
/* 80D1E1E4  40 82 00 9C */	bne lbl_80D1E280
/* 80D1E1E8  C0 01 00 60 */	lfs f0, 0x60(r1)
/* 80D1E1EC  FC 00 02 10 */	fabs f0, f0
/* 80D1E1F0  FC 20 00 18 */	frsp f1, f0
/* 80D1E1F4  C0 1E 00 4C */	lfs f0, 0x4c(r30)
/* 80D1E1F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1E1FC  40 80 00 84 */	bge lbl_80D1E280
/* 80D1E200  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80D1E204  C0 03 00 10 */	lfs f0, 0x10(r3)
/* 80D1E208  C0 3E 00 50 */	lfs f1, 0x50(r30)
/* 80D1E20C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D1E210  4C 41 13 82 */	cror 2, 1, 2
/* 80D1E214  40 82 00 10 */	bne lbl_80D1E224
/* 80D1E218  EC 00 08 28 */	fsubs f0, f0, f1
/* 80D1E21C  EC 01 00 28 */	fsubs f0, f1, f0
/* 80D1E220  D0 03 00 10 */	stfs f0, 0x10(r3)
lbl_80D1E224:
/* 80D1E224  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80D1E228  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D1E22C  C0 1E 00 50 */	lfs f0, 0x50(r30)
/* 80D1E230  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1E234  40 80 00 08 */	bge lbl_80D1E23C
/* 80D1E238  4B 2E F1 F0 */	b play__14mDoExt_baseAnmFv
lbl_80D1E23C:
/* 80D1E23C  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800F4@ha */
/* 80D1E240  38 03 00 F4 */	addi r0, r3, 0x00F4 /* 0x000800F4@l */
/* 80D1E244  90 01 00 28 */	stw r0, 0x28(r1)
/* 80D1E248  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D1E24C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D1E250  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1E254  38 81 00 28 */	addi r4, r1, 0x28
/* 80D1E258  38 BF 05 C0 */	addi r5, r31, 0x5c0
/* 80D1E25C  38 C0 00 00 */	li r6, 0
/* 80D1E260  38 E0 00 00 */	li r7, 0
/* 80D1E264  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1E268  FC 40 08 90 */	fmr f2, f1
/* 80D1E26C  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80D1E270  FC 80 18 90 */	fmr f4, f3
/* 80D1E274  39 00 00 00 */	li r8, 0
/* 80D1E278  4B 58 E2 94 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80D1E27C  48 00 00 80 */	b lbl_80D1E2FC
lbl_80D1E280:
/* 80D1E280  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80D1E284  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D1E288  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80D1E28C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1E290  40 80 00 48 */	bge lbl_80D1E2D8
/* 80D1E294  4B 2E F1 94 */	b play__14mDoExt_baseAnmFv
/* 80D1E298  3C 60 00 08 */	lis r3, 0x0008 /* 0x000800F4@ha */
/* 80D1E29C  38 03 00 F4 */	addi r0, r3, 0x00F4 /* 0x000800F4@l */
/* 80D1E2A0  90 01 00 24 */	stw r0, 0x24(r1)
/* 80D1E2A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80D1E2A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80D1E2AC  80 63 00 00 */	lwz r3, 0(r3)
/* 80D1E2B0  38 81 00 24 */	addi r4, r1, 0x24
/* 80D1E2B4  38 BF 05 C0 */	addi r5, r31, 0x5c0
/* 80D1E2B8  38 C0 00 00 */	li r6, 0
/* 80D1E2BC  38 E0 00 00 */	li r7, 0
/* 80D1E2C0  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1E2C4  FC 40 08 90 */	fmr f2, f1
/* 80D1E2C8  C0 7E 00 0C */	lfs f3, 0xc(r30)
/* 80D1E2CC  FC 80 18 90 */	fmr f4, f3
/* 80D1E2D0  39 00 00 00 */	li r8, 0
/* 80D1E2D4  4B 58 E2 38 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80D1E2D8:
/* 80D1E2D8  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 80D1E2DC  28 00 00 02 */	cmplwi r0, 2
/* 80D1E2E0  40 82 00 1C */	bne lbl_80D1E2FC
/* 80D1E2E4  80 7F 05 90 */	lwz r3, 0x590(r31)
/* 80D1E2E8  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 80D1E2EC  C0 1E 00 1C */	lfs f0, 0x1c(r30)
/* 80D1E2F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80D1E2F4  40 80 00 08 */	bge lbl_80D1E2FC
/* 80D1E2F8  4B 2E F1 30 */	b play__14mDoExt_baseAnmFv
lbl_80D1E2FC:
/* 80D1E2FC  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80D1E300  41 82 00 AC */	beq lbl_80D1E3AC
/* 80D1E304  80 1F 05 7C */	lwz r0, 0x57c(r31)
/* 80D1E308  28 00 00 00 */	cmplwi r0, 0
/* 80D1E30C  41 82 00 A0 */	beq lbl_80D1E3AC
/* 80D1E310  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E314  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E318  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D1E31C  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80D1E320  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D1E324  4B 62 85 C4 */	b PSMTXTrans
/* 80D1E328  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E32C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E330  7F 64 DB 78 */	mr r4, r27
/* 80D1E334  4B 2E E1 00 */	b mDoMtx_YrotM__FPA4_fs
/* 80D1E338  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E33C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E340  7F 44 D3 78 */	mr r4, r26
/* 80D1E344  4B 2E E0 58 */	b mDoMtx_XrotM__FPA4_fs
/* 80D1E348  C0 3E 00 00 */	lfs f1, 0(r30)
/* 80D1E34C  FC 40 08 90 */	fmr f2, f1
/* 80D1E350  FC 60 F8 90 */	fmr f3, f31
/* 80D1E354  4B 2E EA E4 */	b scaleM__14mDoMtx_stack_cFfff
/* 80D1E358  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E35C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E360  38 80 C0 00 */	li r4, -16384
/* 80D1E364  4B 2E E0 D0 */	b mDoMtx_YrotM__FPA4_fs
/* 80D1E368  C0 3E 00 44 */	lfs f1, 0x44(r30)
/* 80D1E36C  C0 5E 00 48 */	lfs f2, 0x48(r30)
/* 80D1E370  C0 7E 00 08 */	lfs f3, 8(r30)
/* 80D1E374  4B 2E EA 28 */	b transM__14mDoMtx_stack_cFfff
/* 80D1E378  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E37C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E380  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 80D1E384  D0 1F 05 C0 */	stfs f0, 0x5c0(r31)
/* 80D1E388  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 80D1E38C  D0 1F 05 C4 */	stfs f0, 0x5c4(r31)
/* 80D1E390  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80D1E394  D0 1F 05 C8 */	stfs f0, 0x5c8(r31)
/* 80D1E398  38 9F 05 D4 */	addi r4, r31, 0x5d4
/* 80D1E39C  4B 62 81 14 */	b PSMTXCopy
/* 80D1E3A0  80 7F 06 04 */	lwz r3, 0x604(r31)
/* 80D1E3A4  4B 35 D6 1C */	b Move__4dBgWFv
/* 80D1E3A8  48 00 00 48 */	b lbl_80D1E3F0
lbl_80D1E3AC:
/* 80D1E3AC  80 1F 06 04 */	lwz r0, 0x604(r31)
/* 80D1E3B0  28 00 00 00 */	cmplwi r0, 0
/* 80D1E3B4  41 82 00 3C */	beq lbl_80D1E3F0
/* 80D1E3B8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E3BC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E3C0  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80D1E3C4  C0 5E 00 54 */	lfs f2, 0x54(r30)
/* 80D1E3C8  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 80D1E3CC  EC 42 00 2A */	fadds f2, f2, f0
/* 80D1E3D0  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80D1E3D4  4B 62 85 14 */	b PSMTXTrans
/* 80D1E3D8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D1E3DC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D1E3E0  38 9F 05 D4 */	addi r4, r31, 0x5d4
/* 80D1E3E4  4B 62 80 CC */	b PSMTXCopy
/* 80D1E3E8  80 7F 06 04 */	lwz r3, 0x604(r31)
/* 80D1E3EC  4B 35 D5 D4 */	b Move__4dBgWFv
lbl_80D1E3F0:
/* 80D1E3F0  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 80D1E3F4  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 80D1E3F8  C0 3F 04 D4 */	lfs f1, 0x4d4(r31)
/* 80D1E3FC  D0 21 00 64 */	stfs f1, 0x64(r1)
/* 80D1E400  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 80D1E404  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 80D1E408  57 80 06 3F */	clrlwi. r0, r28, 0x18
/* 80D1E40C  40 82 00 10 */	bne lbl_80D1E41C
/* 80D1E410  C0 1E 00 58 */	lfs f0, 0x58(r30)
/* 80D1E414  EC 01 00 2A */	fadds f0, f1, f0
/* 80D1E418  D0 01 00 64 */	stfs f0, 0x64(r1)
lbl_80D1E41C:
/* 80D1E41C  38 7F 07 68 */	addi r3, r31, 0x768
/* 80D1E420  38 81 00 60 */	addi r4, r1, 0x60
/* 80D1E424  4B 55 0D B8 */	b SetC__8cM3dGCylFRC4cXyz
/* 80D1E428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D1E42C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D1E430  38 63 23 3C */	addi r3, r3, 0x233c
/* 80D1E434  38 9F 06 44 */	addi r4, r31, 0x644
/* 80D1E438  4B 54 67 70 */	b Set__4cCcSFP8cCcD_Obj
/* 80D1E43C  38 60 00 01 */	li r3, 1
lbl_80D1E440:
/* 80D1E440  E3 E1 00 A8 */	psq_l f31, 168(r1), 0, 0 /* qr0 */
/* 80D1E444  CB E1 00 A0 */	lfd f31, 0xa0(r1)
/* 80D1E448  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80D1E44C  4B 64 3D CC */	b _restgpr_25
/* 80D1E450  80 01 00 B4 */	lwz r0, 0xb4(r1)
/* 80D1E454  7C 08 03 A6 */	mtlr r0
/* 80D1E458  38 21 00 B0 */	addi r1, r1, 0xb0
/* 80D1E45C  4E 80 00 20 */	blr 
