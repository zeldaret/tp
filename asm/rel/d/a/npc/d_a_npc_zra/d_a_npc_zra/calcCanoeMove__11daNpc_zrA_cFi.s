lbl_80B8A064:
/* 80B8A064  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 80B8A068  7C 08 02 A6 */	mflr r0
/* 80B8A06C  90 01 00 74 */	stw r0, 0x74(r1)
/* 80B8A070  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 80B8A074  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 80B8A078  39 61 00 60 */	addi r11, r1, 0x60
/* 80B8A07C  4B 7D 81 58 */	b _savegpr_27
/* 80B8A080  7C 7E 1B 78 */	mr r30, r3
/* 80B8A084  7C 9B 23 78 */	mr r27, r4
/* 80B8A088  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B8A08C  3B A3 C4 58 */	addi r29, r3, m__17daNpc_zrA_Param_c@l
/* 80B8A090  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B8A094  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B8A098  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B8A09C  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 80B8A0A0  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B8A0A4  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 80B8A0A8  38 61 00 30 */	addi r3, r1, 0x30
/* 80B8A0AC  38 81 00 0C */	addi r4, r1, 0xc
/* 80B8A0B0  4B 49 37 E0 */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80B8A0B4  2C 03 00 00 */	cmpwi r3, 0
/* 80B8A0B8  41 82 00 0C */	beq lbl_80B8A0C4
/* 80B8A0BC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B8A0C0  D0 01 00 34 */	stfs f0, 0x34(r1)
lbl_80B8A0C4:
/* 80B8A0C4  38 7E 15 9C */	addi r3, r30, 0x159c
/* 80B8A0C8  38 81 00 30 */	addi r4, r1, 0x30
/* 80B8A0CC  4B 6E 6B A8 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B8A0D0  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80B8A0D4  38 61 00 30 */	addi r3, r1, 0x30
/* 80B8A0D8  38 9E 15 9C */	addi r4, r30, 0x159c
/* 80B8A0DC  4B 6E 6B 28 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B8A0E0  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80B8A0E4  38 00 00 00 */	li r0, 0
/* 80B8A0E8  B0 01 00 14 */	sth r0, 0x14(r1)
/* 80B8A0EC  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B8A0F0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B8A0F4  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B8A0F8  3B FD 00 00 */	addi r31, r29, 0
/* 80B8A0FC  C0 1F 00 A0 */	lfs f0, 0xa0(r31)
/* 80B8A100  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B8A104  38 61 00 10 */	addi r3, r1, 0x10
/* 80B8A108  4B 48 2E 04 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B8A10C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B8A110  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B8A114  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B8A118  38 BE 15 9C */	addi r5, r30, 0x159c
/* 80B8A11C  4B 7B CC 50 */	b PSMTXMultVec
/* 80B8A120  38 7E 15 9C */	addi r3, r30, 0x159c
/* 80B8A124  38 81 00 30 */	addi r4, r1, 0x30
/* 80B8A128  7C 65 1B 78 */	mr r5, r3
/* 80B8A12C  4B 7B CF 64 */	b PSVECAdd
/* 80B8A130  38 7E 15 9C */	addi r3, r30, 0x159c
/* 80B8A134  38 81 00 0C */	addi r4, r1, 0xc
/* 80B8A138  4B 49 37 58 */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80B8A13C  2C 03 00 00 */	cmpwi r3, 0
/* 80B8A140  41 82 00 0C */	beq lbl_80B8A14C
/* 80B8A144  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B8A148  D0 1E 15 A0 */	stfs f0, 0x15a0(r30)
lbl_80B8A14C:
/* 80B8A14C  38 7E 15 A8 */	addi r3, r30, 0x15a8
/* 80B8A150  38 9E 15 9C */	addi r4, r30, 0x159c
/* 80B8A154  4B 6E 6B 20 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 80B8A158  B0 61 00 10 */	sth r3, 0x10(r1)
/* 80B8A15C  38 7E 15 9C */	addi r3, r30, 0x159c
/* 80B8A160  38 9E 15 A8 */	addi r4, r30, 0x15a8
/* 80B8A164  4B 6E 6A A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 80B8A168  B0 61 00 12 */	sth r3, 0x12(r1)
/* 80B8A16C  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B8A170  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 80B8A174  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 80B8A178  3B 9D 00 00 */	addi r28, r29, 0
/* 80B8A17C  C0 1C 00 A4 */	lfs f0, 0xa4(r28)
/* 80B8A180  D0 01 00 44 */	stfs f0, 0x44(r1)
/* 80B8A184  38 61 00 10 */	addi r3, r1, 0x10
/* 80B8A188  4B 48 2D 84 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B8A18C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B8A190  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B8A194  38 81 00 3C */	addi r4, r1, 0x3c
/* 80B8A198  38 BE 15 A8 */	addi r5, r30, 0x15a8
/* 80B8A19C  4B 7B CB D0 */	b PSMTXMultVec
/* 80B8A1A0  38 7E 15 A8 */	addi r3, r30, 0x15a8
/* 80B8A1A4  38 9E 15 9C */	addi r4, r30, 0x159c
/* 80B8A1A8  7C 65 1B 78 */	mr r5, r3
/* 80B8A1AC  4B 7B CE E4 */	b PSVECAdd
/* 80B8A1B0  38 7E 15 A8 */	addi r3, r30, 0x15a8
/* 80B8A1B4  38 81 00 0C */	addi r4, r1, 0xc
/* 80B8A1B8  4B 49 36 D8 */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80B8A1BC  2C 03 00 00 */	cmpwi r3, 0
/* 80B8A1C0  41 82 00 0C */	beq lbl_80B8A1CC
/* 80B8A1C4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B8A1C8  D0 1E 15 AC */	stfs f0, 0x15ac(r30)
lbl_80B8A1CC:
/* 80B8A1CC  2C 1B 00 00 */	cmpwi r27, 0
/* 80B8A1D0  41 82 01 88 */	beq lbl_80B8A358
/* 80B8A1D4  38 61 00 24 */	addi r3, r1, 0x24
/* 80B8A1D8  38 81 00 30 */	addi r4, r1, 0x30
/* 80B8A1DC  38 BE 15 B4 */	addi r5, r30, 0x15b4
/* 80B8A1E0  4B 6D C9 54 */	b __mi__4cXyzCFRC3Vec
/* 80B8A1E4  38 61 00 24 */	addi r3, r1, 0x24
/* 80B8A1E8  4B 7B CF 50 */	b PSVECSquareMag
/* 80B8A1EC  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B8A1F0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8A1F4  40 81 00 58 */	ble lbl_80B8A24C
/* 80B8A1F8  FC 00 08 34 */	frsqrte f0, f1
/* 80B8A1FC  C8 9D 00 B8 */	lfd f4, 0xb8(r29)
/* 80B8A200  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8A204  C8 7D 00 C0 */	lfd f3, 0xc0(r29)
/* 80B8A208  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8A20C  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8A210  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8A214  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8A218  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8A21C  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8A220  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8A224  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8A228  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8A22C  FC 44 00 32 */	fmul f2, f4, f0
/* 80B8A230  FC 00 00 32 */	fmul f0, f0, f0
/* 80B8A234  FC 01 00 32 */	fmul f0, f1, f0
/* 80B8A238  FC 03 00 28 */	fsub f0, f3, f0
/* 80B8A23C  FC 02 00 32 */	fmul f0, f2, f0
/* 80B8A240  FF E1 00 32 */	fmul f31, f1, f0
/* 80B8A244  FF E0 F8 18 */	frsp f31, f31
/* 80B8A248  48 00 00 90 */	b lbl_80B8A2D8
lbl_80B8A24C:
/* 80B8A24C  C8 1D 00 C8 */	lfd f0, 0xc8(r29)
/* 80B8A250  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8A254  40 80 00 10 */	bge lbl_80B8A264
/* 80B8A258  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B8A25C  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80B8A260  48 00 00 78 */	b lbl_80B8A2D8
lbl_80B8A264:
/* 80B8A264  D0 21 00 08 */	stfs f1, 8(r1)
/* 80B8A268  80 81 00 08 */	lwz r4, 8(r1)
/* 80B8A26C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80B8A270  3C 00 7F 80 */	lis r0, 0x7f80
/* 80B8A274  7C 03 00 00 */	cmpw r3, r0
/* 80B8A278  41 82 00 14 */	beq lbl_80B8A28C
/* 80B8A27C  40 80 00 40 */	bge lbl_80B8A2BC
/* 80B8A280  2C 03 00 00 */	cmpwi r3, 0
/* 80B8A284  41 82 00 20 */	beq lbl_80B8A2A4
/* 80B8A288  48 00 00 34 */	b lbl_80B8A2BC
lbl_80B8A28C:
/* 80B8A28C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8A290  41 82 00 0C */	beq lbl_80B8A29C
/* 80B8A294  38 00 00 01 */	li r0, 1
/* 80B8A298  48 00 00 28 */	b lbl_80B8A2C0
lbl_80B8A29C:
/* 80B8A29C  38 00 00 02 */	li r0, 2
/* 80B8A2A0  48 00 00 20 */	b lbl_80B8A2C0
lbl_80B8A2A4:
/* 80B8A2A4  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80B8A2A8  41 82 00 0C */	beq lbl_80B8A2B4
/* 80B8A2AC  38 00 00 05 */	li r0, 5
/* 80B8A2B0  48 00 00 10 */	b lbl_80B8A2C0
lbl_80B8A2B4:
/* 80B8A2B4  38 00 00 03 */	li r0, 3
/* 80B8A2B8  48 00 00 08 */	b lbl_80B8A2C0
lbl_80B8A2BC:
/* 80B8A2BC  38 00 00 04 */	li r0, 4
lbl_80B8A2C0:
/* 80B8A2C0  2C 00 00 01 */	cmpwi r0, 1
/* 80B8A2C4  40 82 00 10 */	bne lbl_80B8A2D4
/* 80B8A2C8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 80B8A2CC  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)
/* 80B8A2D0  48 00 00 08 */	b lbl_80B8A2D8
lbl_80B8A2D4:
/* 80B8A2D4  FF E0 08 90 */	fmr f31, f1
lbl_80B8A2D8:
/* 80B8A2D8  38 61 00 18 */	addi r3, r1, 0x18
/* 80B8A2DC  38 81 00 30 */	addi r4, r1, 0x30
/* 80B8A2E0  38 BE 15 A8 */	addi r5, r30, 0x15a8
/* 80B8A2E4  4B 6D C8 50 */	b __mi__4cXyzCFRC3Vec
/* 80B8A2E8  38 61 00 18 */	addi r3, r1, 0x18
/* 80B8A2EC  4B 7B CE 4C */	b PSVECSquareMag
/* 80B8A2F0  C0 1D 00 B0 */	lfs f0, 0xb0(r29)
/* 80B8A2F4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80B8A2F8  40 81 00 08 */	ble lbl_80B8A300
/* 80B8A2FC  48 00 00 0C */	b lbl_80B8A308
lbl_80B8A300:
/* 80B8A300  C8 1D 00 C8 */	lfd f0, 0xc8(r29)
/* 80B8A304  FC 01 00 40 */	fcmpo cr0, f1, f0
lbl_80B8A308:
/* 80B8A308  C0 3F 00 A0 */	lfs f1, 0xa0(r31)
/* 80B8A30C  C0 1C 00 A4 */	lfs f0, 0xa4(r28)
/* 80B8A310  EC 01 00 2A */	fadds f0, f1, f0
/* 80B8A314  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 80B8A318  40 81 00 58 */	ble lbl_80B8A370
/* 80B8A31C  38 7E 15 B4 */	addi r3, r30, 0x15b4
/* 80B8A320  38 9E 15 A8 */	addi r4, r30, 0x15a8
/* 80B8A324  C0 3D 01 04 */	lfs f1, 0x104(r29)
/* 80B8A328  C0 5D 07 90 */	lfs f2, 0x790(r29)
/* 80B8A32C  C0 1E 15 24 */	lfs f0, 0x1524(r30)
/* 80B8A330  EC 42 00 32 */	fmuls f2, f2, f0
/* 80B8A334  4B 6E 5E 44 */	b cLib_addCalcPos2__FP4cXyzRC4cXyzff
/* 80B8A338  38 7E 15 B4 */	addi r3, r30, 0x15b4
/* 80B8A33C  38 81 00 0C */	addi r4, r1, 0xc
/* 80B8A340  4B 49 35 50 */	b fopAcM_getWaterY__FPC4cXyzPf
/* 80B8A344  2C 03 00 00 */	cmpwi r3, 0
/* 80B8A348  41 82 00 28 */	beq lbl_80B8A370
/* 80B8A34C  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80B8A350  D0 1E 15 B8 */	stfs f0, 0x15b8(r30)
/* 80B8A354  48 00 00 1C */	b lbl_80B8A370
lbl_80B8A358:
/* 80B8A358  C0 1E 15 A8 */	lfs f0, 0x15a8(r30)
/* 80B8A35C  D0 1E 15 B4 */	stfs f0, 0x15b4(r30)
/* 80B8A360  C0 1E 15 AC */	lfs f0, 0x15ac(r30)
/* 80B8A364  D0 1E 15 B8 */	stfs f0, 0x15b8(r30)
/* 80B8A368  C0 1E 15 B0 */	lfs f0, 0x15b0(r30)
/* 80B8A36C  D0 1E 15 BC */	stfs f0, 0x15bc(r30)
lbl_80B8A370:
/* 80B8A370  A8 61 00 12 */	lha r3, 0x12(r1)
/* 80B8A374  3C 63 00 01 */	addis r3, r3, 1
/* 80B8A378  38 03 80 00 */	addi r0, r3, -32768
/* 80B8A37C  7C 1D 07 34 */	extsh r29, r0
/* 80B8A380  38 7E 13 2C */	addi r3, r30, 0x132c
/* 80B8A384  4B 5C 63 68 */	b getActorP__18daNpcF_ActorMngr_cFv
/* 80B8A388  C0 1E 15 B4 */	lfs f0, 0x15b4(r30)
/* 80B8A38C  D0 03 14 D0 */	stfs f0, 0x14d0(r3)
/* 80B8A390  C0 1E 15 B8 */	lfs f0, 0x15b8(r30)
/* 80B8A394  D0 03 14 D4 */	stfs f0, 0x14d4(r3)
/* 80B8A398  C0 1E 15 BC */	lfs f0, 0x15bc(r30)
/* 80B8A39C  D0 03 14 D8 */	stfs f0, 0x14d8(r3)
/* 80B8A3A0  B3 A3 14 4A */	sth r29, 0x144a(r3)
/* 80B8A3A4  38 00 00 01 */	li r0, 1
/* 80B8A3A8  98 03 14 46 */	stb r0, 0x1446(r3)
/* 80B8A3AC  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 80B8A3B0  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 80B8A3B4  39 61 00 60 */	addi r11, r1, 0x60
/* 80B8A3B8  4B 7D 7E 68 */	b _restgpr_27
/* 80B8A3BC  80 01 00 74 */	lwz r0, 0x74(r1)
/* 80B8A3C0  7C 08 03 A6 */	mtlr r0
/* 80B8A3C4  38 21 00 70 */	addi r1, r1, 0x70
/* 80B8A3C8  4E 80 00 20 */	blr 
