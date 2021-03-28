lbl_80B7B1DC:
/* 80B7B1DC  94 21 FF 40 */	stwu r1, -0xc0(r1)
/* 80B7B1E0  7C 08 02 A6 */	mflr r0
/* 80B7B1E4  90 01 00 C4 */	stw r0, 0xc4(r1)
/* 80B7B1E8  DB E1 00 B0 */	stfd f31, 0xb0(r1)
/* 80B7B1EC  F3 E1 00 B8 */	psq_st f31, 184(r1), 0, 0 /* qr0 */
/* 80B7B1F0  DB C1 00 A0 */	stfd f30, 0xa0(r1)
/* 80B7B1F4  F3 C1 00 A8 */	psq_st f30, 168(r1), 0, 0 /* qr0 */
/* 80B7B1F8  DB A1 00 90 */	stfd f29, 0x90(r1)
/* 80B7B1FC  F3 A1 00 98 */	psq_st f29, 152(r1), 0, 0 /* qr0 */
/* 80B7B200  39 61 00 90 */	addi r11, r1, 0x90
/* 80B7B204  4B 7E 6F C4 */	b _savegpr_24
/* 80B7B208  7C 7C 1B 78 */	mr r28, r3
/* 80B7B20C  3C 60 80 B9 */	lis r3, lit_1109@ha
/* 80B7B210  3B A3 DA 48 */	addi r29, r3, lit_1109@l
/* 80B7B214  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B7B218  3B C3 C4 58 */	addi r30, r3, m__17daNpc_zrA_Param_c@l
/* 80B7B21C  88 1D 00 5C */	lbz r0, 0x5c(r29)
/* 80B7B220  7C 00 07 75 */	extsb. r0, r0
/* 80B7B224  40 82 00 38 */	bne lbl_80B7B25C
/* 80B7B228  C0 1E 01 0C */	lfs f0, 0x10c(r30)
/* 80B7B22C  D0 1D 00 60 */	stfs f0, 0x60(r29)
/* 80B7B230  C0 1E 01 10 */	lfs f0, 0x110(r30)
/* 80B7B234  38 7D 00 60 */	addi r3, r29, 0x60
/* 80B7B238  D0 03 00 04 */	stfs f0, 4(r3)
/* 80B7B23C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B7B240  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B7B244  3C 80 80 B8 */	lis r4, __dt__4cXyzFv@ha
/* 80B7B248  38 84 87 30 */	addi r4, r4, __dt__4cXyzFv@l
/* 80B7B24C  38 BD 00 50 */	addi r5, r29, 0x50
/* 80B7B250  4B FF D2 49 */	bl __register_global_object
/* 80B7B254  38 00 00 01 */	li r0, 1
/* 80B7B258  98 1D 00 5C */	stb r0, 0x5c(r29)
lbl_80B7B25C:
/* 80B7B25C  C3 FE 00 00 */	lfs f31, 0(r30)
/* 80B7B260  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7B264  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7B268  A8 9C 09 90 */	lha r4, 0x990(r28)
/* 80B7B26C  4B 49 11 70 */	b mDoMtx_YrotS__FPA4_fs
/* 80B7B270  38 7C 09 84 */	addi r3, r28, 0x984
/* 80B7B274  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80B7B278  C0 5E 01 14 */	lfs f2, 0x114(r30)
/* 80B7B27C  C0 7E 01 18 */	lfs f3, 0x118(r30)
/* 80B7B280  4B 6F 47 BC */	b cLib_addCalc2__FPffff
/* 80B7B284  38 7C 09 8C */	addi r3, r28, 0x98c
/* 80B7B288  C0 3E 00 B0 */	lfs f1, 0xb0(r30)
/* 80B7B28C  C0 5E 01 14 */	lfs f2, 0x114(r30)
/* 80B7B290  C0 7E 01 18 */	lfs f3, 0x118(r30)
/* 80B7B294  4B 6F 47 A8 */	b cLib_addCalc2__FPffff
/* 80B7B298  3B 00 00 00 */	li r24, 0
/* 80B7B29C  3B E0 00 00 */	li r31, 0
/* 80B7B2A0  3B 60 00 00 */	li r27, 0
/* 80B7B2A4  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 80B7B2A8  3B 23 9A 20 */	addi r25, r3, sincosTable___5JMath@l
/* 80B7B2AC  C3 DE 00 B0 */	lfs f30, 0xb0(r30)
/* 80B7B2B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7B2B4  3B 43 D4 70 */	addi r26, r3, now__14mDoMtx_stack_c@l
lbl_80B7B2B8:
/* 80B7B2B8  A8 1C 09 92 */	lha r0, 0x992(r28)
/* 80B7B2BC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 80B7B2C0  7C 39 04 2E */	lfsx f1, r25, r0
/* 80B7B2C4  38 1B 09 84 */	addi r0, r27, 0x984
/* 80B7B2C8  7C 1C 04 2E */	lfsx f0, r28, r0
/* 80B7B2CC  EC 00 00 72 */	fmuls f0, f0, f1
/* 80B7B2D0  D3 C1 00 3C */	stfs f30, 0x3c(r1)
/* 80B7B2D4  D3 C1 00 40 */	stfs f30, 0x40(r1)
/* 80B7B2D8  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B7B2DC  7F 43 D3 78 */	mr r3, r26
/* 80B7B2E0  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B7B2E4  38 A1 00 30 */	addi r5, r1, 0x30
/* 80B7B2E8  4B 7C BA 84 */	b PSMTXMultVec
/* 80B7B2EC  C0 01 00 38 */	lfs f0, 0x38(r1)
/* 80B7B2F0  FC 00 00 50 */	fneg f0, f0
/* 80B7B2F4  FC 00 00 1E */	fctiwz f0, f0
/* 80B7B2F8  D8 01 00 60 */	stfd f0, 0x60(r1)
/* 80B7B2FC  80 01 00 64 */	lwz r0, 0x64(r1)
/* 80B7B300  7C 7C FA 14 */	add r3, r28, r31
/* 80B7B304  B0 03 09 08 */	sth r0, 0x908(r3)
/* 80B7B308  C0 01 00 30 */	lfs f0, 0x30(r1)
/* 80B7B30C  FC 00 00 50 */	fneg f0, f0
/* 80B7B310  FC 00 00 1E */	fctiwz f0, f0
/* 80B7B314  D8 01 00 68 */	stfd f0, 0x68(r1)
/* 80B7B318  80 01 00 6C */	lwz r0, 0x6c(r1)
/* 80B7B31C  B0 03 09 0C */	sth r0, 0x90c(r3)
/* 80B7B320  3B 18 00 01 */	addi r24, r24, 1
/* 80B7B324  2C 18 00 03 */	cmpwi r24, 3
/* 80B7B328  3B FF 00 06 */	addi r31, r31, 6
/* 80B7B32C  3B 7B 00 04 */	addi r27, r27, 4
/* 80B7B330  41 80 FF 88 */	blt lbl_80B7B2B8
/* 80B7B334  38 7C 09 92 */	addi r3, r28, 0x992
/* 80B7B338  38 80 00 00 */	li r4, 0
/* 80B7B33C  38 A0 05 55 */	li r5, 0x555
/* 80B7B340  4B 6F 53 90 */	b cLib_chaseS__FPsss
/* 80B7B344  A8 1C 14 E4 */	lha r0, 0x14e4(r28)
/* 80B7B348  2C 00 00 01 */	cmpwi r0, 1
/* 80B7B34C  40 82 00 2C */	bne lbl_80B7B378
/* 80B7B350  38 60 00 00 */	li r3, 0
/* 80B7B354  38 80 00 00 */	li r4, 0
/* 80B7B358  38 00 00 03 */	li r0, 3
/* 80B7B35C  7C 09 03 A6 */	mtctr r0
lbl_80B7B360:
/* 80B7B360  7C BC 1A 14 */	add r5, r28, r3
/* 80B7B364  B0 85 09 1A */	sth r4, 0x91a(r5)
/* 80B7B368  B0 85 09 1C */	sth r4, 0x91c(r5)
/* 80B7B36C  B0 85 09 1E */	sth r4, 0x91e(r5)
/* 80B7B370  38 63 00 06 */	addi r3, r3, 6
/* 80B7B374  42 00 FF EC */	bdnz lbl_80B7B360
lbl_80B7B378:
/* 80B7B378  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B7B37C  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7B380  80 83 00 04 */	lwz r4, 4(r3)
/* 80B7B384  38 C0 00 00 */	li r6, 0
/* 80B7B388  48 00 00 78 */	b lbl_80B7B400
lbl_80B7B38C:
/* 80B7B38C  54 C0 04 3E */	clrlwi r0, r6, 0x10
/* 80B7B390  2C 00 00 0E */	cmpwi r0, 0xe
/* 80B7B394  41 82 00 38 */	beq lbl_80B7B3CC
/* 80B7B398  40 80 00 28 */	bge lbl_80B7B3C0
/* 80B7B39C  2C 00 00 02 */	cmpwi r0, 2
/* 80B7B3A0  41 82 00 48 */	beq lbl_80B7B3E8
/* 80B7B3A4  40 80 00 10 */	bge lbl_80B7B3B4
/* 80B7B3A8  2C 00 00 00 */	cmpwi r0, 0
/* 80B7B3AC  40 80 00 20 */	bge lbl_80B7B3CC
/* 80B7B3B0  48 00 00 38 */	b lbl_80B7B3E8
lbl_80B7B3B4:
/* 80B7B3B4  2C 00 00 06 */	cmpwi r0, 6
/* 80B7B3B8  40 80 00 30 */	bge lbl_80B7B3E8
/* 80B7B3BC  48 00 00 10 */	b lbl_80B7B3CC
lbl_80B7B3C0:
/* 80B7B3C0  2C 00 00 1D */	cmpwi r0, 0x1d
/* 80B7B3C4  41 82 00 08 */	beq lbl_80B7B3CC
/* 80B7B3C8  48 00 00 20 */	b lbl_80B7B3E8
lbl_80B7B3CC:
/* 80B7B3CC  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80B7B3D0  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B7B3D4  7C A3 00 2E */	lwzx r5, r3, r0
/* 80B7B3D8  3C 60 80 B8 */	lis r3, ctrlJointCallBack__11daNpc_zrA_cFP8J3DJointi@ha
/* 80B7B3DC  38 03 AB BC */	addi r0, r3, ctrlJointCallBack__11daNpc_zrA_cFP8J3DJointi@l
/* 80B7B3E0  90 05 00 04 */	stw r0, 4(r5)
/* 80B7B3E4  48 00 00 18 */	b lbl_80B7B3FC
lbl_80B7B3E8:
/* 80B7B3E8  80 64 00 28 */	lwz r3, 0x28(r4)
/* 80B7B3EC  54 C0 13 BA */	rlwinm r0, r6, 2, 0xe, 0x1d
/* 80B7B3F0  7C 63 00 2E */	lwzx r3, r3, r0
/* 80B7B3F4  38 00 00 00 */	li r0, 0
/* 80B7B3F8  90 03 00 04 */	stw r0, 4(r3)
lbl_80B7B3FC:
/* 80B7B3FC  38 C6 00 01 */	addi r6, r6, 1
lbl_80B7B400:
/* 80B7B400  54 C3 04 3E */	clrlwi r3, r6, 0x10
/* 80B7B404  A0 04 00 2C */	lhz r0, 0x2c(r4)
/* 80B7B408  7C 03 00 40 */	cmplw r3, r0
/* 80B7B40C  41 80 FF 80 */	blt lbl_80B7B38C
/* 80B7B410  7F 83 E3 78 */	mr r3, r28
/* 80B7B414  81 9C 0B 44 */	lwz r12, 0xb44(r28)
/* 80B7B418  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 80B7B41C  7D 89 03 A6 */	mtctr r12
/* 80B7B420  4E 80 04 21 */	bctrl 
/* 80B7B424  7F 83 E3 78 */	mr r3, r28
/* 80B7B428  48 00 32 F1 */	bl lookat__11daNpc_zrA_cFv
/* 80B7B42C  7F 83 E3 78 */	mr r3, r28
/* 80B7B430  48 00 37 71 */	bl setPrtcl__11daNpc_zrA_cFv
/* 80B7B434  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B7B438  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7B43C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B7B440  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B7B444  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B7B448  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B7B44C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B7B450  4B 7C B0 60 */	b PSMTXCopy
/* 80B7B454  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7B458  3B E3 D4 70 */	addi r31, r3, now__14mDoMtx_stack_c@l
/* 80B7B45C  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80B7B460  D0 1C 08 E4 */	stfs f0, 0x8e4(r28)
/* 80B7B464  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B7B468  D0 1C 08 E8 */	stfs f0, 0x8e8(r28)
/* 80B7B46C  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80B7B470  D0 1C 08 EC */	stfs f0, 0x8ec(r28)
/* 80B7B474  7F E3 FB 78 */	mr r3, r31
/* 80B7B478  38 9D 00 60 */	addi r4, r29, 0x60
/* 80B7B47C  38 BC 05 38 */	addi r5, r28, 0x538
/* 80B7B480  4B 7C B8 EC */	b PSMTXMultVec
/* 80B7B484  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B7B488  38 9D 00 60 */	addi r4, r29, 0x60
/* 80B7B48C  D0 04 00 04 */	stfs f0, 4(r4)
/* 80B7B490  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B7B494  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B7B498  38 A1 00 3C */	addi r5, r1, 0x3c
/* 80B7B49C  4B 7C B8 D0 */	b PSMTXMultVec
/* 80B7B4A0  38 7C 08 E4 */	addi r3, r28, 0x8e4
/* 80B7B4A4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B7B4A8  4B 6F 57 CC */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B7B4AC  B0 7C 09 02 */	sth r3, 0x902(r28)
/* 80B7B4B0  38 7C 08 E4 */	addi r3, r28, 0x8e4
/* 80B7B4B4  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B7B4B8  4B 6F 57 4C */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B7B4BC  B0 7C 09 04 */	sth r3, 0x904(r28)
/* 80B7B4C0  80 9C 12 78 */	lwz r4, 0x1278(r28)
/* 80B7B4C4  28 04 00 00 */	cmplwi r4, 0
/* 80B7B4C8  41 82 01 7C */	beq lbl_80B7B644
/* 80B7B4CC  38 61 00 18 */	addi r3, r1, 0x18
/* 80B7B4D0  38 BC 05 38 */	addi r5, r28, 0x538
/* 80B7B4D4  4B 6E B6 60 */	b __mi__4cXyzCFRC3Vec
/* 80B7B4D8  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80B7B4DC  D0 21 00 48 */	stfs f1, 0x48(r1)
/* 80B7B4E0  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 80B7B4E4  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 80B7B4E8  C0 41 00 20 */	lfs f2, 0x20(r1)
/* 80B7B4EC  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 80B7B4F0  A8 7C 09 28 */	lha r3, 0x928(r28)
/* 80B7B4F4  A8 1C 08 F2 */	lha r0, 0x8f2(r28)
/* 80B7B4F8  7C 03 02 14 */	add r0, r3, r0
/* 80B7B4FC  7C 00 00 D0 */	neg r0, r0
/* 80B7B500  B0 1C 08 FE */	sth r0, 0x8fe(r28)
/* 80B7B504  4B 6E C1 70 */	b cM_atan2s__Fff
/* 80B7B508  A8 1C 08 FE */	lha r0, 0x8fe(r28)
/* 80B7B50C  7C 00 1A 14 */	add r0, r0, r3
/* 80B7B510  B0 1C 08 FE */	sth r0, 0x8fe(r28)
/* 80B7B514  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 80B7B518  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B7B51C  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B7B520  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B7B524  C0 01 00 50 */	lfs f0, 0x50(r1)
/* 80B7B528  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80B7B52C  38 61 00 0C */	addi r3, r1, 0xc
/* 80B7B530  4B 7C BC 08 */	b PSVECSquareMag
/* 80B7B534  C0 1E 00 B0 */	lfs f0, 0xb0(r30)
/* 80B7B538  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B7B53C  40 81 00 58 */	ble lbl_80B7B594
/* 80B7B540  FC 00 08 34 */	frsqrte f0, f1
/* 80B7B544  C8 9E 00 B8 */	lfd f4, 0xb8(r30)
/* 80B7B548  FC 44 00 32 */	fmul f2, f4, f0
/* 80B7B54C  C8 7E 00 C0 */	lfd f3, 0xc0(r30)
/* 80B7B550  FC 00 00 32 */	fmul f0, f0, f0
/* 80B7B554  FC 01 00 32 */	fmul f0, f1, f0
/* 80B7B558  FC 03 00 28 */	fsub f0, f3, f0
/* 80B7B55C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B7B560  FC 44 00 32 */	fmul f2, f4, f0
/* 80B7B564  FC 00 00 32 */	fmul f0, f0, f0
/* 80B7B568  FC 01 00 32 */	fmul f0, f1, f0
/* 80B7B56C  FC 03 00 28 */	fsub f0, f3, f0
/* 80B7B570  FC 02 00 32 */	fmul f0, f2, f0
/* 80B7B574  FC 44 00 32 */	fmul f2, f4, f0
/* 80B7B578  FC 00 00 32 */	fmul f0, f0, f0
/* 80B7B57C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B7B580  FC 03 00 28 */	fsub f0, f3, f0
/* 80B7B584  FC 02 00 32 */	fmul f0, f2, f0
/* 80B7B588  FC 41 00 32 */	fmul f2, f1, f0
/* 80B7B58C  FC 40 10 18 */	frsp f2, f2
/* 80B7B590  48 00 00 90 */	b lbl_80B7B620
lbl_80B7B594:
/* 80B7B594  C8 1E 00 C8 */	lfd f0, 0xc8(r30)
/* 80B7B598  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B7B59C  40 80 00 10 */	bge lbl_80B7B5AC
/* 80B7B5A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B7B5A4  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B7B5A8  48 00 00 78 */	b lbl_80B7B620
lbl_80B7B5AC:
/* 80B7B5AC  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B7B5B0  80 81 00 08 */	lwz r4, 8(r1)
/* 80B7B5B4  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B7B5B8  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B7B5BC  7C 03 00 00 */	cmpw r3, r0
/* 80B7B5C0  41 82 00 14 */	beq lbl_80B7B5D4
/* 80B7B5C4  40 80 00 40 */	bge lbl_80B7B604
/* 80B7B5C8  2C 03 00 00 */	cmpwi r3, 0
/* 80B7B5CC  41 82 00 20 */	beq lbl_80B7B5EC
/* 80B7B5D0  48 00 00 34 */	b lbl_80B7B604
lbl_80B7B5D4:
/* 80B7B5D4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B7B5D8  41 82 00 0C */	beq lbl_80B7B5E4
/* 80B7B5DC  38 00 00 01 */	li r0, 1
/* 80B7B5E0  48 00 00 28 */	b lbl_80B7B608
lbl_80B7B5E4:
/* 80B7B5E4  38 00 00 02 */	li r0, 2
/* 80B7B5E8  48 00 00 20 */	b lbl_80B7B608
lbl_80B7B5EC:
/* 80B7B5EC  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B7B5F0  41 82 00 0C */	beq lbl_80B7B5FC
/* 80B7B5F4  38 00 00 05 */	li r0, 5
/* 80B7B5F8  48 00 00 10 */	b lbl_80B7B608
lbl_80B7B5FC:
/* 80B7B5FC  38 00 00 03 */	li r0, 3
/* 80B7B600  48 00 00 08 */	b lbl_80B7B608
lbl_80B7B604:
/* 80B7B604  38 00 00 04 */	li r0, 4
lbl_80B7B608:
/* 80B7B608  2C 00 00 01 */	cmpwi r0, 1
/* 80B7B60C  40 82 00 10 */	bne lbl_80B7B61C
/* 80B7B610  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B7B614  C0 43 0A E0 */	lfs f2, __float_nan@l(r3)
/* 80B7B618  48 00 00 08 */	b lbl_80B7B620
lbl_80B7B61C:
/* 80B7B61C  FC 40 08 90 */	fmr f2, f1
lbl_80B7B620:
/* 80B7B620  C0 21 00 4C */	lfs f1, 0x4c(r1)
/* 80B7B624  4B 6E C0 50 */	b cM_atan2s__Fff
/* 80B7B628  7C 03 00 D0 */	neg r0, r3
/* 80B7B62C  B0 1C 08 FC */	sth r0, 0x8fc(r28)
/* 80B7B630  A8 7C 08 FC */	lha r3, 0x8fc(r28)
/* 80B7B634  A8 1C 09 02 */	lha r0, 0x902(r28)
/* 80B7B638  7C 03 02 14 */	add r0, r3, r0
/* 80B7B63C  B0 1C 08 FC */	sth r0, 0x8fc(r28)
/* 80B7B640  48 00 00 10 */	b lbl_80B7B650
lbl_80B7B644:
/* 80B7B644  38 00 00 00 */	li r0, 0
/* 80B7B648  B0 1C 08 FE */	sth r0, 0x8fe(r28)
/* 80B7B64C  B0 1C 08 FC */	sth r0, 0x8fc(r28)
lbl_80B7B650:
/* 80B7B650  C3 DE 00 B0 */	lfs f30, 0xb0(r30)
/* 80B7B654  FF A0 F0 90 */	fmr f29, f30
/* 80B7B658  D3 C1 00 48 */	stfs f30, 0x48(r1)
/* 80B7B65C  D3 C1 00 4C */	stfs f30, 0x4c(r1)
/* 80B7B660  D3 C1 00 50 */	stfs f30, 0x50(r1)
/* 80B7B664  88 1C 14 E8 */	lbz r0, 0x14e8(r28)
/* 80B7B668  28 00 00 00 */	cmplwi r0, 0
/* 80B7B66C  41 82 00 0C */	beq lbl_80B7B678
/* 80B7B670  28 00 00 06 */	cmplwi r0, 6
/* 80B7B674  40 82 00 E8 */	bne lbl_80B7B75C
lbl_80B7B678:
/* 80B7B678  88 7C 15 76 */	lbz r3, 0x1576(r28)
/* 80B7B67C  28 03 00 00 */	cmplwi r3, 0
/* 80B7B680  41 82 00 DC */	beq lbl_80B7B75C
/* 80B7B684  28 00 00 06 */	cmplwi r0, 6
/* 80B7B688  41 82 00 24 */	beq lbl_80B7B6AC
/* 80B7B68C  28 00 00 00 */	cmplwi r0, 0
/* 80B7B690  40 82 00 64 */	bne lbl_80B7B6F4
/* 80B7B694  28 03 00 01 */	cmplwi r3, 1
/* 80B7B698  41 82 00 14 */	beq lbl_80B7B6AC
/* 80B7B69C  28 03 00 02 */	cmplwi r3, 2
/* 80B7B6A0  41 82 00 0C */	beq lbl_80B7B6AC
/* 80B7B6A4  28 03 00 03 */	cmplwi r3, 3
/* 80B7B6A8  40 82 00 4C */	bne lbl_80B7B6F4
lbl_80B7B6AC:
/* 80B7B6AC  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B7B6B0  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7B6B4  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B7B6B8  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B7B6BC  38 63 05 70 */	addi r3, r3, 0x570
/* 80B7B6C0  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B7B6C4  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B7B6C8  4B 7C AD E8 */	b PSMTXCopy
/* 80B7B6CC  C0 1F 00 0C */	lfs f0, 0xc(r31)
/* 80B7B6D0  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B7B6D4  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 80B7B6D8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B7B6DC  C0 1F 00 2C */	lfs f0, 0x2c(r31)
/* 80B7B6E0  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B7B6E4  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B7B6E8  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B7B6EC  C3 BE 01 1C */	lfs f29, 0x11c(r30)
/* 80B7B6F0  48 00 00 1C */	b lbl_80B7B70C
lbl_80B7B6F4:
/* 80B7B6F4  C0 1C 04 D0 */	lfs f0, 0x4d0(r28)
/* 80B7B6F8  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 80B7B6FC  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 80B7B700  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 80B7B704  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B7B708  D0 01 00 5C */	stfs f0, 0x5c(r1)
lbl_80B7B70C:
/* 80B7B70C  80 7C 05 68 */	lwz r3, 0x568(r28)
/* 80B7B710  80 63 00 04 */	lwz r3, 4(r3)
/* 80B7B714  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B7B718  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B7B71C  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B7B720  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha
/* 80B7B724  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l
/* 80B7B728  4B 7C AD 88 */	b PSMTXCopy
/* 80B7B72C  C0 7F 00 0C */	lfs f3, 0xc(r31)
/* 80B7B730  D0 61 00 24 */	stfs f3, 0x24(r1)
/* 80B7B734  C0 5F 00 1C */	lfs f2, 0x1c(r31)
/* 80B7B738  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80B7B73C  C0 3F 00 2C */	lfs f1, 0x2c(r31)
/* 80B7B740  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B7B744  C0 1E 01 20 */	lfs f0, 0x120(r30)
/* 80B7B748  EC 00 10 2A */	fadds f0, f0, f2
/* 80B7B74C  D0 7C 05 50 */	stfs f3, 0x550(r28)
/* 80B7B750  D0 1C 05 54 */	stfs f0, 0x554(r28)
/* 80B7B754  D0 3C 05 58 */	stfs f1, 0x558(r28)
/* 80B7B758  48 00 00 58 */	b lbl_80B7B7B0
lbl_80B7B75C:
/* 80B7B75C  28 00 00 04 */	cmplwi r0, 4
/* 80B7B760  40 82 00 10 */	bne lbl_80B7B770
/* 80B7B764  C3 DE 01 24 */	lfs f30, 0x124(r30)
/* 80B7B768  C3 BE 01 28 */	lfs f29, 0x128(r30)
/* 80B7B76C  48 00 00 1C */	b lbl_80B7B788
lbl_80B7B770:
/* 80B7B770  28 00 00 01 */	cmplwi r0, 1
/* 80B7B774  40 82 00 14 */	bne lbl_80B7B788
/* 80B7B778  80 1C 0C 1C */	lwz r0, 0xc1c(r28)
/* 80B7B77C  28 00 00 00 */	cmplwi r0, 0
/* 80B7B780  41 82 00 08 */	beq lbl_80B7B788
/* 80B7B784  C3 DE 01 2C */	lfs f30, 0x12c(r30)
lbl_80B7B788:
/* 80B7B788  C0 5C 04 D0 */	lfs f2, 0x4d0(r28)
/* 80B7B78C  D0 41 00 54 */	stfs f2, 0x54(r1)
/* 80B7B790  C0 3C 04 D4 */	lfs f1, 0x4d4(r28)
/* 80B7B794  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 80B7B798  C0 1C 04 D8 */	lfs f0, 0x4d8(r28)
/* 80B7B79C  D0 01 00 5C */	stfs f0, 0x5c(r1)
/* 80B7B7A0  EC 21 F8 2A */	fadds f1, f1, f31
/* 80B7B7A4  D0 5C 05 50 */	stfs f2, 0x550(r28)
/* 80B7B7A8  D0 3C 05 54 */	stfs f1, 0x554(r28)
/* 80B7B7AC  D0 1C 05 58 */	stfs f0, 0x558(r28)
lbl_80B7B7B0:
/* 80B7B7B0  88 1C 09 F2 */	lbz r0, 0x9f2(r28)
/* 80B7B7B4  28 00 00 00 */	cmplwi r0, 0
/* 80B7B7B8  40 82 00 F8 */	bne lbl_80B7B8B0
/* 80B7B7BC  80 1C 09 54 */	lwz r0, 0x954(r28)
/* 80B7B7C0  2C 00 00 00 */	cmpwi r0, 0
/* 80B7B7C4  40 82 00 54 */	bne lbl_80B7B818
/* 80B7B7C8  88 1C 14 E8 */	lbz r0, 0x14e8(r28)
/* 80B7B7CC  28 00 00 04 */	cmplwi r0, 4
/* 80B7B7D0  40 82 00 24 */	bne lbl_80B7B7F4
/* 80B7B7D4  38 00 20 20 */	li r0, 0x2020
/* 80B7B7D8  90 1C 13 60 */	stw r0, 0x1360(r28)
/* 80B7B7DC  38 00 00 3F */	li r0, 0x3f
/* 80B7B7E0  90 1C 13 50 */	stw r0, 0x1350(r28)
/* 80B7B7E4  80 1C 13 D4 */	lwz r0, 0x13d4(r28)
/* 80B7B7E8  60 00 00 04 */	ori r0, r0, 4
/* 80B7B7EC  90 1C 13 D4 */	stw r0, 0x13d4(r28)
/* 80B7B7F0  48 00 00 34 */	b lbl_80B7B824
lbl_80B7B7F4:
/* 80B7B7F4  3C 60 D8 FC */	lis r3, 0xD8FC /* 0xD8FBFDFF@ha */
/* 80B7B7F8  38 03 FD FF */	addi r0, r3, 0xFDFF /* 0xD8FBFDFF@l */
/* 80B7B7FC  90 1C 13 60 */	stw r0, 0x1360(r28)
/* 80B7B800  38 00 00 1F */	li r0, 0x1f
/* 80B7B804  90 1C 13 50 */	stw r0, 0x1350(r28)
/* 80B7B808  80 1C 13 D4 */	lwz r0, 0x13d4(r28)
/* 80B7B80C  60 00 00 04 */	ori r0, r0, 4
/* 80B7B810  90 1C 13 D4 */	stw r0, 0x13d4(r28)
/* 80B7B814  48 00 00 10 */	b lbl_80B7B824
lbl_80B7B818:
/* 80B7B818  38 00 00 00 */	li r0, 0
/* 80B7B81C  90 1C 13 60 */	stw r0, 0x1360(r28)
/* 80B7B820  90 1C 13 50 */	stw r0, 0x1350(r28)
lbl_80B7B824:
/* 80B7B824  88 1C 14 E8 */	lbz r0, 0x14e8(r28)
/* 80B7B828  28 00 00 04 */	cmplwi r0, 4
/* 80B7B82C  40 82 00 10 */	bne lbl_80B7B83C
/* 80B7B830  38 00 03 79 */	li r0, 0x379
/* 80B7B834  90 1C 13 64 */	stw r0, 0x1364(r28)
/* 80B7B838  48 00 00 30 */	b lbl_80B7B868
lbl_80B7B83C:
/* 80B7B83C  A0 1C 09 E6 */	lhz r0, 0x9e6(r28)
/* 80B7B840  2C 00 00 08 */	cmpwi r0, 8
/* 80B7B844  40 80 00 1C */	bge lbl_80B7B860
/* 80B7B848  2C 00 00 06 */	cmpwi r0, 6
/* 80B7B84C  40 80 00 08 */	bge lbl_80B7B854
/* 80B7B850  48 00 00 10 */	b lbl_80B7B860
lbl_80B7B854:
/* 80B7B854  38 00 01 79 */	li r0, 0x179
/* 80B7B858  90 1C 13 64 */	stw r0, 0x1364(r28)
/* 80B7B85C  48 00 00 0C */	b lbl_80B7B868
lbl_80B7B860:
/* 80B7B860  38 00 00 79 */	li r0, 0x79
/* 80B7B864  90 1C 13 64 */	stw r0, 0x1364(r28)
lbl_80B7B868:
/* 80B7B868  38 7C 14 5C */	addi r3, r28, 0x145c
/* 80B7B86C  38 81 00 54 */	addi r4, r1, 0x54
/* 80B7B870  4B 6F 39 6C */	b SetC__8cM3dGCylFRC4cXyz
/* 80B7B874  38 7C 14 5C */	addi r3, r28, 0x145c
/* 80B7B878  38 9E 00 00 */	addi r4, r30, 0
/* 80B7B87C  C0 04 00 14 */	lfs f0, 0x14(r4)
/* 80B7B880  EC 20 F0 2A */	fadds f1, f0, f30
/* 80B7B884  4B 6F 39 74 */	b SetH__8cM3dGCylFf
/* 80B7B888  38 7C 14 5C */	addi r3, r28, 0x145c
/* 80B7B88C  38 9E 00 00 */	addi r4, r30, 0
/* 80B7B890  C0 04 00 1C */	lfs f0, 0x1c(r4)
/* 80B7B894  EC 20 E8 2A */	fadds f1, f0, f29
/* 80B7B898  4B 6F 39 68 */	b SetR__8cM3dGCylFf
/* 80B7B89C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80B7B8A0  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80B7B8A4  38 63 23 3C */	addi r3, r3, 0x233c
/* 80B7B8A8  38 9C 13 38 */	addi r4, r28, 0x1338
/* 80B7B8AC  4B 6E 92 FC */	b Set__4cCcSFP8cCcD_Obj
lbl_80B7B8B0:
/* 80B7B8B0  38 7C 13 38 */	addi r3, r28, 0x1338
/* 80B7B8B4  81 9C 13 74 */	lwz r12, 0x1374(r28)
/* 80B7B8B8  81 8C 00 20 */	lwz r12, 0x20(r12)
/* 80B7B8BC  7D 89 03 A6 */	mtctr r12
/* 80B7B8C0  4E 80 04 21 */	bctrl 
/* 80B7B8C4  38 7C 13 38 */	addi r3, r28, 0x1338
/* 80B7B8C8  81 9C 13 74 */	lwz r12, 0x1374(r28)
/* 80B7B8CC  81 8C 00 24 */	lwz r12, 0x24(r12)
/* 80B7B8D0  7D 89 03 A6 */	mtctr r12
/* 80B7B8D4  4E 80 04 21 */	bctrl 
/* 80B7B8D8  38 7C 13 38 */	addi r3, r28, 0x1338
/* 80B7B8DC  81 9C 13 74 */	lwz r12, 0x1374(r28)
/* 80B7B8E0  81 8C 00 28 */	lwz r12, 0x28(r12)
/* 80B7B8E4  7D 89 03 A6 */	mtctr r12
/* 80B7B8E8  4E 80 04 21 */	bctrl 
/* 80B7B8EC  E3 E1 00 B8 */	psq_l f31, 184(r1), 0, 0 /* qr0 */
/* 80B7B8F0  CB E1 00 B0 */	lfd f31, 0xb0(r1)
/* 80B7B8F4  E3 C1 00 A8 */	psq_l f30, 168(r1), 0, 0 /* qr0 */
/* 80B7B8F8  CB C1 00 A0 */	lfd f30, 0xa0(r1)
/* 80B7B8FC  E3 A1 00 98 */	psq_l f29, 152(r1), 0, 0 /* qr0 */
/* 80B7B900  CB A1 00 90 */	lfd f29, 0x90(r1)
/* 80B7B904  39 61 00 90 */	addi r11, r1, 0x90
/* 80B7B908  4B 7E 69 0C */	b _restgpr_24
/* 80B7B90C  80 01 00 C4 */	lwz r0, 0xc4(r1)
/* 80B7B910  7C 08 03 A6 */	mtlr r0
/* 80B7B914  38 21 00 C0 */	addi r1, r1, 0xc0
/* 80B7B918  4E 80 00 20 */	blr 
