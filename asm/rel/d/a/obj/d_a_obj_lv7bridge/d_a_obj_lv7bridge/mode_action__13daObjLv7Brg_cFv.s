lbl_80C86F44:
/* 80C86F44  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80C86F48  7C 08 02 A6 */	mflr r0
/* 80C86F4C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80C86F50  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80C86F54  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80C86F58  DB C1 00 50 */	stfd f30, 0x50(r1)
/* 80C86F5C  F3 C1 00 58 */	psq_st f30, 88(r1), 0, 0 /* qr0 */
/* 80C86F60  39 61 00 50 */	addi r11, r1, 0x50
/* 80C86F64  4B 6D B2 78 */	b _savegpr_29
/* 80C86F68  7C 7E 1B 78 */	mr r30, r3
/* 80C86F6C  3C 60 80 C8 */	lis r3, l_bmd@ha
/* 80C86F70  3B E3 79 A0 */	addi r31, r3, l_bmd@l
/* 80C86F74  C3 FE 0A 78 */	lfs f31, 0xa78(r30)
/* 80C86F78  C3 DE 05 2C */	lfs f30, 0x52c(r30)
/* 80C86F7C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C86F80  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C86F84  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C86F88  54 04 06 3E */	clrlwi r4, r0, 0x18
/* 80C86F8C  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C86F90  7C 05 07 74 */	extsb r5, r0
/* 80C86F94  4B 3A E3 CC */	b isSwitch__10dSv_info_cCFii
/* 80C86F98  2C 03 00 00 */	cmpwi r3, 0
/* 80C86F9C  41 82 00 24 */	beq lbl_80C86FC0
/* 80C86FA0  C0 3F 00 30 */	lfs f1, 0x30(r31)
/* 80C86FA4  C0 1E 0A 78 */	lfs f0, 0xa78(r30)
/* 80C86FA8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C86FAC  40 82 00 0C */	bne lbl_80C86FB8
/* 80C86FB0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C86FB4  48 00 00 24 */	b lbl_80C86FD8
lbl_80C86FB8:
/* 80C86FB8  C0 3F 00 54 */	lfs f1, 0x54(r31)
/* 80C86FBC  48 00 00 1C */	b lbl_80C86FD8
lbl_80C86FC0:
/* 80C86FC0  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C86FC4  C0 1E 0A 78 */	lfs f0, 0xa78(r30)
/* 80C86FC8  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C86FCC  40 82 00 08 */	bne lbl_80C86FD4
/* 80C86FD0  48 00 00 08 */	b lbl_80C86FD8
lbl_80C86FD4:
/* 80C86FD4  C0 3F 00 58 */	lfs f1, 0x58(r31)
lbl_80C86FD8:
/* 80C86FD8  38 7E 05 2C */	addi r3, r30, 0x52c
/* 80C86FDC  C0 5F 00 5C */	lfs f2, 0x5c(r31)
/* 80C86FE0  C0 7F 00 48 */	lfs f3, 0x48(r31)
/* 80C86FE4  C0 9F 00 60 */	lfs f4, 0x60(r31)
/* 80C86FE8  4B 5E 89 94 */	b cLib_addCalc__FPfffff
/* 80C86FEC  C0 3E 0A 78 */	lfs f1, 0xa78(r30)
/* 80C86FF0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80C86FF4  EC 01 00 2A */	fadds f0, f1, f0
/* 80C86FF8  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 80C86FFC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80C87000  C0 3E 05 2C */	lfs f1, 0x52c(r30)
/* 80C87004  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 80C87008  41 82 00 68 */	beq lbl_80C87070
/* 80C8700C  C0 1F 00 64 */	lfs f0, 0x64(r31)
/* 80C87010  EC 20 00 72 */	fmuls f1, f0, f1
/* 80C87014  C0 1F 00 54 */	lfs f0, 0x54(r31)
/* 80C87018  EC 21 00 24 */	fdivs f1, f1, f0
/* 80C8701C  4B 6D B0 90 */	b __cvt_fp2unsigned
/* 80C87020  7C 7D 1B 78 */	mr r29, r3
/* 80C87024  88 1E 04 E2 */	lbz r0, 0x4e2(r30)
/* 80C87028  7C 03 07 74 */	extsb r3, r0
/* 80C8702C  4B 3A 60 40 */	b dComIfGp_getReverb__Fi
/* 80C87030  7C 67 1B 78 */	mr r7, r3
/* 80C87034  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008025F@ha */
/* 80C87038  38 03 02 5F */	addi r0, r3, 0x025F /* 0x0008025F@l */
/* 80C8703C  90 01 00 08 */	stw r0, 8(r1)
/* 80C87040  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C87044  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C87048  80 63 00 00 */	lwz r3, 0(r3)
/* 80C8704C  38 81 00 08 */	addi r4, r1, 8
/* 80C87050  38 BE 05 38 */	addi r5, r30, 0x538
/* 80C87054  7F A6 EB 78 */	mr r6, r29
/* 80C87058  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C8705C  FC 40 08 90 */	fmr f2, f1
/* 80C87060  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 80C87064  FC 80 18 90 */	fmr f4, f3
/* 80C87068  39 00 00 00 */	li r8, 0
/* 80C8706C  4B 62 54 A0 */	b seStartLevel__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
lbl_80C87070:
/* 80C87070  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C87074  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 80C87078  FC 01 00 00 */	fcmpu cr0, f1, f0
/* 80C8707C  41 82 00 38 */	beq lbl_80C870B4
/* 80C87080  FC 01 F0 00 */	fcmpu cr0, f1, f30
/* 80C87084  40 82 00 30 */	bne lbl_80C870B4
/* 80C87088  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 80C8708C  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C87090  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 80C87094  D0 21 00 30 */	stfs f1, 0x30(r1)
/* 80C87098  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C8709C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C870A0  38 63 5B D4 */	addi r3, r3, 0x5bd4
/* 80C870A4  38 80 00 02 */	li r4, 2
/* 80C870A8  38 A0 00 0F */	li r5, 0xf
/* 80C870AC  38 C1 00 28 */	addi r6, r1, 0x28
/* 80C870B0  4B 3E 8A 60 */	b StartQuake__12dVibration_cFii4cXyz
lbl_80C870B4:
/* 80C870B4  C0 5E 0A 78 */	lfs f2, 0xa78(r30)
/* 80C870B8  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C870BC  FC 02 08 40 */	fcmpo cr0, f2, f1
/* 80C870C0  40 80 00 58 */	bge lbl_80C87118
/* 80C870C4  D0 3E 0A 78 */	stfs f1, 0xa78(r30)
/* 80C870C8  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80C870CC  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C870D0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C870D4  3B C3 5B D4 */	addi r30, r3, 0x5bd4
/* 80C870D8  7F C3 F3 78 */	mr r3, r30
/* 80C870DC  38 80 00 1F */	li r4, 0x1f
/* 80C870E0  4B 3E 8C B4 */	b StopQuake__12dVibration_cFi
/* 80C870E4  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C870E8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 80C870EC  40 81 00 FC */	ble lbl_80C871E8
/* 80C870F0  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 80C870F4  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C870F8  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80C870FC  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 80C87100  7F C3 F3 78 */	mr r3, r30
/* 80C87104  38 80 00 08 */	li r4, 8
/* 80C87108  38 A0 00 1F */	li r5, 0x1f
/* 80C8710C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 80C87110  4B 3E 89 14 */	b StartShock__12dVibration_cFii4cXyz
/* 80C87114  48 00 00 D4 */	b lbl_80C871E8
lbl_80C87118:
/* 80C87118  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C8711C  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 80C87120  40 81 00 C8 */	ble lbl_80C871E8
/* 80C87124  D0 1E 0A 78 */	stfs f0, 0xa78(r30)
/* 80C87128  D0 3E 05 2C */	stfs f1, 0x52c(r30)
/* 80C8712C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C87130  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C87134  3B A3 5B D4 */	addi r29, r3, 0x5bd4
/* 80C87138  7F A3 EB 78 */	mr r3, r29
/* 80C8713C  38 80 00 1F */	li r4, 0x1f
/* 80C87140  4B 3E 8C 54 */	b StopQuake__12dVibration_cFi
/* 80C87144  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 80C87148  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80C8714C  40 80 00 9C */	bge lbl_80C871E8
/* 80C87150  3C 60 00 08 */	lis r3, 0x0008 /* 0x00080260@ha */
/* 80C87154  38 03 02 60 */	addi r0, r3, 0x0260 /* 0x00080260@l */
/* 80C87158  90 01 00 0C */	stw r0, 0xc(r1)
/* 80C8715C  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 80C87160  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 80C87164  80 63 00 00 */	lwz r3, 0(r3)
/* 80C87168  38 81 00 0C */	addi r4, r1, 0xc
/* 80C8716C  38 BE 0A 98 */	addi r5, r30, 0xa98
/* 80C87170  38 C0 00 00 */	li r6, 0
/* 80C87174  38 E0 00 00 */	li r7, 0
/* 80C87178  C0 3F 00 48 */	lfs f1, 0x48(r31)
/* 80C8717C  FC 40 08 90 */	fmr f2, f1
/* 80C87180  C0 7F 00 68 */	lfs f3, 0x68(r31)
/* 80C87184  FC 80 18 90 */	fmr f4, f3
/* 80C87188  39 00 00 00 */	li r8, 0
/* 80C8718C  4B 62 47 F8 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 80C87190  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80C87194  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 80C87198  C0 1F 00 48 */	lfs f0, 0x48(r31)
/* 80C8719C  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80C871A0  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 80C871A4  7F A3 EB 78 */	mr r3, r29
/* 80C871A8  38 80 00 08 */	li r4, 8
/* 80C871AC  38 A0 00 1F */	li r5, 0x1f
/* 80C871B0  38 C1 00 10 */	addi r6, r1, 0x10
/* 80C871B4  4B 3E 88 70 */	b StartShock__12dVibration_cFii4cXyz
/* 80C871B8  88 1E 0A 7C */	lbz r0, 0xa7c(r30)
/* 80C871BC  28 00 00 00 */	cmplwi r0, 0
/* 80C871C0  40 82 00 28 */	bne lbl_80C871E8
/* 80C871C4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80C871C8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80C871CC  80 1E 00 B0 */	lwz r0, 0xb0(r30)
/* 80C871D0  54 04 C6 3E */	rlwinm r4, r0, 0x18, 0x18, 0x1f
/* 80C871D4  88 1E 04 BA */	lbz r0, 0x4ba(r30)
/* 80C871D8  7C 05 07 74 */	extsb r5, r0
/* 80C871DC  4B 3A E0 24 */	b onSwitch__10dSv_info_cFii
/* 80C871E0  38 00 00 01 */	li r0, 1
/* 80C871E4  98 1E 0A 7D */	stb r0, 0xa7d(r30)
lbl_80C871E8:
/* 80C871E8  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80C871EC  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80C871F0  E3 C1 00 58 */	psq_l f30, 88(r1), 0, 0 /* qr0 */
/* 80C871F4  CB C1 00 50 */	lfd f30, 0x50(r1)
/* 80C871F8  39 61 00 50 */	addi r11, r1, 0x50
/* 80C871FC  4B 6D B0 2C */	b _restgpr_29
/* 80C87200  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80C87204  7C 08 03 A6 */	mtlr r0
/* 80C87208  38 21 00 70 */	addi r1, r1, 0x70
/* 80C8720C  4E 80 00 20 */	blr 
