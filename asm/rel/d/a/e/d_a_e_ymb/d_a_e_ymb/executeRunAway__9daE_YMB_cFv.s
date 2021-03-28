lbl_80819FD0:
/* 80819FD0  94 21 FF 60 */	stwu r1, -0xa0(r1)
/* 80819FD4  7C 08 02 A6 */	mflr r0
/* 80819FD8  90 01 00 A4 */	stw r0, 0xa4(r1)
/* 80819FDC  39 61 00 A0 */	addi r11, r1, 0xa0
/* 80819FE0  4B B4 81 F8 */	b _savegpr_28
/* 80819FE4  7C 7D 1B 78 */	mr r29, r3
/* 80819FE8  3C 80 80 82 */	lis r4, lit_3791@ha
/* 80819FEC  3B C4 18 AC */	addi r30, r4, lit_3791@l
/* 80819FF0  3C 80 80 40 */	lis r4, g_dComIfG_gameInfo@ha
/* 80819FF4  38 84 61 C0 */	addi r4, r4, g_dComIfG_gameInfo@l
/* 80819FF8  80 84 5D AC */	lwz r4, 0x5dac(r4)
/* 80819FFC  C0 04 04 D0 */	lfs f0, 0x4d0(r4)
/* 8081A000  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8081A004  C0 04 04 D4 */	lfs f0, 0x4d4(r4)
/* 8081A008  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8081A00C  C0 04 04 D8 */	lfs f0, 0x4d8(r4)
/* 8081A010  D0 01 00 74 */	stfs f0, 0x74(r1)
/* 8081A014  4B 80 06 FC */	b fopAcM_searchActorAngleY__FPC10fopAc_ac_cPC10fopAc_ac_c
/* 8081A018  7C 7F 1B 78 */	mr r31, r3
/* 8081A01C  3C 60 00 07 */	lis r3, 0x0007 /* 0x0007029B@ha */
/* 8081A020  38 03 02 9B */	addi r0, r3, 0x029B /* 0x0007029B@l */
/* 8081A024  90 01 00 14 */	stw r0, 0x14(r1)
/* 8081A028  38 7D 05 C4 */	addi r3, r29, 0x5c4
/* 8081A02C  38 81 00 14 */	addi r4, r1, 0x14
/* 8081A030  38 A0 00 00 */	li r5, 0
/* 8081A034  38 C0 FF FF */	li r6, -1
/* 8081A038  81 9D 05 C4 */	lwz r12, 0x5c4(r29)
/* 8081A03C  81 8C 00 18 */	lwz r12, 0x18(r12)
/* 8081A040  7D 89 03 A6 */	mtctr r12
/* 8081A044  4E 80 04 21 */	bctrl 
/* 8081A048  7F A3 EB 78 */	mr r3, r29
/* 8081A04C  4B FF D1 B5 */	bl setFlyWaitVoice__9daE_YMB_cFv
/* 8081A050  38 00 00 01 */	li r0, 1
/* 8081A054  98 1D 07 12 */	stb r0, 0x712(r29)
/* 8081A058  80 1D 06 B8 */	lwz r0, 0x6b8(r29)
/* 8081A05C  2C 00 00 02 */	cmpwi r0, 2
/* 8081A060  41 82 03 E0 */	beq lbl_8081A440
/* 8081A064  40 80 00 14 */	bge lbl_8081A078
/* 8081A068  2C 00 00 00 */	cmpwi r0, 0
/* 8081A06C  41 82 00 18 */	beq lbl_8081A084
/* 8081A070  40 80 00 34 */	bge lbl_8081A0A4
/* 8081A074  48 00 06 8C */	b lbl_8081A700
lbl_8081A078:
/* 8081A078  2C 00 00 04 */	cmpwi r0, 4
/* 8081A07C  40 80 06 84 */	bge lbl_8081A700
/* 8081A080  48 00 05 C0 */	b lbl_8081A640
lbl_8081A084:
/* 8081A084  7F A3 EB 78 */	mr r3, r29
/* 8081A088  38 80 00 11 */	li r4, 0x11
/* 8081A08C  38 A0 00 02 */	li r5, 2
/* 8081A090  C0 3E 00 90 */	lfs f1, 0x90(r30)
/* 8081A094  C0 5E 00 00 */	lfs f2, 0(r30)
/* 8081A098  4B FF C8 E5 */	bl setBck__9daE_YMB_cFiUcff
/* 8081A09C  38 00 00 01 */	li r0, 1
/* 8081A0A0  90 1D 06 B8 */	stw r0, 0x6b8(r29)
lbl_8081A0A4:
/* 8081A0A4  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8081A0A8  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8081A0AC  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8081A0B0  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081A0B4  D0 21 00 4C */	stfs f1, 0x4c(r1)
/* 8081A0B8  D0 41 00 50 */	stfs f2, 0x50(r1)
/* 8081A0BC  C0 5D 06 A4 */	lfs f2, 0x6a4(r29)
/* 8081A0C0  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 8081A0C4  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8081A0C8  D0 21 00 58 */	stfs f1, 0x58(r1)
/* 8081A0CC  D0 41 00 5C */	stfs f2, 0x5c(r1)
/* 8081A0D0  38 61 00 48 */	addi r3, r1, 0x48
/* 8081A0D4  38 81 00 54 */	addi r4, r1, 0x54
/* 8081A0D8  4B B2 D2 C4 */	b PSVECSquareDistance
/* 8081A0DC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081A0E0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081A0E4  40 81 00 58 */	ble lbl_8081A13C
/* 8081A0E8  FC 00 08 34 */	frsqrte f0, f1
/* 8081A0EC  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081A0F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8081A0F4  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081A0F8  FC 00 00 32 */	fmul f0, f0, f0
/* 8081A0FC  FC 01 00 32 */	fmul f0, f1, f0
/* 8081A100  FC 03 00 28 */	fsub f0, f3, f0
/* 8081A104  FC 02 00 32 */	fmul f0, f2, f0
/* 8081A108  FC 44 00 32 */	fmul f2, f4, f0
/* 8081A10C  FC 00 00 32 */	fmul f0, f0, f0
/* 8081A110  FC 01 00 32 */	fmul f0, f1, f0
/* 8081A114  FC 03 00 28 */	fsub f0, f3, f0
/* 8081A118  FC 02 00 32 */	fmul f0, f2, f0
/* 8081A11C  FC 44 00 32 */	fmul f2, f4, f0
/* 8081A120  FC 00 00 32 */	fmul f0, f0, f0
/* 8081A124  FC 01 00 32 */	fmul f0, f1, f0
/* 8081A128  FC 03 00 28 */	fsub f0, f3, f0
/* 8081A12C  FC 02 00 32 */	fmul f0, f2, f0
/* 8081A130  FC 21 00 32 */	fmul f1, f1, f0
/* 8081A134  FC 20 08 18 */	frsp f1, f1
/* 8081A138  48 00 00 88 */	b lbl_8081A1C0
lbl_8081A13C:
/* 8081A13C  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081A140  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081A144  40 80 00 10 */	bge lbl_8081A154
/* 8081A148  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081A14C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8081A150  48 00 00 70 */	b lbl_8081A1C0
lbl_8081A154:
/* 8081A154  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8081A158  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8081A15C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081A160  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081A164  7C 03 00 00 */	cmpw r3, r0
/* 8081A168  41 82 00 14 */	beq lbl_8081A17C
/* 8081A16C  40 80 00 40 */	bge lbl_8081A1AC
/* 8081A170  2C 03 00 00 */	cmpwi r3, 0
/* 8081A174  41 82 00 20 */	beq lbl_8081A194
/* 8081A178  48 00 00 34 */	b lbl_8081A1AC
lbl_8081A17C:
/* 8081A17C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081A180  41 82 00 0C */	beq lbl_8081A18C
/* 8081A184  38 00 00 01 */	li r0, 1
/* 8081A188  48 00 00 28 */	b lbl_8081A1B0
lbl_8081A18C:
/* 8081A18C  38 00 00 02 */	li r0, 2
/* 8081A190  48 00 00 20 */	b lbl_8081A1B0
lbl_8081A194:
/* 8081A194  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081A198  41 82 00 0C */	beq lbl_8081A1A4
/* 8081A19C  38 00 00 05 */	li r0, 5
/* 8081A1A0  48 00 00 10 */	b lbl_8081A1B0
lbl_8081A1A4:
/* 8081A1A4  38 00 00 03 */	li r0, 3
/* 8081A1A8  48 00 00 08 */	b lbl_8081A1B0
lbl_8081A1AC:
/* 8081A1AC  38 00 00 04 */	li r0, 4
lbl_8081A1B0:
/* 8081A1B0  2C 00 00 01 */	cmpwi r0, 1
/* 8081A1B4  40 82 00 0C */	bne lbl_8081A1C0
/* 8081A1B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081A1BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8081A1C0:
/* 8081A1C0  C0 1E 00 94 */	lfs f0, 0x94(r30)
/* 8081A1C4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081A1C8  40 81 00 18 */	ble lbl_8081A1E0
/* 8081A1CC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8081A1D0  38 9D 06 9C */	addi r4, r29, 0x69c
/* 8081A1D4  4B A5 6A 30 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8081A1D8  7C 7C 1B 78 */	mr r28, r3
/* 8081A1DC  48 00 01 F0 */	b lbl_8081A3CC
lbl_8081A1E0:
/* 8081A1E0  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8081A1E4  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8081A1E8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8081A1EC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081A1F0  D0 21 00 34 */	stfs f1, 0x34(r1)
/* 8081A1F4  D0 41 00 38 */	stfs f2, 0x38(r1)
/* 8081A1F8  C0 5D 06 A4 */	lfs f2, 0x6a4(r29)
/* 8081A1FC  C0 1D 06 9C */	lfs f0, 0x69c(r29)
/* 8081A200  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8081A204  D0 21 00 40 */	stfs f1, 0x40(r1)
/* 8081A208  D0 41 00 44 */	stfs f2, 0x44(r1)
/* 8081A20C  38 61 00 30 */	addi r3, r1, 0x30
/* 8081A210  38 81 00 3C */	addi r4, r1, 0x3c
/* 8081A214  4B B2 D1 88 */	b PSVECSquareDistance
/* 8081A218  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081A21C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081A220  40 81 00 58 */	ble lbl_8081A278
/* 8081A224  FC 00 08 34 */	frsqrte f0, f1
/* 8081A228  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081A22C  FC 44 00 32 */	fmul f2, f4, f0
/* 8081A230  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081A234  FC 00 00 32 */	fmul f0, f0, f0
/* 8081A238  FC 01 00 32 */	fmul f0, f1, f0
/* 8081A23C  FC 03 00 28 */	fsub f0, f3, f0
/* 8081A240  FC 02 00 32 */	fmul f0, f2, f0
/* 8081A244  FC 44 00 32 */	fmul f2, f4, f0
/* 8081A248  FC 00 00 32 */	fmul f0, f0, f0
/* 8081A24C  FC 01 00 32 */	fmul f0, f1, f0
/* 8081A250  FC 03 00 28 */	fsub f0, f3, f0
/* 8081A254  FC 02 00 32 */	fmul f0, f2, f0
/* 8081A258  FC 44 00 32 */	fmul f2, f4, f0
/* 8081A25C  FC 00 00 32 */	fmul f0, f0, f0
/* 8081A260  FC 01 00 32 */	fmul f0, f1, f0
/* 8081A264  FC 03 00 28 */	fsub f0, f3, f0
/* 8081A268  FC 02 00 32 */	fmul f0, f2, f0
/* 8081A26C  FC 21 00 32 */	fmul f1, f1, f0
/* 8081A270  FC 20 08 18 */	frsp f1, f1
/* 8081A274  48 00 00 88 */	b lbl_8081A2FC
lbl_8081A278:
/* 8081A278  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081A27C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081A280  40 80 00 10 */	bge lbl_8081A290
/* 8081A284  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081A288  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8081A28C  48 00 00 70 */	b lbl_8081A2FC
lbl_8081A290:
/* 8081A290  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8081A294  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8081A298  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081A29C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081A2A0  7C 03 00 00 */	cmpw r3, r0
/* 8081A2A4  41 82 00 14 */	beq lbl_8081A2B8
/* 8081A2A8  40 80 00 40 */	bge lbl_8081A2E8
/* 8081A2AC  2C 03 00 00 */	cmpwi r3, 0
/* 8081A2B0  41 82 00 20 */	beq lbl_8081A2D0
/* 8081A2B4  48 00 00 34 */	b lbl_8081A2E8
lbl_8081A2B8:
/* 8081A2B8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081A2BC  41 82 00 0C */	beq lbl_8081A2C8
/* 8081A2C0  38 00 00 01 */	li r0, 1
/* 8081A2C4  48 00 00 28 */	b lbl_8081A2EC
lbl_8081A2C8:
/* 8081A2C8  38 00 00 02 */	li r0, 2
/* 8081A2CC  48 00 00 20 */	b lbl_8081A2EC
lbl_8081A2D0:
/* 8081A2D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081A2D4  41 82 00 0C */	beq lbl_8081A2E0
/* 8081A2D8  38 00 00 05 */	li r0, 5
/* 8081A2DC  48 00 00 10 */	b lbl_8081A2EC
lbl_8081A2E0:
/* 8081A2E0  38 00 00 03 */	li r0, 3
/* 8081A2E4  48 00 00 08 */	b lbl_8081A2EC
lbl_8081A2E8:
/* 8081A2E8  38 00 00 04 */	li r0, 4
lbl_8081A2EC:
/* 8081A2EC  2C 00 00 01 */	cmpwi r0, 1
/* 8081A2F0  40 82 00 0C */	bne lbl_8081A2FC
/* 8081A2F4  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081A2F8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8081A2FC:
/* 8081A2FC  C0 1E 00 98 */	lfs f0, 0x98(r30)
/* 8081A300  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081A304  40 81 00 6C */	ble lbl_8081A370
/* 8081A308  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8081A30C  4B A4 D6 80 */	b cM_rndFX__Ff
/* 8081A310  7F FF 07 34 */	extsh r31, r31
/* 8081A314  3C 7F 00 01 */	addis r3, r31, 1
/* 8081A318  38 03 80 00 */	addi r0, r3, -32768
/* 8081A31C  C8 5E 00 20 */	lfd f2, 0x20(r30)
/* 8081A320  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8081A324  90 01 00 7C */	stw r0, 0x7c(r1)
/* 8081A328  3C 00 43 30 */	lis r0, 0x4330
/* 8081A32C  90 01 00 78 */	stw r0, 0x78(r1)
/* 8081A330  C8 01 00 78 */	lfd f0, 0x78(r1)
/* 8081A334  EC 00 10 28 */	fsubs f0, f0, f2
/* 8081A338  EC 00 08 2A */	fadds f0, f0, f1
/* 8081A33C  FC 00 00 1E */	fctiwz f0, f0
/* 8081A340  D8 01 00 80 */	stfd f0, 0x80(r1)
/* 8081A344  83 81 00 84 */	lwz r28, 0x84(r1)
/* 8081A348  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8081A34C  38 9D 06 9C */	addi r4, r29, 0x69c
/* 8081A350  4B A5 68 B4 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8081A354  7C 1F 18 50 */	subf r0, r31, r3
/* 8081A358  7C 00 07 35 */	extsh. r0, r0
/* 8081A35C  40 81 00 0C */	ble lbl_8081A368
/* 8081A360  3B 9C E8 00 */	addi r28, r28, -6144
/* 8081A364  48 00 00 68 */	b lbl_8081A3CC
lbl_8081A368:
/* 8081A368  3B 9C 18 00 */	addi r28, r28, 0x1800
/* 8081A36C  48 00 00 60 */	b lbl_8081A3CC
lbl_8081A370:
/* 8081A370  C0 3E 00 9C */	lfs f1, 0x9c(r30)
/* 8081A374  4B A4 D6 18 */	b cM_rndFX__Ff
/* 8081A378  7F E3 07 34 */	extsh r3, r31
/* 8081A37C  3C 63 00 01 */	addis r3, r3, 1
/* 8081A380  38 03 80 00 */	addi r0, r3, -32768
/* 8081A384  C8 5E 00 20 */	lfd f2, 0x20(r30)
/* 8081A388  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8081A38C  90 01 00 84 */	stw r0, 0x84(r1)
/* 8081A390  3C 00 43 30 */	lis r0, 0x4330
/* 8081A394  90 01 00 80 */	stw r0, 0x80(r1)
/* 8081A398  C8 01 00 80 */	lfd f0, 0x80(r1)
/* 8081A39C  EC 00 10 28 */	fsubs f0, f0, f2
/* 8081A3A0  EC 00 08 2A */	fadds f0, f0, f1
/* 8081A3A4  FC 00 00 1E */	fctiwz f0, f0
/* 8081A3A8  D8 01 00 78 */	stfd f0, 0x78(r1)
/* 8081A3AC  83 81 00 7C */	lwz r28, 0x7c(r1)
/* 8081A3B0  4B A4 D4 BC */	b cM_rnd__Fv
/* 8081A3B4  C0 1E 00 A0 */	lfs f0, 0xa0(r30)
/* 8081A3B8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081A3BC  40 80 00 0C */	bge lbl_8081A3C8
/* 8081A3C0  3B 9C 18 00 */	addi r28, r28, 0x1800
/* 8081A3C4  48 00 00 08 */	b lbl_8081A3CC
lbl_8081A3C8:
/* 8081A3C8  3B 9C E8 00 */	addi r28, r28, -6144
lbl_8081A3CC:
/* 8081A3CC  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081A3D0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8081A3D4  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8081A3D8  C0 1E 00 C0 */	lfs f0, 0xc0(r30)
/* 8081A3DC  D0 01 00 68 */	stfs f0, 0x68(r1)
/* 8081A3E0  38 7D 06 A8 */	addi r3, r29, 0x6a8
/* 8081A3E4  38 81 00 6C */	addi r4, r1, 0x6c
/* 8081A3E8  7F 85 E3 78 */	mr r5, r28
/* 8081A3EC  38 C1 00 60 */	addi r6, r1, 0x60
/* 8081A3F0  4B A5 69 D0 */	b cLib_offsetPos__FP4cXyzPC4cXyzsPC4cXyz
/* 8081A3F4  C0 1D 06 A0 */	lfs f0, 0x6a0(r29)
/* 8081A3F8  D0 1D 06 AC */	stfs f0, 0x6ac(r29)
/* 8081A3FC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8081A400  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 8081A404  4B A5 68 00 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8081A408  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8081A40C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8081A410  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 8081A414  4B A5 68 60 */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8081A418  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 8081A41C  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081A420  D0 1D 04 FC */	stfs f0, 0x4fc(r29)
/* 8081A424  D0 1D 05 2C */	stfs f0, 0x52c(r29)
/* 8081A428  D0 1D 06 C8 */	stfs f0, 0x6c8(r29)
/* 8081A42C  38 00 00 1E */	li r0, 0x1e
/* 8081A430  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 8081A434  38 00 00 02 */	li r0, 2
/* 8081A438  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081A43C  48 00 02 C4 */	b lbl_8081A700
lbl_8081A440:
/* 8081A440  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8081A444  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 8081A448  4B A5 67 BC */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8081A44C  B0 7D 04 DE */	sth r3, 0x4de(r29)
/* 8081A450  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8081A454  38 9D 06 A8 */	addi r4, r29, 0x6a8
/* 8081A458  4B A5 68 1C */	b cLib_targetAngleX__FPC4cXyzPC4cXyz
/* 8081A45C  B0 7D 04 DC */	sth r3, 0x4dc(r29)
/* 8081A460  38 7D 06 C8 */	addi r3, r29, 0x6c8
/* 8081A464  3C 80 80 82 */	lis r4, l_HIO@ha
/* 8081A468  38 84 1E 64 */	addi r4, r4, l_HIO@l
/* 8081A46C  C0 24 00 14 */	lfs f1, 0x14(r4)
/* 8081A470  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 8081A474  4B A5 62 CC */	b cLib_chaseF__FPfff
/* 8081A478  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8081A47C  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8081A480  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8081A484  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8081A488  7C 63 02 14 */	add r3, r3, r0
/* 8081A48C  C0 03 00 04 */	lfs f0, 4(r3)
/* 8081A490  FC 00 02 10 */	fabs f0, f0
/* 8081A494  FC 20 00 18 */	frsp f1, f0
/* 8081A498  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8081A49C  C0 1D 06 C8 */	lfs f0, 0x6c8(r29)
/* 8081A4A0  EC 20 00 72 */	fmuls f1, f0, f1
/* 8081A4A4  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 8081A4A8  4B A5 62 98 */	b cLib_chaseF__FPfff
/* 8081A4AC  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8081A4B0  38 81 00 6C */	addi r4, r1, 0x6c
/* 8081A4B4  4B A5 67 50 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8081A4B8  7C 64 1B 78 */	mr r4, r3
/* 8081A4BC  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8081A4C0  38 A0 04 00 */	li r5, 0x400
/* 8081A4C4  4B A5 66 CC */	b cLib_chaseAngleS__FPsss
/* 8081A4C8  A8 1D 04 DC */	lha r0, 0x4dc(r29)
/* 8081A4CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8081A4D0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 8081A4D4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 8081A4D8  7C 23 04 2E */	lfsx f1, r3, r0
/* 8081A4DC  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8081A4E0  C0 1D 06 C8 */	lfs f0, 0x6c8(r29)
/* 8081A4E4  EC 20 00 72 */	fmuls f1, f0, f1
/* 8081A4E8  C0 5E 00 90 */	lfs f2, 0x90(r30)
/* 8081A4EC  4B A5 62 54 */	b cLib_chaseF__FPfff
/* 8081A4F0  7F A3 EB 78 */	mr r3, r29
/* 8081A4F4  4B FF E0 25 */	bl setBodyAngle__9daE_YMB_cFv
/* 8081A4F8  C0 5D 06 B0 */	lfs f2, 0x6b0(r29)
/* 8081A4FC  C0 1D 06 A8 */	lfs f0, 0x6a8(r29)
/* 8081A500  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 8081A504  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081A508  D0 21 00 1C */	stfs f1, 0x1c(r1)
/* 8081A50C  D0 41 00 20 */	stfs f2, 0x20(r1)
/* 8081A510  C0 5D 04 D8 */	lfs f2, 0x4d8(r29)
/* 8081A514  C0 1D 04 D0 */	lfs f0, 0x4d0(r29)
/* 8081A518  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8081A51C  D0 21 00 28 */	stfs f1, 0x28(r1)
/* 8081A520  D0 41 00 2C */	stfs f2, 0x2c(r1)
/* 8081A524  38 61 00 18 */	addi r3, r1, 0x18
/* 8081A528  38 81 00 24 */	addi r4, r1, 0x24
/* 8081A52C  4B B2 CE 70 */	b PSVECSquareDistance
/* 8081A530  C0 1E 00 18 */	lfs f0, 0x18(r30)
/* 8081A534  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081A538  40 81 00 58 */	ble lbl_8081A590
/* 8081A53C  FC 00 08 34 */	frsqrte f0, f1
/* 8081A540  C8 9E 00 40 */	lfd f4, 0x40(r30)
/* 8081A544  FC 44 00 32 */	fmul f2, f4, f0
/* 8081A548  C8 7E 00 48 */	lfd f3, 0x48(r30)
/* 8081A54C  FC 00 00 32 */	fmul f0, f0, f0
/* 8081A550  FC 01 00 32 */	fmul f0, f1, f0
/* 8081A554  FC 03 00 28 */	fsub f0, f3, f0
/* 8081A558  FC 02 00 32 */	fmul f0, f2, f0
/* 8081A55C  FC 44 00 32 */	fmul f2, f4, f0
/* 8081A560  FC 00 00 32 */	fmul f0, f0, f0
/* 8081A564  FC 01 00 32 */	fmul f0, f1, f0
/* 8081A568  FC 03 00 28 */	fsub f0, f3, f0
/* 8081A56C  FC 02 00 32 */	fmul f0, f2, f0
/* 8081A570  FC 44 00 32 */	fmul f2, f4, f0
/* 8081A574  FC 00 00 32 */	fmul f0, f0, f0
/* 8081A578  FC 01 00 32 */	fmul f0, f1, f0
/* 8081A57C  FC 03 00 28 */	fsub f0, f3, f0
/* 8081A580  FC 02 00 32 */	fmul f0, f2, f0
/* 8081A584  FC 21 00 32 */	fmul f1, f1, f0
/* 8081A588  FC 20 08 18 */	frsp f1, f1
/* 8081A58C  48 00 00 88 */	b lbl_8081A614
lbl_8081A590:
/* 8081A590  C8 1E 00 50 */	lfd f0, 0x50(r30)
/* 8081A594  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081A598  40 80 00 10 */	bge lbl_8081A5A8
/* 8081A59C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081A5A0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 8081A5A4  48 00 00 70 */	b lbl_8081A614
lbl_8081A5A8:
/* 8081A5A8  D0 21 00 08 */	stfs f1, 8(r1)
/* 8081A5AC  80 81 00 08 */	lwz r4, 8(r1)
/* 8081A5B0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8081A5B4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8081A5B8  7C 03 00 00 */	cmpw r3, r0
/* 8081A5BC  41 82 00 14 */	beq lbl_8081A5D0
/* 8081A5C0  40 80 00 40 */	bge lbl_8081A600
/* 8081A5C4  2C 03 00 00 */	cmpwi r3, 0
/* 8081A5C8  41 82 00 20 */	beq lbl_8081A5E8
/* 8081A5CC  48 00 00 34 */	b lbl_8081A600
lbl_8081A5D0:
/* 8081A5D0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081A5D4  41 82 00 0C */	beq lbl_8081A5E0
/* 8081A5D8  38 00 00 01 */	li r0, 1
/* 8081A5DC  48 00 00 28 */	b lbl_8081A604
lbl_8081A5E0:
/* 8081A5E0  38 00 00 02 */	li r0, 2
/* 8081A5E4  48 00 00 20 */	b lbl_8081A604
lbl_8081A5E8:
/* 8081A5E8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8081A5EC  41 82 00 0C */	beq lbl_8081A5F8
/* 8081A5F0  38 00 00 05 */	li r0, 5
/* 8081A5F4  48 00 00 10 */	b lbl_8081A604
lbl_8081A5F8:
/* 8081A5F8  38 00 00 03 */	li r0, 3
/* 8081A5FC  48 00 00 08 */	b lbl_8081A604
lbl_8081A600:
/* 8081A600  38 00 00 04 */	li r0, 4
lbl_8081A604:
/* 8081A604  2C 00 00 01 */	cmpwi r0, 1
/* 8081A608  40 82 00 0C */	bne lbl_8081A614
/* 8081A60C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 8081A610  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_8081A614:
/* 8081A614  C0 1E 00 2C */	lfs f0, 0x2c(r30)
/* 8081A618  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8081A61C  41 80 00 10 */	blt lbl_8081A62C
/* 8081A620  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 8081A624  2C 00 00 00 */	cmpwi r0, 0
/* 8081A628  40 82 00 D8 */	bne lbl_8081A700
lbl_8081A62C:
/* 8081A62C  38 00 00 03 */	li r0, 3
/* 8081A630  90 1D 06 B8 */	stw r0, 0x6b8(r29)
/* 8081A634  38 00 00 1E */	li r0, 0x1e
/* 8081A638  90 1D 06 FC */	stw r0, 0x6fc(r29)
/* 8081A63C  48 00 00 C4 */	b lbl_8081A700
lbl_8081A640:
/* 8081A640  C0 5D 04 D4 */	lfs f2, 0x4d4(r29)
/* 8081A644  C0 3E 00 A4 */	lfs f1, 0xa4(r30)
/* 8081A648  C0 1D 06 D0 */	lfs f0, 0x6d0(r29)
/* 8081A64C  EC 01 00 2A */	fadds f0, f1, f0
/* 8081A650  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 8081A654  40 80 00 08 */	bge lbl_8081A65C
/* 8081A658  D0 1D 04 D4 */	stfs f0, 0x4d4(r29)
lbl_8081A65C:
/* 8081A65C  38 7D 04 D0 */	addi r3, r29, 0x4d0
/* 8081A660  38 81 00 6C */	addi r4, r1, 0x6c
/* 8081A664  4B A5 65 A0 */	b cLib_targetAngleY__FPC3VecPC3Vec
/* 8081A668  7C 64 1B 78 */	mr r4, r3
/* 8081A66C  38 7D 04 E6 */	addi r3, r29, 0x4e6
/* 8081A670  38 A0 08 00 */	li r5, 0x800
/* 8081A674  4B A5 65 1C */	b cLib_chaseAngleS__FPsss
/* 8081A678  38 7D 06 EA */	addi r3, r29, 0x6ea
/* 8081A67C  38 80 00 00 */	li r4, 0
/* 8081A680  38 A0 04 00 */	li r5, 0x400
/* 8081A684  4B A5 65 0C */	b cLib_chaseAngleS__FPsss
/* 8081A688  38 7D 04 E8 */	addi r3, r29, 0x4e8
/* 8081A68C  38 80 00 00 */	li r4, 0
/* 8081A690  38 A0 04 00 */	li r5, 0x400
/* 8081A694  4B A5 64 FC */	b cLib_chaseAngleS__FPsss
/* 8081A698  38 7D 05 2C */	addi r3, r29, 0x52c
/* 8081A69C  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081A6A0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8081A6A4  4B A5 60 9C */	b cLib_chaseF__FPfff
/* 8081A6A8  38 7D 04 FC */	addi r3, r29, 0x4fc
/* 8081A6AC  C0 3E 00 18 */	lfs f1, 0x18(r30)
/* 8081A6B0  C0 5E 00 38 */	lfs f2, 0x38(r30)
/* 8081A6B4  4B A5 60 8C */	b cLib_chaseF__FPfff
/* 8081A6B8  C0 1D 04 D4 */	lfs f0, 0x4d4(r29)
/* 8081A6BC  C0 3D 06 CC */	lfs f1, 0x6cc(r29)
/* 8081A6C0  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 8081A6C4  40 80 00 08 */	bge lbl_8081A6CC
/* 8081A6C8  D0 3D 04 D4 */	stfs f1, 0x4d4(r29)
lbl_8081A6CC:
/* 8081A6CC  7F A3 EB 78 */	mr r3, r29
/* 8081A6D0  4B FF E2 61 */	bl checkWolfLockIn__9daE_YMB_cFv
/* 8081A6D4  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8081A6D8  41 82 00 0C */	beq lbl_8081A6E4
/* 8081A6DC  38 00 00 01 */	li r0, 1
/* 8081A6E0  90 1D 06 B8 */	stw r0, 0x6b8(r29)
lbl_8081A6E4:
/* 8081A6E4  80 1D 06 FC */	lwz r0, 0x6fc(r29)
/* 8081A6E8  2C 00 00 00 */	cmpwi r0, 0
/* 8081A6EC  40 82 00 14 */	bne lbl_8081A700
/* 8081A6F0  7F A3 EB 78 */	mr r3, r29
/* 8081A6F4  38 80 00 01 */	li r4, 1
/* 8081A6F8  38 A0 00 00 */	li r5, 0
/* 8081A6FC  4B FF C3 81 */	bl setActionMode__9daE_YMB_cFii
lbl_8081A700:
/* 8081A700  39 61 00 A0 */	addi r11, r1, 0xa0
/* 8081A704  4B B4 7B 20 */	b _restgpr_28
/* 8081A708  80 01 00 A4 */	lwz r0, 0xa4(r1)
/* 8081A70C  7C 08 03 A6 */	mtlr r0
/* 8081A710  38 21 00 A0 */	addi r1, r1, 0xa0
/* 8081A714  4E 80 00 20 */	blr 
