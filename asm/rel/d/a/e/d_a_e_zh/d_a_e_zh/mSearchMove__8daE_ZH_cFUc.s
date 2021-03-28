lbl_8082A01C:
/* 8082A01C  94 21 FF 90 */	stwu r1, -0x70(r1)
/* 8082A020  7C 08 02 A6 */	mflr r0
/* 8082A024  90 01 00 74 */	stw r0, 0x74(r1)
/* 8082A028  DB E1 00 60 */	stfd f31, 0x60(r1)
/* 8082A02C  F3 E1 00 68 */	psq_st f31, 104(r1), 0, 0 /* qr0 */
/* 8082A030  39 61 00 60 */	addi r11, r1, 0x60
/* 8082A034  4B B3 81 A0 */	b _savegpr_27
/* 8082A038  7C 7C 1B 78 */	mr r28, r3
/* 8082A03C  7C 9D 23 78 */	mr r29, r4
/* 8082A040  3C 80 80 83 */	lis r4, lit_3778@ha
/* 8082A044  3B E4 F2 08 */	addi r31, r4, lit_3778@l
/* 8082A048  80 03 06 64 */	lwz r0, 0x664(r3)
/* 8082A04C  28 00 00 00 */	cmplwi r0, 0
/* 8082A050  40 82 00 18 */	bne lbl_8082A068
/* 8082A054  38 80 00 08 */	li r4, 8
/* 8082A058  38 A0 00 00 */	li r5, 0
/* 8082A05C  4B FF F3 F9 */	bl setActionMode__8daE_ZH_cFii
/* 8082A060  38 60 00 00 */	li r3, 0
/* 8082A064  48 00 03 0C */	b lbl_8082A370
lbl_8082A068:
/* 8082A068  3B C0 00 00 */	li r30, 0
/* 8082A06C  4B FF F5 ED */	bl mBallBGCheck__8daE_ZH_cFv
/* 8082A070  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8082A074  40 82 00 20 */	bne lbl_8082A094
/* 8082A078  C0 5C 06 B0 */	lfs f2, 0x6b0(r28)
/* 8082A07C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082A080  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 8082A084  40 82 00 B8 */	bne lbl_8082A13C
/* 8082A088  C0 1C 06 B8 */	lfs f0, 0x6b8(r28)
/* 8082A08C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8082A090  40 82 00 AC */	bne lbl_8082A13C
lbl_8082A094:
/* 8082A094  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 8082A098  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 8082A09C  80 63 00 00 */	lwz r3, 0(r3)
/* 8082A0A0  A8 9C 04 DE */	lha r4, 0x4de(r28)
/* 8082A0A4  4B 7E 23 38 */	b mDoMtx_YrotS__FPA4_fs
/* 8082A0A8  C0 1F 00 10 */	lfs f0, 0x10(r31)
/* 8082A0AC  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082A0B0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082A0B4  C0 1C 07 74 */	lfs f0, 0x774(r28)
/* 8082A0B8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082A0BC  38 61 00 2C */	addi r3, r1, 0x2c
/* 8082A0C0  38 81 00 20 */	addi r4, r1, 0x20
/* 8082A0C4  4B A4 6E 28 */	b MtxPosition__FP4cXyzP4cXyz
/* 8082A0C8  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8082A0CC  40 82 00 40 */	bne lbl_8082A10C
/* 8082A0D0  38 61 00 20 */	addi r3, r1, 0x20
/* 8082A0D4  80 9C 06 64 */	lwz r4, 0x664(r28)
/* 8082A0D8  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8082A0DC  7C 65 1B 78 */	mr r5, r3
/* 8082A0E0  4B B1 CF B0 */	b PSVECAdd
/* 8082A0E4  C0 1F 00 74 */	lfs f0, 0x74(r31)
/* 8082A0E8  C0 3C 08 8C */	lfs f1, 0x88c(r28)
/* 8082A0EC  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8082A0F0  41 82 00 90 */	beq lbl_8082A180
/* 8082A0F4  80 7C 06 64 */	lwz r3, 0x664(r28)
/* 8082A0F8  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8082A0FC  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8082A100  40 81 00 80 */	ble lbl_8082A180
/* 8082A104  D0 21 00 24 */	stfs f1, 0x24(r1)
/* 8082A108  48 00 00 78 */	b lbl_8082A180
lbl_8082A10C:
/* 8082A10C  38 61 00 20 */	addi r3, r1, 0x20
/* 8082A110  38 9C 04 A8 */	addi r4, r28, 0x4a8
/* 8082A114  7C 65 1B 78 */	mr r5, r3
/* 8082A118  4B B1 CF 78 */	b PSVECAdd
/* 8082A11C  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8082A120  28 00 00 02 */	cmplwi r0, 2
/* 8082A124  40 82 00 5C */	bne lbl_8082A180
/* 8082A128  C0 21 00 24 */	lfs f1, 0x24(r1)
/* 8082A12C  C0 1F 00 78 */	lfs f0, 0x78(r31)
/* 8082A130  EC 01 00 28 */	fsubs f0, f1, f0
/* 8082A134  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8082A138  48 00 00 48 */	b lbl_8082A180
lbl_8082A13C:
/* 8082A13C  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082A140  FC 02 08 00 */	fcmpu cr0, f2, f1
/* 8082A144  40 82 00 10 */	bne lbl_8082A154
/* 8082A148  C0 1C 06 B8 */	lfs f0, 0x6b8(r28)
/* 8082A14C  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8082A150  41 82 00 30 */	beq lbl_8082A180
lbl_8082A154:
/* 8082A154  38 61 00 14 */	addi r3, r1, 0x14
/* 8082A158  80 9C 06 64 */	lwz r4, 0x664(r28)
/* 8082A15C  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 8082A160  38 BC 06 B0 */	addi r5, r28, 0x6b0
/* 8082A164  4B A3 C9 80 */	b __pl__4cXyzCFRC3Vec
/* 8082A168  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 8082A16C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8082A170  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 8082A174  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8082A178  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 8082A17C  D0 01 00 28 */	stfs f0, 0x28(r1)
lbl_8082A180:
/* 8082A180  C0 1C 04 D4 */	lfs f0, 0x4d4(r28)
/* 8082A184  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8082A188  38 7C 04 D0 */	addi r3, r28, 0x4d0
/* 8082A18C  38 81 00 20 */	addi r4, r1, 0x20
/* 8082A190  C0 3F 00 68 */	lfs f1, 0x68(r31)
/* 8082A194  C0 5F 00 2C */	lfs f2, 0x2c(r31)
/* 8082A198  C0 7F 00 00 */	lfs f3, 0(r31)
/* 8082A19C  4B A4 59 1C */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 8082A1A0  FF E0 08 90 */	fmr f31, f1
/* 8082A1A4  38 61 00 08 */	addi r3, r1, 8
/* 8082A1A8  38 81 00 20 */	addi r4, r1, 0x20
/* 8082A1AC  38 BC 04 D0 */	addi r5, r28, 0x4d0
/* 8082A1B0  4B A3 C9 84 */	b __mi__4cXyzCFRC3Vec
/* 8082A1B4  C0 01 00 08 */	lfs f0, 8(r1)
/* 8082A1B8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 8082A1BC  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 8082A1C0  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8082A1C4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 8082A1C8  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8082A1CC  38 7C 07 B0 */	addi r3, r28, 0x7b0
/* 8082A1D0  38 80 04 00 */	li r4, 0x400
/* 8082A1D4  38 A0 00 08 */	li r5, 8
/* 8082A1D8  38 C0 00 40 */	li r6, 0x40
/* 8082A1DC  4B A4 64 2C */	b cLib_addCalcAngleS2__FPssss
/* 8082A1E0  C0 1C 06 B0 */	lfs f0, 0x6b0(r28)
/* 8082A1E4  C0 3F 00 10 */	lfs f1, 0x10(r31)
/* 8082A1E8  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8082A1EC  40 82 00 10 */	bne lbl_8082A1FC
/* 8082A1F0  C0 1C 06 B8 */	lfs f0, 0x6b8(r28)
/* 8082A1F4  FC 00 08 00 */	fcmpu cr0, f0, f1
/* 8082A1F8  41 82 00 10 */	beq lbl_8082A208
lbl_8082A1FC:
/* 8082A1FC  38 00 00 01 */	li r0, 1
/* 8082A200  98 1C 07 AF */	stb r0, 0x7af(r28)
/* 8082A204  48 00 00 0C */	b lbl_8082A210
lbl_8082A208:
/* 8082A208  38 00 00 00 */	li r0, 0
/* 8082A20C  98 1C 07 AF */	stb r0, 0x7af(r28)
lbl_8082A210:
/* 8082A210  57 A0 06 3F */	clrlwi. r0, r29, 0x18
/* 8082A214  40 82 00 40 */	bne lbl_8082A254
/* 8082A218  7F 83 E3 78 */	mr r3, r28
/* 8082A21C  80 9C 06 64 */	lwz r4, 0x664(r28)
/* 8082A220  4B 7F 04 F0 */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8082A224  7C 7B 1B 78 */	mr r27, r3
/* 8082A228  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8082A22C  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8082A230  80 63 00 00 */	lwz r3, 0(r3)
/* 8082A234  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8082A238  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8082A23C  EC 00 F8 2A */	fadds f0, f0, f31
/* 8082A240  FC 00 00 1E */	fctiwz f0, f0
/* 8082A244  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8082A248  80 81 00 3C */	lwz r4, 0x3c(r1)
/* 8082A24C  4B A8 5D 40 */	b changeBgmStatus__8Z2SeqMgrFl
/* 8082A250  48 00 00 28 */	b lbl_8082A278
lbl_8082A254:
/* 8082A254  38 61 00 2C */	addi r3, r1, 0x2c
/* 8082A258  4B A3 CE D0 */	b atan2sX_Z__4cXyzCFv
/* 8082A25C  7C 7B 07 34 */	extsh r27, r3
/* 8082A260  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 8082A264  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 8082A268  80 63 00 00 */	lwz r3, 0(r3)
/* 8082A26C  38 63 03 D0 */	addi r3, r3, 0x3d0
/* 8082A270  38 80 00 63 */	li r4, 0x63
/* 8082A274  4B A8 5D 18 */	b changeBgmStatus__8Z2SeqMgrFl
lbl_8082A278:
/* 8082A278  38 7C 04 E6 */	addi r3, r28, 0x4e6
/* 8082A27C  7F 64 DB 78 */	mr r4, r27
/* 8082A280  38 A0 00 08 */	li r5, 8
/* 8082A284  A8 DC 07 B0 */	lha r6, 0x7b0(r28)
/* 8082A288  4B A4 63 80 */	b cLib_addCalcAngleS2__FPssss
/* 8082A28C  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8082A290  B0 1C 04 DE */	sth r0, 0x4de(r28)
/* 8082A294  57 A0 06 3E */	clrlwi r0, r29, 0x18
/* 8082A298  28 00 00 01 */	cmplwi r0, 1
/* 8082A29C  41 82 00 34 */	beq lbl_8082A2D0
/* 8082A2A0  C0 1F 00 7C */	lfs f0, 0x7c(r31)
/* 8082A2A4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8082A2A8  4C 40 13 82 */	cror 2, 0, 2
/* 8082A2AC  40 82 00 50 */	bne lbl_8082A2FC
/* 8082A2B0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8082A2B4  7C 1B 00 50 */	subf r0, r27, r0
/* 8082A2B8  7C 03 07 34 */	extsh r3, r0
/* 8082A2BC  4B B3 AE 14 */	b abs
/* 8082A2C0  2C 03 10 00 */	cmpwi r3, 0x1000
/* 8082A2C4  40 80 00 38 */	bge lbl_8082A2FC
/* 8082A2C8  3B C0 00 01 */	li r30, 1
/* 8082A2CC  48 00 00 30 */	b lbl_8082A2FC
lbl_8082A2D0:
/* 8082A2D0  C0 1F 00 1C */	lfs f0, 0x1c(r31)
/* 8082A2D4  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8082A2D8  4C 40 13 82 */	cror 2, 0, 2
/* 8082A2DC  40 82 00 20 */	bne lbl_8082A2FC
/* 8082A2E0  A8 1C 04 E6 */	lha r0, 0x4e6(r28)
/* 8082A2E4  7C 1B 00 50 */	subf r0, r27, r0
/* 8082A2E8  7C 03 07 34 */	extsh r3, r0
/* 8082A2EC  4B B3 AD E4 */	b abs
/* 8082A2F0  2C 03 20 00 */	cmpwi r3, 0x2000
/* 8082A2F4  40 80 00 08 */	bge lbl_8082A2FC
/* 8082A2F8  3B C0 00 01 */	li r30, 1
lbl_8082A2FC:
/* 8082A2FC  7F 83 E3 78 */	mr r3, r28
/* 8082A300  4B FF FB 45 */	bl mBallBgLineCheck__8daE_ZH_cFv
/* 8082A304  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8082A308  41 82 00 3C */	beq lbl_8082A344
/* 8082A30C  80 1C 08 20 */	lwz r0, 0x820(r28)
/* 8082A310  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8082A314  41 82 00 58 */	beq lbl_8082A36C
/* 8082A318  80 1C 07 80 */	lwz r0, 0x780(r28)
/* 8082A31C  2C 00 00 07 */	cmpwi r0, 7
/* 8082A320  41 82 00 4C */	beq lbl_8082A36C
/* 8082A324  38 00 00 00 */	li r0, 0
/* 8082A328  B0 1C 07 B0 */	sth r0, 0x7b0(r28)
/* 8082A32C  7F 83 E3 78 */	mr r3, r28
/* 8082A330  38 80 00 05 */	li r4, 5
/* 8082A334  38 A0 00 00 */	li r5, 0
/* 8082A338  4B FF F1 1D */	bl setActionMode__8daE_ZH_cFii
/* 8082A33C  3B C0 00 00 */	li r30, 0
/* 8082A340  48 00 00 2C */	b lbl_8082A36C
lbl_8082A344:
/* 8082A344  80 1C 08 20 */	lwz r0, 0x820(r28)
/* 8082A348  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 8082A34C  41 82 00 20 */	beq lbl_8082A36C
/* 8082A350  C0 1F 00 70 */	lfs f0, 0x70(r31)
/* 8082A354  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 8082A358  4C 40 13 82 */	cror 2, 0, 2
/* 8082A35C  40 82 00 10 */	bne lbl_8082A36C
/* 8082A360  38 00 00 01 */	li r0, 1
/* 8082A364  98 1C 07 AF */	stb r0, 0x7af(r28)
/* 8082A368  3B C0 00 01 */	li r30, 1
lbl_8082A36C:
/* 8082A36C  7F C3 F3 78 */	mr r3, r30
lbl_8082A370:
/* 8082A370  E3 E1 00 68 */	psq_l f31, 104(r1), 0, 0 /* qr0 */
/* 8082A374  CB E1 00 60 */	lfd f31, 0x60(r1)
/* 8082A378  39 61 00 60 */	addi r11, r1, 0x60
/* 8082A37C  4B B3 7E A4 */	b _restgpr_27
/* 8082A380  80 01 00 74 */	lwz r0, 0x74(r1)
/* 8082A384  7C 08 03 A6 */	mtlr r0
/* 8082A388  38 21 00 70 */	addi r1, r1, 0x70
/* 8082A38C  4E 80 00 20 */	blr 
