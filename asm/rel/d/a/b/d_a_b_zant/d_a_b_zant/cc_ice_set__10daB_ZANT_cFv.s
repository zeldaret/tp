lbl_8064CFA8:
/* 8064CFA8  94 21 FE D0 */	stwu r1, -0x130(r1)
/* 8064CFAC  7C 08 02 A6 */	mflr r0
/* 8064CFB0  90 01 01 34 */	stw r0, 0x134(r1)
/* 8064CFB4  DB E1 01 20 */	stfd f31, 0x120(r1)
/* 8064CFB8  F3 E1 01 28 */	psq_st f31, 296(r1), 0, 0 /* qr0 */
/* 8064CFBC  DB C1 01 10 */	stfd f30, 0x110(r1)
/* 8064CFC0  F3 C1 01 18 */	psq_st f30, 280(r1), 0, 0 /* qr0 */
/* 8064CFC4  DB A1 01 00 */	stfd f29, 0x100(r1)
/* 8064CFC8  F3 A1 01 08 */	psq_st f29, 264(r1), 0, 0 /* qr0 */
/* 8064CFCC  39 61 01 00 */	addi r11, r1, 0x100
/* 8064CFD0  4B D1 51 ED */	bl _savegpr_21
/* 8064CFD4  7C 7F 1B 78 */	mr r31, r3
/* 8064CFD8  3C 60 80 65 */	lis r3, lit_3757@ha /* 0x8064EB1C@ha */
/* 8064CFDC  3B C3 EB 1C */	addi r30, r3, lit_3757@l /* 0x8064EB1C@l */
/* 8064CFE0  80 1F 06 D4 */	lwz r0, 0x6d4(r31)
/* 8064CFE4  2C 00 00 0D */	cmpwi r0, 0xd
/* 8064CFE8  41 82 00 0C */	beq lbl_8064CFF4
/* 8064CFEC  2C 00 00 0C */	cmpwi r0, 0xc
/* 8064CFF0  40 82 08 08 */	bne lbl_8064D7F8
lbl_8064CFF4:
/* 8064CFF4  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064CFF8  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064CFFC  3A E3 56 B8 */	addi r23, r3, 0x56b8
/* 8064D000  7E E3 BB 78 */	mr r3, r23
/* 8064D004  4B A2 67 E1 */	bl LockonTruth__12dAttention_cFv
/* 8064D008  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 8064D00C  41 82 00 18 */	beq lbl_8064D024
/* 8064D010  7E E3 BB 78 */	mr r3, r23
/* 8064D014  38 80 00 00 */	li r4, 0
/* 8064D018  4B A2 65 25 */	bl LockonTarget__12dAttention_cFl
/* 8064D01C  7C 03 F8 40 */	cmplw r3, r31
/* 8064D020  41 82 07 2C */	beq lbl_8064D74C
lbl_8064D024:
/* 8064D024  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8064D028  80 63 00 04 */	lwz r3, 4(r3)
/* 8064D02C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064D030  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064D034  38 63 06 90 */	addi r3, r3, 0x690
/* 8064D038  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064D03C  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064D040  4B CF 94 71 */	bl PSMTXCopy
/* 8064D044  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 8064D048  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8064D04C  FC 60 10 90 */	fmr f3, f2
/* 8064D050  4B 9B FD 4D */	bl transM__14mDoMtx_stack_cFfff
/* 8064D054  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064D058  3A E3 D4 70 */	addi r23, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064D05C  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 8064D060  D0 01 00 B8 */	stfs f0, 0xb8(r1)
/* 8064D064  C0 17 00 1C */	lfs f0, 0x1c(r23)
/* 8064D068  D0 01 00 BC */	stfs f0, 0xbc(r1)
/* 8064D06C  C0 17 00 2C */	lfs f0, 0x2c(r23)
/* 8064D070  D0 01 00 C0 */	stfs f0, 0xc0(r1)
/* 8064D074  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8064D078  80 63 00 04 */	lwz r3, 4(r3)
/* 8064D07C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064D080  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064D084  38 63 07 20 */	addi r3, r3, 0x720
/* 8064D088  7E E4 BB 78 */	mr r4, r23
/* 8064D08C  4B CF 94 25 */	bl PSMTXCopy
/* 8064D090  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 8064D094  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8064D098  FC 60 10 90 */	fmr f3, f2
/* 8064D09C  4B 9B FD 01 */	bl transM__14mDoMtx_stack_cFfff
/* 8064D0A0  C0 17 00 0C */	lfs f0, 0xc(r23)
/* 8064D0A4  D0 01 00 AC */	stfs f0, 0xac(r1)
/* 8064D0A8  C0 17 00 1C */	lfs f0, 0x1c(r23)
/* 8064D0AC  D0 01 00 B0 */	stfs f0, 0xb0(r1)
/* 8064D0B0  C0 17 00 2C */	lfs f0, 0x2c(r23)
/* 8064D0B4  D0 01 00 B4 */	stfs f0, 0xb4(r1)
/* 8064D0B8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064D0BC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064D0C0  80 63 5D AC */	lwz r3, 0x5dac(r3)
/* 8064D0C4  C0 63 04 D0 */	lfs f3, 0x4d0(r3)
/* 8064D0C8  D0 61 00 A0 */	stfs f3, 0xa0(r1)
/* 8064D0CC  C0 03 04 D4 */	lfs f0, 0x4d4(r3)
/* 8064D0D0  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 8064D0D4  C0 43 04 D8 */	lfs f2, 0x4d8(r3)
/* 8064D0D8  D0 41 00 A8 */	stfs f2, 0xa8(r1)
/* 8064D0DC  AB 83 04 E6 */	lha r28, 0x4e6(r3)
/* 8064D0E0  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8064D0E4  D0 01 00 7C */	stfs f0, 0x7c(r1)
/* 8064D0E8  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8064D0EC  D0 21 00 80 */	stfs f1, 0x80(r1)
/* 8064D0F0  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8064D0F4  D0 01 00 84 */	stfs f0, 0x84(r1)
/* 8064D0F8  D0 61 00 88 */	stfs f3, 0x88(r1)
/* 8064D0FC  D0 21 00 8C */	stfs f1, 0x8c(r1)
/* 8064D100  D0 41 00 90 */	stfs f2, 0x90(r1)
/* 8064D104  38 61 00 7C */	addi r3, r1, 0x7c
/* 8064D108  38 81 00 88 */	addi r4, r1, 0x88
/* 8064D10C  4B CF A2 91 */	bl PSVECSquareDistance
/* 8064D110  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064D114  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D118  40 81 00 58 */	ble lbl_8064D170
/* 8064D11C  FC 00 08 34 */	frsqrte f0, f1
/* 8064D120  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 8064D124  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D128  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 8064D12C  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D130  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D134  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D138  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D13C  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D140  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D144  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D148  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D14C  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D150  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D154  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D158  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D15C  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D160  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D164  FC 21 00 32 */	fmul f1, f1, f0
/* 8064D168  FC 20 08 18 */	frsp f1, f1
/* 8064D16C  48 00 00 88 */	b lbl_8064D1F4
lbl_8064D170:
/* 8064D170  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 8064D174  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D178  40 80 00 10 */	bge lbl_8064D188
/* 8064D17C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8064D180  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8064D184  48 00 00 70 */	b lbl_8064D1F4
lbl_8064D188:
/* 8064D188  D0 21 00 18 */	stfs f1, 0x18(r1)
/* 8064D18C  80 81 00 18 */	lwz r4, 0x18(r1)
/* 8064D190  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8064D194  3C 00 7F 80 */	lis r0, 0x7f80
/* 8064D198  7C 03 00 00 */	cmpw r3, r0
/* 8064D19C  41 82 00 14 */	beq lbl_8064D1B0
/* 8064D1A0  40 80 00 40 */	bge lbl_8064D1E0
/* 8064D1A4  2C 03 00 00 */	cmpwi r3, 0
/* 8064D1A8  41 82 00 20 */	beq lbl_8064D1C8
/* 8064D1AC  48 00 00 34 */	b lbl_8064D1E0
lbl_8064D1B0:
/* 8064D1B0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8064D1B4  41 82 00 0C */	beq lbl_8064D1C0
/* 8064D1B8  38 00 00 01 */	li r0, 1
/* 8064D1BC  48 00 00 28 */	b lbl_8064D1E4
lbl_8064D1C0:
/* 8064D1C0  38 00 00 02 */	li r0, 2
/* 8064D1C4  48 00 00 20 */	b lbl_8064D1E4
lbl_8064D1C8:
/* 8064D1C8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8064D1CC  41 82 00 0C */	beq lbl_8064D1D8
/* 8064D1D0  38 00 00 05 */	li r0, 5
/* 8064D1D4  48 00 00 10 */	b lbl_8064D1E4
lbl_8064D1D8:
/* 8064D1D8  38 00 00 03 */	li r0, 3
/* 8064D1DC  48 00 00 08 */	b lbl_8064D1E4
lbl_8064D1E0:
/* 8064D1E0  38 00 00 04 */	li r0, 4
lbl_8064D1E4:
/* 8064D1E4  2C 00 00 01 */	cmpwi r0, 1
/* 8064D1E8  40 82 00 0C */	bne lbl_8064D1F4
/* 8064D1EC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8064D1F0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8064D1F4:
/* 8064D1F4  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8064D1F8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D1FC  40 80 01 7C */	bge lbl_8064D378
/* 8064D200  38 00 00 00 */	li r0, 0
/* 8064D204  98 1F 07 0D */	stb r0, 0x70d(r31)
/* 8064D208  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8064D20C  D0 01 00 64 */	stfs f0, 0x64(r1)
/* 8064D210  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8064D214  D0 21 00 68 */	stfs f1, 0x68(r1)
/* 8064D218  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8064D21C  D0 01 00 6C */	stfs f0, 0x6c(r1)
/* 8064D220  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8064D224  D0 01 00 70 */	stfs f0, 0x70(r1)
/* 8064D228  D0 21 00 74 */	stfs f1, 0x74(r1)
/* 8064D22C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8064D230  D0 01 00 78 */	stfs f0, 0x78(r1)
/* 8064D234  38 61 00 64 */	addi r3, r1, 0x64
/* 8064D238  38 81 00 70 */	addi r4, r1, 0x70
/* 8064D23C  4B CF A1 61 */	bl PSVECSquareDistance
/* 8064D240  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064D244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D248  40 81 00 58 */	ble lbl_8064D2A0
/* 8064D24C  FC 00 08 34 */	frsqrte f0, f1
/* 8064D250  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 8064D254  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D258  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 8064D25C  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D260  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D264  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D268  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D26C  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D270  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D274  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D278  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D27C  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D280  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D284  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D288  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D28C  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D290  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D294  FC 21 00 32 */	fmul f1, f1, f0
/* 8064D298  FC 20 08 18 */	frsp f1, f1
/* 8064D29C  48 00 00 88 */	b lbl_8064D324
lbl_8064D2A0:
/* 8064D2A0  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 8064D2A4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D2A8  40 80 00 10 */	bge lbl_8064D2B8
/* 8064D2AC  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8064D2B0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8064D2B4  48 00 00 70 */	b lbl_8064D324
lbl_8064D2B8:
/* 8064D2B8  D0 21 00 14 */	stfs f1, 0x14(r1)
/* 8064D2BC  80 81 00 14 */	lwz r4, 0x14(r1)
/* 8064D2C0  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8064D2C4  3C 00 7F 80 */	lis r0, 0x7f80
/* 8064D2C8  7C 03 00 00 */	cmpw r3, r0
/* 8064D2CC  41 82 00 14 */	beq lbl_8064D2E0
/* 8064D2D0  40 80 00 40 */	bge lbl_8064D310
/* 8064D2D4  2C 03 00 00 */	cmpwi r3, 0
/* 8064D2D8  41 82 00 20 */	beq lbl_8064D2F8
/* 8064D2DC  48 00 00 34 */	b lbl_8064D310
lbl_8064D2E0:
/* 8064D2E0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8064D2E4  41 82 00 0C */	beq lbl_8064D2F0
/* 8064D2E8  38 00 00 01 */	li r0, 1
/* 8064D2EC  48 00 00 28 */	b lbl_8064D314
lbl_8064D2F0:
/* 8064D2F0  38 00 00 02 */	li r0, 2
/* 8064D2F4  48 00 00 20 */	b lbl_8064D314
lbl_8064D2F8:
/* 8064D2F8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8064D2FC  41 82 00 0C */	beq lbl_8064D308
/* 8064D300  38 00 00 05 */	li r0, 5
/* 8064D304  48 00 00 10 */	b lbl_8064D314
lbl_8064D308:
/* 8064D308  38 00 00 03 */	li r0, 3
/* 8064D30C  48 00 00 08 */	b lbl_8064D314
lbl_8064D310:
/* 8064D310  38 00 00 04 */	li r0, 4
lbl_8064D314:
/* 8064D314  2C 00 00 01 */	cmpwi r0, 1
/* 8064D318  40 82 00 0C */	bne lbl_8064D324
/* 8064D31C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8064D320  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8064D324:
/* 8064D324  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8064D328  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D32C  40 80 03 DC */	bge lbl_8064D708
/* 8064D330  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8064D334  38 81 00 B8 */	addi r4, r1, 0xb8
/* 8064D338  4B C2 38 CD */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8064D33C  7C 03 E0 50 */	subf r0, r3, r28
/* 8064D340  7C 03 07 34 */	extsh r3, r0
/* 8064D344  4B D1 7D 8D */	bl abs
/* 8064D348  7C 77 1B 78 */	mr r23, r3
/* 8064D34C  38 61 00 A0 */	addi r3, r1, 0xa0
/* 8064D350  38 81 00 AC */	addi r4, r1, 0xac
/* 8064D354  4B C2 38 B1 */	bl cLib_targetAngleY__FPC3VecPC3Vec
/* 8064D358  7C 03 E0 50 */	subf r0, r3, r28
/* 8064D35C  7C 03 07 34 */	extsh r3, r0
/* 8064D360  4B D1 7D 71 */	bl abs
/* 8064D364  7C 03 B8 00 */	cmpw r3, r23
/* 8064D368  40 80 03 A0 */	bge lbl_8064D708
/* 8064D36C  38 00 00 01 */	li r0, 1
/* 8064D370  98 1F 07 0D */	stb r0, 0x70d(r31)
/* 8064D374  48 00 03 94 */	b lbl_8064D708
lbl_8064D378:
/* 8064D378  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8064D37C  D0 01 00 4C */	stfs f0, 0x4c(r1)
/* 8064D380  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8064D384  D0 21 00 50 */	stfs f1, 0x50(r1)
/* 8064D388  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8064D38C  D0 01 00 54 */	stfs f0, 0x54(r1)
/* 8064D390  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8064D394  D0 01 00 58 */	stfs f0, 0x58(r1)
/* 8064D398  D0 21 00 5C */	stfs f1, 0x5c(r1)
/* 8064D39C  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8064D3A0  D0 01 00 60 */	stfs f0, 0x60(r1)
/* 8064D3A4  38 61 00 4C */	addi r3, r1, 0x4c
/* 8064D3A8  38 81 00 58 */	addi r4, r1, 0x58
/* 8064D3AC  4B CF 9F F1 */	bl PSVECSquareDistance
/* 8064D3B0  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064D3B4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D3B8  40 81 00 58 */	ble lbl_8064D410
/* 8064D3BC  FC 00 08 34 */	frsqrte f0, f1
/* 8064D3C0  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 8064D3C4  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D3C8  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 8064D3CC  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D3D0  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D3D4  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D3D8  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D3DC  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D3E0  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D3E4  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D3E8  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D3EC  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D3F0  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D3F4  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D3F8  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D3FC  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D400  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D404  FC 21 00 32 */	fmul f1, f1, f0
/* 8064D408  FC 20 08 18 */	frsp f1, f1
/* 8064D40C  48 00 00 88 */	b lbl_8064D494
lbl_8064D410:
/* 8064D410  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 8064D414  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D418  40 80 00 10 */	bge lbl_8064D428
/* 8064D41C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8064D420  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8064D424  48 00 00 70 */	b lbl_8064D494
lbl_8064D428:
/* 8064D428  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 8064D42C  80 81 00 10 */	lwz r4, 0x10(r1)
/* 8064D430  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8064D434  3C 00 7F 80 */	lis r0, 0x7f80
/* 8064D438  7C 03 00 00 */	cmpw r3, r0
/* 8064D43C  41 82 00 14 */	beq lbl_8064D450
/* 8064D440  40 80 00 40 */	bge lbl_8064D480
/* 8064D444  2C 03 00 00 */	cmpwi r3, 0
/* 8064D448  41 82 00 20 */	beq lbl_8064D468
/* 8064D44C  48 00 00 34 */	b lbl_8064D480
lbl_8064D450:
/* 8064D450  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8064D454  41 82 00 0C */	beq lbl_8064D460
/* 8064D458  38 00 00 01 */	li r0, 1
/* 8064D45C  48 00 00 28 */	b lbl_8064D484
lbl_8064D460:
/* 8064D460  38 00 00 02 */	li r0, 2
/* 8064D464  48 00 00 20 */	b lbl_8064D484
lbl_8064D468:
/* 8064D468  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8064D46C  41 82 00 0C */	beq lbl_8064D478
/* 8064D470  38 00 00 05 */	li r0, 5
/* 8064D474  48 00 00 10 */	b lbl_8064D484
lbl_8064D478:
/* 8064D478  38 00 00 03 */	li r0, 3
/* 8064D47C  48 00 00 08 */	b lbl_8064D484
lbl_8064D480:
/* 8064D480  38 00 00 04 */	li r0, 4
lbl_8064D484:
/* 8064D484  2C 00 00 01 */	cmpwi r0, 1
/* 8064D488  40 82 00 0C */	bne lbl_8064D494
/* 8064D48C  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8064D490  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8064D494:
/* 8064D494  C0 1E 00 7C */	lfs f0, 0x7c(r30)
/* 8064D498  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D49C  40 80 00 10 */	bge lbl_8064D4AC
/* 8064D4A0  38 00 00 01 */	li r0, 1
/* 8064D4A4  98 1F 07 0D */	stb r0, 0x70d(r31)
/* 8064D4A8  48 00 02 60 */	b lbl_8064D708
lbl_8064D4AC:
/* 8064D4AC  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8064D4B0  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 8064D4B4  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8064D4B8  D0 21 00 38 */	stfs f1, 0x38(r1)
/* 8064D4BC  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8064D4C0  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 8064D4C4  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8064D4C8  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 8064D4CC  D0 21 00 44 */	stfs f1, 0x44(r1)
/* 8064D4D0  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8064D4D4  D0 01 00 48 */	stfs f0, 0x48(r1)
/* 8064D4D8  38 61 00 34 */	addi r3, r1, 0x34
/* 8064D4DC  38 81 00 40 */	addi r4, r1, 0x40
/* 8064D4E0  4B CF 9E BD */	bl PSVECSquareDistance
/* 8064D4E4  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064D4E8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D4EC  40 81 00 58 */	ble lbl_8064D544
/* 8064D4F0  FC 00 08 34 */	frsqrte f0, f1
/* 8064D4F4  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 8064D4F8  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D4FC  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 8064D500  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D504  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D508  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D50C  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D510  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D514  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D518  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D51C  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D520  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D524  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D528  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D52C  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D530  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D534  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D538  FF E1 00 32 */	fmul f31, f1, f0
/* 8064D53C  FF E0 F8 18 */	frsp f31, f31
/* 8064D540  48 00 00 90 */	b lbl_8064D5D0
lbl_8064D544:
/* 8064D544  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 8064D548  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D54C  40 80 00 10 */	bge lbl_8064D55C
/* 8064D550  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8064D554  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8064D558  48 00 00 78 */	b lbl_8064D5D0
lbl_8064D55C:
/* 8064D55C  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 8064D560  80 81 00 0C */	lwz r4, 0xc(r1)
/* 8064D564  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8064D568  3C 00 7F 80 */	lis r0, 0x7f80
/* 8064D56C  7C 03 00 00 */	cmpw r3, r0
/* 8064D570  41 82 00 14 */	beq lbl_8064D584
/* 8064D574  40 80 00 40 */	bge lbl_8064D5B4
/* 8064D578  2C 03 00 00 */	cmpwi r3, 0
/* 8064D57C  41 82 00 20 */	beq lbl_8064D59C
/* 8064D580  48 00 00 34 */	b lbl_8064D5B4
lbl_8064D584:
/* 8064D584  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8064D588  41 82 00 0C */	beq lbl_8064D594
/* 8064D58C  38 00 00 01 */	li r0, 1
/* 8064D590  48 00 00 28 */	b lbl_8064D5B8
lbl_8064D594:
/* 8064D594  38 00 00 02 */	li r0, 2
/* 8064D598  48 00 00 20 */	b lbl_8064D5B8
lbl_8064D59C:
/* 8064D59C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8064D5A0  41 82 00 0C */	beq lbl_8064D5AC
/* 8064D5A4  38 00 00 05 */	li r0, 5
/* 8064D5A8  48 00 00 10 */	b lbl_8064D5B8
lbl_8064D5AC:
/* 8064D5AC  38 00 00 03 */	li r0, 3
/* 8064D5B0  48 00 00 08 */	b lbl_8064D5B8
lbl_8064D5B4:
/* 8064D5B4  38 00 00 04 */	li r0, 4
lbl_8064D5B8:
/* 8064D5B8  2C 00 00 01 */	cmpwi r0, 1
/* 8064D5BC  40 82 00 10 */	bne lbl_8064D5CC
/* 8064D5C0  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8064D5C4  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8064D5C8  48 00 00 08 */	b lbl_8064D5D0
lbl_8064D5CC:
/* 8064D5CC  FF E0 08 90 */	fmr f31, f1
lbl_8064D5D0:
/* 8064D5D0  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8064D5D4  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 8064D5D8  C0 3E 00 28 */	lfs f1, 0x28(r30)
/* 8064D5DC  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 8064D5E0  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8064D5E4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8064D5E8  C0 01 00 A0 */	lfs f0, 0xa0(r1)
/* 8064D5EC  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8064D5F0  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 8064D5F4  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 8064D5F8  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 8064D5FC  38 61 00 1C */	addi r3, r1, 0x1c
/* 8064D600  38 81 00 28 */	addi r4, r1, 0x28
/* 8064D604  4B CF 9D 99 */	bl PSVECSquareDistance
/* 8064D608  C0 1E 00 28 */	lfs f0, 0x28(r30)
/* 8064D60C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D610  40 81 00 58 */	ble lbl_8064D668
/* 8064D614  FC 00 08 34 */	frsqrte f0, f1
/* 8064D618  C8 9E 00 80 */	lfd f4, 0x80(r30)
/* 8064D61C  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D620  C8 7E 00 88 */	lfd f3, 0x88(r30)
/* 8064D624  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D628  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D62C  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D630  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D634  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D638  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D63C  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D640  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D644  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D648  FC 44 00 32 */	fmul f2, f4, f0
/* 8064D64C  FC 00 00 32 */	fmul f0, f0, f0
/* 8064D650  FC 01 00 32 */	fmul f0, f1, f0
/* 8064D654  FC 03 00 28 */	fsub f0, f3, f0
/* 8064D658  FC 02 00 32 */	fmul f0, f2, f0
/* 8064D65C  FC 21 00 32 */	fmul f1, f1, f0
/* 8064D660  FC 20 08 18 */	frsp f1, f1
/* 8064D664  48 00 00 88 */	b lbl_8064D6EC
lbl_8064D668:
/* 8064D668  C8 1E 00 90 */	lfd f0, 0x90(r30)
/* 8064D66C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 8064D670  40 80 00 10 */	bge lbl_8064D680
/* 8064D674  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8064D678  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8064D67C  48 00 00 70 */	b lbl_8064D6EC
lbl_8064D680:
/* 8064D680  D0 21 00 08 */	stfs f1, 8(r1)
/* 8064D684  80 81 00 08 */	lwz r4, 8(r1)
/* 8064D688  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 8064D68C  3C 00 7F 80 */	lis r0, 0x7f80
/* 8064D690  7C 03 00 00 */	cmpw r3, r0
/* 8064D694  41 82 00 14 */	beq lbl_8064D6A8
/* 8064D698  40 80 00 40 */	bge lbl_8064D6D8
/* 8064D69C  2C 03 00 00 */	cmpwi r3, 0
/* 8064D6A0  41 82 00 20 */	beq lbl_8064D6C0
/* 8064D6A4  48 00 00 34 */	b lbl_8064D6D8
lbl_8064D6A8:
/* 8064D6A8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8064D6AC  41 82 00 0C */	beq lbl_8064D6B8
/* 8064D6B0  38 00 00 01 */	li r0, 1
/* 8064D6B4  48 00 00 28 */	b lbl_8064D6DC
lbl_8064D6B8:
/* 8064D6B8  38 00 00 02 */	li r0, 2
/* 8064D6BC  48 00 00 20 */	b lbl_8064D6DC
lbl_8064D6C0:
/* 8064D6C0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 8064D6C4  41 82 00 0C */	beq lbl_8064D6D0
/* 8064D6C8  38 00 00 05 */	li r0, 5
/* 8064D6CC  48 00 00 10 */	b lbl_8064D6DC
lbl_8064D6D0:
/* 8064D6D0  38 00 00 03 */	li r0, 3
/* 8064D6D4  48 00 00 08 */	b lbl_8064D6DC
lbl_8064D6D8:
/* 8064D6D8  38 00 00 04 */	li r0, 4
lbl_8064D6DC:
/* 8064D6DC  2C 00 00 01 */	cmpwi r0, 1
/* 8064D6E0  40 82 00 0C */	bne lbl_8064D6EC
/* 8064D6E4  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8064D6E8  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)  /* 0x80450AE0@l */
lbl_8064D6EC:
/* 8064D6EC  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 8064D6F0  40 80 00 10 */	bge lbl_8064D700
/* 8064D6F4  38 00 00 00 */	li r0, 0
/* 8064D6F8  98 1F 07 0D */	stb r0, 0x70d(r31)
/* 8064D6FC  48 00 00 0C */	b lbl_8064D708
lbl_8064D700:
/* 8064D700  38 00 00 01 */	li r0, 1
/* 8064D704  98 1F 07 0D */	stb r0, 0x70d(r31)
lbl_8064D708:
/* 8064D708  88 1F 07 0D */	lbz r0, 0x70d(r31)
/* 8064D70C  28 00 00 00 */	cmplwi r0, 0
/* 8064D710  40 82 00 20 */	bne lbl_8064D730
/* 8064D714  C0 01 00 B8 */	lfs f0, 0xb8(r1)
/* 8064D718  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8064D71C  C0 01 00 BC */	lfs f0, 0xbc(r1)
/* 8064D720  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8064D724  C0 01 00 C0 */	lfs f0, 0xc0(r1)
/* 8064D728  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8064D72C  48 00 00 A0 */	b lbl_8064D7CC
lbl_8064D730:
/* 8064D730  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 8064D734  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8064D738  C0 01 00 B0 */	lfs f0, 0xb0(r1)
/* 8064D73C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8064D740  C0 01 00 B4 */	lfs f0, 0xb4(r1)
/* 8064D744  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8064D748  48 00 00 84 */	b lbl_8064D7CC
lbl_8064D74C:
/* 8064D74C  88 1F 07 0D */	lbz r0, 0x70d(r31)
/* 8064D750  28 00 00 00 */	cmplwi r0, 0
/* 8064D754  40 82 00 28 */	bne lbl_8064D77C
/* 8064D758  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8064D75C  80 63 00 04 */	lwz r3, 4(r3)
/* 8064D760  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064D764  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064D768  38 63 06 90 */	addi r3, r3, 0x690
/* 8064D76C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064D770  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064D774  4B CF 8D 3D */	bl PSMTXCopy
/* 8064D778  48 00 00 24 */	b lbl_8064D79C
lbl_8064D77C:
/* 8064D77C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8064D780  80 63 00 04 */	lwz r3, 4(r3)
/* 8064D784  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064D788  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064D78C  38 63 07 20 */	addi r3, r3, 0x720
/* 8064D790  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064D794  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064D798  4B CF 8D 19 */	bl PSMTXCopy
lbl_8064D79C:
/* 8064D79C  C0 3E 01 F4 */	lfs f1, 0x1f4(r30)
/* 8064D7A0  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8064D7A4  FC 60 10 90 */	fmr f3, f2
/* 8064D7A8  4B 9B F5 F5 */	bl transM__14mDoMtx_stack_cFfff
/* 8064D7AC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064D7B0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064D7B4  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8064D7B8  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8064D7BC  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8064D7C0  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8064D7C4  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8064D7C8  D0 1F 05 40 */	stfs f0, 0x540(r31)
lbl_8064D7CC:
/* 8064D7CC  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8064D7D0  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8064D7D4  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8064D7D8  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8064D7DC  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8064D7E0  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8064D7E4  C0 3F 05 54 */	lfs f1, 0x554(r31)
/* 8064D7E8  C0 1E 02 E4 */	lfs f0, 0x2e4(r30)
/* 8064D7EC  EC 01 00 2A */	fadds f0, f1, f0
/* 8064D7F0  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8064D7F4  48 00 00 74 */	b lbl_8064D868
lbl_8064D7F8:
/* 8064D7F8  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8064D7FC  80 63 00 04 */	lwz r3, 4(r3)
/* 8064D800  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064D804  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064D808  38 63 00 60 */	addi r3, r3, 0x60
/* 8064D80C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064D810  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064D814  4B CF 8C 9D */	bl PSMTXCopy
/* 8064D818  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064D81C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064D820  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 8064D824  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 8064D828  C0 03 00 1C */	lfs f0, 0x1c(r3)
/* 8064D82C  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 8064D830  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 8064D834  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 8064D838  C0 1F 05 38 */	lfs f0, 0x538(r31)
/* 8064D83C  D0 1F 05 50 */	stfs f0, 0x550(r31)
/* 8064D840  C0 1F 05 3C */	lfs f0, 0x53c(r31)
/* 8064D844  D0 1F 05 54 */	stfs f0, 0x554(r31)
/* 8064D848  C0 1F 05 40 */	lfs f0, 0x540(r31)
/* 8064D84C  D0 1F 05 58 */	stfs f0, 0x558(r31)
/* 8064D850  C0 5F 05 54 */	lfs f2, 0x554(r31)
/* 8064D854  C0 3E 02 E4 */	lfs f1, 0x2e4(r30)
/* 8064D858  C0 1F 06 C4 */	lfs f0, 0x6c4(r31)
/* 8064D85C  EC 01 00 32 */	fmuls f0, f1, f0
/* 8064D860  EC 02 00 2A */	fadds f0, f2, f0
/* 8064D864  D0 1F 05 54 */	stfs f0, 0x554(r31)
lbl_8064D868:
/* 8064D868  3B 60 00 00 */	li r27, 0
/* 8064D86C  3B 20 00 00 */	li r25, 0
/* 8064D870  3B 40 00 00 */	li r26, 0
/* 8064D874  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064D878  3B A3 D4 70 */	addi r29, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064D87C  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha /* 0x804061C0@ha */
/* 8064D880  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l /* 0x804061C0@l */
/* 8064D884  3B 83 23 3C */	addi r28, r3, 0x233c
/* 8064D888  3C 60 80 65 */	lis r3, ice_sph_jnt@ha /* 0x8064F428@ha */
/* 8064D88C  3A E3 F4 28 */	addi r23, r3, ice_sph_jnt@l /* 0x8064F428@l */
lbl_8064D890:
/* 8064D890  7C 77 D2 14 */	add r3, r23, r26
/* 8064D894  80 03 00 00 */	lwz r0, 0(r3)
/* 8064D898  C3 E3 00 04 */	lfs f31, 4(r3)
/* 8064D89C  C3 C3 00 08 */	lfs f30, 8(r3)
/* 8064D8A0  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8064D8A4  80 63 00 04 */	lwz r3, 4(r3)
/* 8064D8A8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064D8AC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064D8B0  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8064D8B4  7C 63 02 14 */	add r3, r3, r0
/* 8064D8B8  7F A4 EB 78 */	mr r4, r29
/* 8064D8BC  4B CF 8B F5 */	bl PSMTXCopy
/* 8064D8C0  FC 20 F8 90 */	fmr f1, f31
/* 8064D8C4  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8064D8C8  FC 60 10 90 */	fmr f3, f2
/* 8064D8CC  4B 9B F4 D1 */	bl transM__14mDoMtx_stack_cFfff
/* 8064D8D0  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8064D8D4  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8064D8D8  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8064D8DC  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8064D8E0  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8064D8E4  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8064D8E8  7E DF CA 14 */	add r22, r31, r25
/* 8064D8EC  3B 16 0D D4 */	addi r24, r22, 0xdd4
/* 8064D8F0  7F 03 C3 78 */	mr r3, r24
/* 8064D8F4  38 81 00 94 */	addi r4, r1, 0x94
/* 8064D8F8  4B C2 1D 51 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8064D8FC  7F 03 C3 78 */	mr r3, r24
/* 8064D900  C0 1F 06 C4 */	lfs f0, 0x6c4(r31)
/* 8064D904  EC 3E 00 32 */	fmuls f1, f30, f0
/* 8064D908  4B C2 1E 01 */	bl SetR__8cM3dGSphFf
/* 8064D90C  7F 83 E3 78 */	mr r3, r28
/* 8064D910  38 96 0C B0 */	addi r4, r22, 0xcb0
/* 8064D914  4B C1 72 95 */	bl Set__4cCcSFP8cCcD_Obj
/* 8064D918  3B 7B 00 01 */	addi r27, r27, 1
/* 8064D91C  2C 1B 00 06 */	cmpwi r27, 6
/* 8064D920  3B 39 01 38 */	addi r25, r25, 0x138
/* 8064D924  3B 5A 00 0C */	addi r26, r26, 0xc
/* 8064D928  41 80 FF 68 */	blt lbl_8064D890
/* 8064D92C  3B 60 00 00 */	li r27, 0
/* 8064D930  3B 40 00 00 */	li r26, 0
/* 8064D934  3B 20 00 00 */	li r25, 0
/* 8064D938  3C 60 80 65 */	lis r3, ice_sph_jnt@ha /* 0x8064F428@ha */
/* 8064D93C  3A E3 F4 28 */	addi r23, r3, ice_sph_jnt@l /* 0x8064F428@l */
/* 8064D940  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 8064D944  3B 03 D4 70 */	addi r24, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 8064D948  C3 FE 00 10 */	lfs f31, 0x10(r30)
lbl_8064D94C:
/* 8064D94C  7C 77 CA 14 */	add r3, r23, r25
/* 8064D950  80 03 00 00 */	lwz r0, 0(r3)
/* 8064D954  C3 C3 00 04 */	lfs f30, 4(r3)
/* 8064D958  C3 A3 00 08 */	lfs f29, 8(r3)
/* 8064D95C  80 7F 05 B4 */	lwz r3, 0x5b4(r31)
/* 8064D960  80 63 00 04 */	lwz r3, 4(r3)
/* 8064D964  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8064D968  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8064D96C  1C 00 00 30 */	mulli r0, r0, 0x30
/* 8064D970  7C 63 02 14 */	add r3, r3, r0
/* 8064D974  7F 04 C3 78 */	mr r4, r24
/* 8064D978  4B CF 8B 39 */	bl PSMTXCopy
/* 8064D97C  FC 20 F0 90 */	fmr f1, f30
/* 8064D980  C0 5E 00 28 */	lfs f2, 0x28(r30)
/* 8064D984  FC 60 10 90 */	fmr f3, f2
/* 8064D988  4B 9B F4 15 */	bl transM__14mDoMtx_stack_cFfff
/* 8064D98C  C0 1D 00 0C */	lfs f0, 0xc(r29)
/* 8064D990  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 8064D994  C0 1D 00 1C */	lfs f0, 0x1c(r29)
/* 8064D998  D0 01 00 98 */	stfs f0, 0x98(r1)
/* 8064D99C  C0 1D 00 2C */	lfs f0, 0x2c(r29)
/* 8064D9A0  D0 01 00 9C */	stfs f0, 0x9c(r1)
/* 8064D9A4  7E BF D2 14 */	add r21, r31, r26
/* 8064D9A8  3A D5 1B 3C */	addi r22, r21, 0x1b3c
/* 8064D9AC  7E C3 B3 78 */	mr r3, r22
/* 8064D9B0  38 81 00 94 */	addi r4, r1, 0x94
/* 8064D9B4  4B C2 1C 95 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8064D9B8  7E C3 B3 78 */	mr r3, r22
/* 8064D9BC  C0 1F 06 C4 */	lfs f0, 0x6c4(r31)
/* 8064D9C0  EC 3D 00 32 */	fmuls f1, f29, f0
/* 8064D9C4  4B C2 1D 45 */	bl SetR__8cM3dGSphFf
/* 8064D9C8  7F 83 E3 78 */	mr r3, r28
/* 8064D9CC  38 95 1A 18 */	addi r4, r21, 0x1a18
/* 8064D9D0  4B C1 71 D9 */	bl Set__4cCcSFP8cCcD_Obj
/* 8064D9D4  3A D5 28 A4 */	addi r22, r21, 0x28a4
/* 8064D9D8  7E C3 B3 78 */	mr r3, r22
/* 8064D9DC  38 81 00 94 */	addi r4, r1, 0x94
/* 8064D9E0  4B C2 1C 69 */	bl SetC__8cM3dGSphFRC4cXyz
/* 8064D9E4  7E C3 B3 78 */	mr r3, r22
/* 8064D9E8  EC 3F E8 2A */	fadds f1, f31, f29
/* 8064D9EC  C0 1F 06 C4 */	lfs f0, 0x6c4(r31)
/* 8064D9F0  EC 21 00 32 */	fmuls f1, f1, f0
/* 8064D9F4  4B C2 1D 15 */	bl SetR__8cM3dGSphFf
/* 8064D9F8  7F 83 E3 78 */	mr r3, r28
/* 8064D9FC  38 95 27 80 */	addi r4, r21, 0x2780
/* 8064DA00  4B C1 71 A9 */	bl Set__4cCcSFP8cCcD_Obj
/* 8064DA04  3B 7B 00 01 */	addi r27, r27, 1
/* 8064DA08  2C 1B 00 0B */	cmpwi r27, 0xb
/* 8064DA0C  3B 5A 01 38 */	addi r26, r26, 0x138
/* 8064DA10  3B 39 00 0C */	addi r25, r25, 0xc
/* 8064DA14  41 80 FF 38 */	blt lbl_8064D94C
/* 8064DA18  E3 E1 01 28 */	psq_l f31, 296(r1), 0, 0 /* qr0 */
/* 8064DA1C  CB E1 01 20 */	lfd f31, 0x120(r1)
/* 8064DA20  E3 C1 01 18 */	psq_l f30, 280(r1), 0, 0 /* qr0 */
/* 8064DA24  CB C1 01 10 */	lfd f30, 0x110(r1)
/* 8064DA28  E3 A1 01 08 */	psq_l f29, 264(r1), 0, 0 /* qr0 */
/* 8064DA2C  CB A1 01 00 */	lfd f29, 0x100(r1)
/* 8064DA30  39 61 01 00 */	addi r11, r1, 0x100
/* 8064DA34  4B D1 47 D5 */	bl _restgpr_21
/* 8064DA38  80 01 01 34 */	lwz r0, 0x134(r1)
/* 8064DA3C  7C 08 03 A6 */	mtlr r0
/* 8064DA40  38 21 01 30 */	addi r1, r1, 0x130
/* 8064DA44  4E 80 00 20 */	blr 
