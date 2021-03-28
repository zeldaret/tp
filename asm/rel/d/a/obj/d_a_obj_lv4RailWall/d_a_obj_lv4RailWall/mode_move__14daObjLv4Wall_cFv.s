lbl_80C61068:
/* 80C61068  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80C6106C  7C 08 02 A6 */	mflr r0
/* 80C61070  90 01 00 84 */	stw r0, 0x84(r1)
/* 80C61074  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80C61078  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80C6107C  39 61 00 70 */	addi r11, r1, 0x70
/* 80C61080  4B 70 11 5C */	b _savegpr_29
/* 80C61084  7C 7E 1B 78 */	mr r30, r3
/* 80C61088  3C 60 80 C6 */	lis r3, lit_3709@ha
/* 80C6108C  3B E3 1B 38 */	addi r31, r3, lit_3709@l
/* 80C61090  A0 7E 09 58 */	lhz r3, 0x958(r30)
/* 80C61094  38 03 00 01 */	addi r0, r3, 1
/* 80C61098  B0 1E 09 58 */	sth r0, 0x958(r30)
/* 80C6109C  C3 FE 04 FC */	lfs f31, 0x4fc(r30)
/* 80C610A0  A0 7E 09 58 */	lhz r3, 0x958(r30)
/* 80C610A4  38 00 00 1E */	li r0, 0x1e
/* 80C610A8  7C 03 03 D6 */	divw r0, r3, r0
/* 80C610AC  28 00 00 0F */	cmplwi r0, 0xf
/* 80C610B0  40 81 00 08 */	ble lbl_80C610B8
/* 80C610B4  38 00 00 0F */	li r0, 0xf
lbl_80C610B8:
/* 80C610B8  54 00 10 3A */	slwi r0, r0, 2
/* 80C610BC  38 9F 00 20 */	addi r4, r31, 0x20
/* 80C610C0  7C 64 02 14 */	add r3, r4, r0
/* 80C610C4  C0 23 00 04 */	lfs f1, 4(r3)
/* 80C610C8  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 80C610CC  7C 04 04 2E */	lfsx f0, r4, r0
/* 80C610D0  EC 41 00 28 */	fsubs f2, f1, f0
/* 80C610D4  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C610D8  EC 42 00 24 */	fdivs f2, f2, f0
/* 80C610DC  4B 60 F6 64 */	b cLib_chaseF__FPfff
/* 80C610E0  38 7E 09 50 */	addi r3, r30, 0x950
/* 80C610E4  C0 3F 00 00 */	lfs f1, 0(r31)
/* 80C610E8  C0 5E 04 FC */	lfs f2, 0x4fc(r30)
/* 80C610EC  4B 60 F6 54 */	b cLib_chaseF__FPfff
/* 80C610F0  7C 7D 1B 78 */	mr r29, r3
/* 80C610F4  A0 1E 09 58 */	lhz r0, 0x958(r30)
/* 80C610F8  28 00 00 05 */	cmplwi r0, 5
/* 80C610FC  40 82 00 38 */	bne lbl_80C61134
/* 80C61100  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C61104  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 80C61108  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C6110C  D0 01 00 50 */	stfs f0, 0x50(r1)
/* 80C61110  D0 21 00 54 */	stfs f1, 0x54(r1)
/* 80C61114  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C61118  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C6111C  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C61120  38 80 00 02 */	li r4, 2
/* 80C61124  38 A0 00 0F */	li r5, 0xf
/* 80C61128  38 C1 00 4C */	addi r6, r1, 0x4c
/* 80C6112C  4B 40 E9 E4 */	b StartQuake__12dVibration_cFii4cXyz
/* 80C61130  48 00 01 44 */	b lbl_80C61274
lbl_80C61134:
/* 80C61134  40 81 01 40 */	ble lbl_80C61274
/* 80C61138  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C6113C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C61140  40 80 00 48 */	bge lbl_80C61188
/* 80C61144  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80C61148  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C6114C  4C 41 13 82 */	cror 2, 1, 2
/* 80C61150  40 82 00 38 */	bne lbl_80C61188
/* 80C61154  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C61158  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 80C6115C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C61160  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80C61164  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80C61168  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6116C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C61170  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C61174  38 80 00 04 */	li r4, 4
/* 80C61178  38 A0 00 0F */	li r5, 0xf
/* 80C6117C  38 C1 00 40 */	addi r6, r1, 0x40
/* 80C61180  4B 40 E9 90 */	b StartQuake__12dVibration_cFii4cXyz
/* 80C61184  48 00 00 F0 */	b lbl_80C61274
lbl_80C61188:
/* 80C61188  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80C6118C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C61190  40 80 00 48 */	bge lbl_80C611D8
/* 80C61194  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80C61198  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C6119C  4C 41 13 82 */	cror 2, 1, 2
/* 80C611A0  40 82 00 38 */	bne lbl_80C611D8
/* 80C611A4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C611A8  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 80C611AC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C611B0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80C611B4  D0 21 00 3C */	stfs f1, 0x3c(r1)
/* 80C611B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C611BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C611C0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C611C4  38 80 00 08 */	li r4, 8
/* 80C611C8  38 A0 00 0F */	li r5, 0xf
/* 80C611CC  38 C1 00 34 */	addi r6, r1, 0x34
/* 80C611D0  4B 40 E9 40 */	b StartQuake__12dVibration_cFii4cXyz
/* 80C611D4  48 00 00 A0 */	b lbl_80C61274
lbl_80C611D8:
/* 80C611D8  C0 3F 00 70 */	lfs f1, 0x70(r31)
/* 80C611DC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C611E0  40 81 00 48 */	ble lbl_80C61228
/* 80C611E4  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80C611E8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C611EC  4C 40 13 82 */	cror 2, 0, 2
/* 80C611F0  40 82 00 38 */	bne lbl_80C61228
/* 80C611F4  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C611F8  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C611FC  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C61200  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C61204  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C61208  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6120C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C61210  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C61214  38 80 00 04 */	li r4, 4
/* 80C61218  38 A0 00 0F */	li r5, 0xf
/* 80C6121C  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C61220  4B 40 E8 F0 */	b StartQuake__12dVibration_cFii4cXyz
/* 80C61224  48 00 00 50 */	b lbl_80C61274
lbl_80C61228:
/* 80C61228  C0 3F 00 6C */	lfs f1, 0x6c(r31)
/* 80C6122C  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C61230  40 81 00 44 */	ble lbl_80C61274
/* 80C61234  C0 1E 04 FC */	lfs f0, 0x4fc(r30)
/* 80C61238  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80C6123C  4C 40 13 82 */	cror 2, 0, 2
/* 80C61240  40 82 00 34 */	bne lbl_80C61274
/* 80C61244  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C61248  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C6124C  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C61250  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C61254  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C61258  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C6125C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C61260  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C61264  38 80 00 02 */	li r4, 2
/* 80C61268  38 A0 00 0F */	li r5, 0xf
/* 80C6126C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80C61270  4B 40 E8 A0 */	b StartQuake__12dVibration_cFii4cXyz
lbl_80C61274:
/* 80C61274  2C 1D 00 00 */	cmpwi r29, 0
/* 80C61278  41 82 00 B4 */	beq lbl_80C6132C
/* 80C6127C  3C 60 80 C6 */	lis r3, s_BossSearch__FPvPv@ha
/* 80C61280  38 63 0A 78 */	addi r3, r3, s_BossSearch__FPvPv@l
/* 80C61284  7F C4 F3 78 */	mr r4, r30
/* 80C61288  4B 3C 00 B0 */	b fpcEx_Search__FPFPvPv_PvPv
/* 80C6128C  38 00 00 00 */	li r0, 0
/* 80C61290  98 03 08 51 */	stb r0, 0x851(r3)
/* 80C61294  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C61298  7C 03 07 74 */	extsb r3, r0
/* 80C6129C  4B 3C BD D0 */	b dComIfGp_getReverb__Fi
/* 80C612A0  7C 67 1B 78 */	mr r7, r3
/* 80C612A4  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008027A@ha */
/* 80C612A8  38 03 02 7A */	addi r0, r3, 0x027A /* 0x0008027A@l */
/* 80C612AC  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C612B0  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C612B4  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C612B8  80 63 00 00 */	lwz r3, 0(r3)
/* 80C612BC  38 81 00 0C */	addi r4, r1, 0xc
/* 80C612C0  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C612C4  38 C0 00 00 */	li r6, 0
/* 80C612C8  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C612CC  FC 40 08 90 */	fmr f2, f1
/* 80C612D0  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80C612D4  FC 80 18 90 */	fmr f4, f3
/* 80C612D8  39 00 00 00 */	li r8, 0
/* 80C612DC  4B 64 A6 A8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C612E0  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C612E4  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C612E8  3B A3 5B D4 */	addi r29, r3, 0x5bd4
/* 80C612EC  7F A3 EB 78 */	mr r3, r29
/* 80C612F0  38 80 00 1F */	li r4, 0x1f
/* 80C612F4  4B 40 EA A0 */	b StopQuake__12dVibration_cFi
/* 80C612F8  C0 3F 00 04 */	lfs f1, 4(r31)
/* 80C612FC  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C61300  C0 1F 00 68 */	lfs f0, 0x68(r31)
/* 80C61304  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C61308  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C6130C  7F A3 EB 78 */	mr r3, r29
/* 80C61310  38 80 00 08 */	li r4, 8
/* 80C61314  38 A0 00 1F */	li r5, 0x1f
/* 80C61318  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C6131C  4B 40 E7 08 */	b StartShock__12dVibration_cFii4cXyz
/* 80C61320  7F C3 F3 78 */	mr r3, r30
/* 80C61324  48 00 00 9D */	bl mode_init_dead__14daObjLv4Wall_cFv
/* 80C61328  48 00 00 78 */	b lbl_80C613A0
lbl_80C6132C:
/* 80C6132C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80C61330  D0 1E 05 38 */	stfs f0, 0x538(r30)
/* 80C61334  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80C61338  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C6133C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80C61340  D0 1E 05 40 */	stfs f0, 0x540(r30)
/* 80C61344  C0 3E 05 3C */	lfs f1, 0x53c(r30)
/* 80C61348  C0 1E 09 50 */	lfs f0, 0x950(r30)
/* 80C6134C  EC 01 00 2A */	fadds f0, f1, f0
/* 80C61350  D0 1E 05 3C */	stfs f0, 0x53c(r30)
/* 80C61354  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C61358  7C 03 07 74 */	extsb r3, r0
/* 80C6135C  4B 3C BD 10 */	b dComIfGp_getReverb__Fi
/* 80C61360  7C 67 1B 78 */	mr r7, r3
/* 80C61364  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080279@ha */
/* 80C61368  38 03 02 79 */	addi r0, r3, 0x0279 /* 0x00080279@l */
/* 80C6136C  90 01 00 08 */	stw r0, 8(r1)
/* 80C61370  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C61374  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C61378  80 63 00 00 */	lwz r3, 0(r3)
/* 80C6137C  38 81 00 08 */	addi r4, r1, 8
/* 80C61380  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C61384  38 C0 00 00 */	li r6, 0
/* 80C61388  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 80C6138C  FC 40 08 90 */	fmr f2, f1
/* 80C61390  C0 7F 00 74 */	lfs f3, 0x74(r31)
/* 80C61394  FC 80 18 90 */	fmr f4, f3
/* 80C61398  39 00 00 00 */	li r8, 0
/* 80C6139C  4B 64 B1 70 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C613A0:
/* 80C613A0  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 80C613A4  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 80C613A8  39 61 00 70 */	addi r11, r1, 0x70
/* 80C613AC  4B 70 0E 7C */	b _restgpr_29
/* 80C613B0  80 01 00 84 */	lwz r0, 0x84(r1)
/* 80C613B4  7C 08 03 A6 */	mtlr r0
/* 80C613B8  38 21 00 80 */	addi r1, r1, 0x80
/* 80C613BC  4E 80 00 20 */	blr 
