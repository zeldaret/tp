lbl_801E3FC4:
/* 801E3FC4  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 801E3FC8  7C 08 02 A6 */	mflr r0
/* 801E3FCC  90 01 00 34 */	stw r0, 0x34(r1)
/* 801E3FD0  39 61 00 30 */	addi r11, r1, 0x30
/* 801E3FD4  48 17 E2 09 */	bl _savegpr_29
/* 801E3FD8  7C 7F 1B 78 */	mr r31, r3
/* 801E3FDC  80 63 00 58 */	lwz r3, 0x58(r3)
/* 801E3FE0  4B E4 E5 C1 */	bl checkDownTrigger__9STControlFv
/* 801E3FE4  7C 7D 1B 78 */	mr r29, r3
/* 801E3FE8  7F E3 FB 78 */	mr r3, r31
/* 801E3FEC  4B FF FA B9 */	bl checkLeftTrigger__14dMenu_Option_cFv
/* 801E3FF0  7C 7E 1B 78 */	mr r30, r3
/* 801E3FF4  7F E3 FB 78 */	mr r3, r31
/* 801E3FF8  4B FF FA D1 */	bl checkRightTrigger__14dMenu_Option_cFv
/* 801E3FFC  88 1F 03 F3 */	lbz r0, 0x3f3(r31)
/* 801E4000  28 00 00 05 */	cmplwi r0, 5
/* 801E4004  41 82 00 24 */	beq lbl_801E4028
/* 801E4008  7F E3 FB 78 */	mr r3, r31
/* 801E400C  1C A0 00 0C */	mulli r5, r0, 0xc
/* 801E4010  3C 80 80 3C */	lis r4, tv_process@ha
/* 801E4014  38 04 DD 70 */	addi r0, r4, tv_process@l
/* 801E4018  7D 80 2A 14 */	add r12, r0, r5
/* 801E401C  48 17 E0 69 */	bl __ptmf_scall
/* 801E4020  60 00 00 00 */	nop 
/* 801E4024  48 00 01 64 */	b lbl_801E4188
lbl_801E4028:
/* 801E4028  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 801E402C  41 82 00 44 */	beq lbl_801E4070
/* 801E4030  38 00 00 01 */	li r0, 1
/* 801E4034  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E4038  38 00 00 4C */	li r0, 0x4c
/* 801E403C  90 01 00 10 */	stw r0, 0x10(r1)
/* 801E4040  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4044  38 81 00 10 */	addi r4, r1, 0x10
/* 801E4048  38 A0 00 00 */	li r5, 0
/* 801E404C  38 C0 00 00 */	li r6, 0
/* 801E4050  38 E0 00 00 */	li r7, 0
/* 801E4054  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4058  FC 40 08 90 */	fmr f2, f1
/* 801E405C  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4060  FC 80 18 90 */	fmr f4, f3
/* 801E4064  39 00 00 00 */	li r8, 0
/* 801E4068  48 0C 79 1D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E406C  48 00 01 1C */	b lbl_801E4188
lbl_801E4070:
/* 801E4070  57 C0 06 3F */	clrlwi. r0, r30, 0x18
/* 801E4074  41 82 00 84 */	beq lbl_801E40F8
/* 801E4078  88 1F 03 E4 */	lbz r0, 0x3e4(r31)
/* 801E407C  28 00 00 00 */	cmplwi r0, 0
/* 801E4080  40 82 00 18 */	bne lbl_801E4098
/* 801E4084  38 00 00 01 */	li r0, 1
/* 801E4088  98 1F 03 E4 */	stb r0, 0x3e4(r31)
/* 801E408C  38 00 FF FB */	li r0, -5
/* 801E4090  B0 1F 03 DA */	sth r0, 0x3da(r31)
/* 801E4094  48 00 00 1C */	b lbl_801E40B0
lbl_801E4098:
/* 801E4098  28 00 00 01 */	cmplwi r0, 1
/* 801E409C  40 82 00 14 */	bne lbl_801E40B0
/* 801E40A0  38 00 00 00 */	li r0, 0
/* 801E40A4  98 1F 03 E4 */	stb r0, 0x3e4(r31)
/* 801E40A8  38 00 FF FB */	li r0, -5
/* 801E40AC  B0 1F 03 DA */	sth r0, 0x3da(r31)
lbl_801E40B0:
/* 801E40B0  38 00 00 03 */	li r0, 3
/* 801E40B4  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E40B8  38 00 00 00 */	li r0, 0
/* 801E40BC  98 1F 03 F5 */	stb r0, 0x3f5(r31)
/* 801E40C0  38 00 00 C8 */	li r0, 0xc8
/* 801E40C4  90 01 00 0C */	stw r0, 0xc(r1)
/* 801E40C8  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E40CC  38 81 00 0C */	addi r4, r1, 0xc
/* 801E40D0  38 A0 00 00 */	li r5, 0
/* 801E40D4  38 C0 00 00 */	li r6, 0
/* 801E40D8  38 E0 00 00 */	li r7, 0
/* 801E40DC  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E40E0  FC 40 08 90 */	fmr f2, f1
/* 801E40E4  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E40E8  FC 80 18 90 */	fmr f4, f3
/* 801E40EC  39 00 00 00 */	li r8, 0
/* 801E40F0  48 0C 78 95 */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E40F4  48 00 00 94 */	b lbl_801E4188
lbl_801E40F8:
/* 801E40F8  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 801E40FC  41 82 00 84 */	beq lbl_801E4180
/* 801E4100  88 1F 03 E4 */	lbz r0, 0x3e4(r31)
/* 801E4104  28 00 00 00 */	cmplwi r0, 0
/* 801E4108  40 82 00 18 */	bne lbl_801E4120
/* 801E410C  38 00 00 01 */	li r0, 1
/* 801E4110  98 1F 03 E4 */	stb r0, 0x3e4(r31)
/* 801E4114  38 00 00 05 */	li r0, 5
/* 801E4118  B0 1F 03 DA */	sth r0, 0x3da(r31)
/* 801E411C  48 00 00 1C */	b lbl_801E4138
lbl_801E4120:
/* 801E4120  28 00 00 01 */	cmplwi r0, 1
/* 801E4124  40 82 00 14 */	bne lbl_801E4138
/* 801E4128  38 00 00 00 */	li r0, 0
/* 801E412C  98 1F 03 E4 */	stb r0, 0x3e4(r31)
/* 801E4130  38 00 00 05 */	li r0, 5
/* 801E4134  B0 1F 03 DA */	sth r0, 0x3da(r31)
lbl_801E4138:
/* 801E4138  38 00 00 03 */	li r0, 3
/* 801E413C  98 1F 03 EF */	stb r0, 0x3ef(r31)
/* 801E4140  38 00 00 00 */	li r0, 0
/* 801E4144  98 1F 03 F5 */	stb r0, 0x3f5(r31)
/* 801E4148  38 00 00 C8 */	li r0, 0xc8
/* 801E414C  90 01 00 08 */	stw r0, 8(r1)
/* 801E4150  80 6D 8D E8 */	lwz r3, mAudioMgrPtr__10Z2AudioMgr(r13)
/* 801E4154  38 81 00 08 */	addi r4, r1, 8
/* 801E4158  38 A0 00 00 */	li r5, 0
/* 801E415C  38 C0 00 00 */	li r6, 0
/* 801E4160  38 E0 00 00 */	li r7, 0
/* 801E4164  C0 22 A9 30 */	lfs f1, lit_4069(r2)
/* 801E4168  FC 40 08 90 */	fmr f2, f1
/* 801E416C  C0 62 A9 54 */	lfs f3, lit_4472(r2)
/* 801E4170  FC 80 18 90 */	fmr f4, f3
/* 801E4174  39 00 00 00 */	li r8, 0
/* 801E4178  48 0C 78 0D */	bl seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 801E417C  48 00 00 0C */	b lbl_801E4188
lbl_801E4180:
/* 801E4180  7F E3 FB 78 */	mr r3, r31
/* 801E4184  48 00 3C 71 */	bl changeTVCheck__14dMenu_Option_cFv
lbl_801E4188:
/* 801E4188  39 61 00 30 */	addi r11, r1, 0x30
/* 801E418C  48 17 E0 9D */	bl _restgpr_29
/* 801E4190  80 01 00 34 */	lwz r0, 0x34(r1)
/* 801E4194  7C 08 03 A6 */	mtlr r0
/* 801E4198  38 21 00 30 */	addi r1, r1, 0x30
/* 801E419C  4E 80 00 20 */	blr 
