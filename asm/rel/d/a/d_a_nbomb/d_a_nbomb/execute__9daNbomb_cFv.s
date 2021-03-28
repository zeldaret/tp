lbl_804CAEE8:
/* 804CAEE8  94 21 FE F0 */	stwu r1, -0x110(r1)
/* 804CAEEC  7C 08 02 A6 */	mflr r0
/* 804CAEF0  90 01 01 14 */	stw r0, 0x114(r1)
/* 804CAEF4  DB E1 01 00 */	stfd f31, 0x100(r1)
/* 804CAEF8  F3 E1 01 08 */	psq_st f31, 264(r1), 0, 0 /* qr0 */
/* 804CAEFC  DB C1 00 F0 */	stfd f30, 0xf0(r1)
/* 804CAF00  F3 C1 00 F8 */	psq_st f30, 248(r1), 0, 0 /* qr0 */
/* 804CAF04  DB A1 00 E0 */	stfd f29, 0xe0(r1)
/* 804CAF08  F3 A1 00 E8 */	psq_st f29, 232(r1), 0, 0 /* qr0 */
/* 804CAF0C  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804CAF10  4B E9 72 BC */	b _savegpr_25
/* 804CAF14  7C 7F 1B 78 */	mr r31, r3
/* 804CAF18  3C 60 80 4D */	lis r3, lit_3767@ha
/* 804CAF1C  3B C3 C3 40 */	addi r30, r3, lit_3767@l
/* 804CAF20  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CAF24  54 00 04 A5 */	rlwinm. r0, r0, 0, 0x12, 0x12
/* 804CAF28  40 82 00 10 */	bne lbl_804CAF38
/* 804CAF2C  38 00 00 00 */	li r0, 0
/* 804CAF30  98 1F 0B 51 */	stb r0, 0xb51(r31)
/* 804CAF34  48 00 00 10 */	b lbl_804CAF44
lbl_804CAF38:
/* 804CAF38  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CAF3C  54 00 04 E2 */	rlwinm r0, r0, 0, 0x13, 0x11
/* 804CAF40  90 1F 0B 4C */	stw r0, 0xb4c(r31)
lbl_804CAF44:
/* 804CAF44  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804CAF48  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804CAF4C  3B A3 00 04 */	addi r29, r3, 4
/* 804CAF50  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 804CAF54  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804CAF58  7C 1D 04 2E */	lfsx f0, r29, r0
/* 804CAF5C  C0 7F 05 2C */	lfs f3, 0x52c(r31)
/* 804CAF60  EC 43 00 32 */	fmuls f2, f3, f0
/* 804CAF64  C0 3F 04 FC */	lfs f1, 0x4fc(r31)
/* 804CAF68  7C 03 04 2E */	lfsx f0, r3, r0
/* 804CAF6C  EC 03 00 32 */	fmuls f0, f3, f0
/* 804CAF70  D0 01 00 A4 */	stfs f0, 0xa4(r1)
/* 804CAF74  D0 21 00 A8 */	stfs f1, 0xa8(r1)
/* 804CAF78  D0 41 00 AC */	stfs f2, 0xac(r1)
/* 804CAF7C  38 7F 0C 20 */	addi r3, r31, 0xc20
/* 804CAF80  4B E7 C1 B8 */	b PSVECSquareMag
/* 804CAF84  FF E0 08 90 */	fmr f31, f1
/* 804CAF88  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CAF8C  54 00 04 21 */	rlwinm. r0, r0, 0, 0x10, 0x10
/* 804CAF90  40 82 01 60 */	bne lbl_804CB0F0
/* 804CAF94  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804CAF98  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CAF9C  40 81 01 30 */	ble lbl_804CB0CC
/* 804CAFA0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804CAFA4  38 9F 0C 20 */	addi r4, r31, 0xc20
/* 804CAFA8  7C 65 1B 78 */	mr r5, r3
/* 804CAFAC  4B E7 C0 E4 */	b PSVECAdd
/* 804CAFB0  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804CAFB4  4B D9 C1 74 */	b atan2sX_Z__4cXyzCFv
/* 804CAFB8  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 804CAFBC  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 804CAFC0  D0 01 00 38 */	stfs f0, 0x38(r1)
/* 804CAFC4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804CAFC8  D0 01 00 3C */	stfs f0, 0x3c(r1)
/* 804CAFCC  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 804CAFD0  D0 01 00 40 */	stfs f0, 0x40(r1)
/* 804CAFD4  38 61 00 38 */	addi r3, r1, 0x38
/* 804CAFD8  4B E7 C1 60 */	b PSVECSquareMag
/* 804CAFDC  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804CAFE0  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CAFE4  40 81 00 58 */	ble lbl_804CB03C
/* 804CAFE8  FC 00 08 34 */	frsqrte f0, f1
/* 804CAFEC  C8 9E 01 10 */	lfd f4, 0x110(r30)
/* 804CAFF0  FC 44 00 32 */	fmul f2, f4, f0
/* 804CAFF4  C8 7E 01 18 */	lfd f3, 0x118(r30)
/* 804CAFF8  FC 00 00 32 */	fmul f0, f0, f0
/* 804CAFFC  FC 01 00 32 */	fmul f0, f1, f0
/* 804CB000  FC 03 00 28 */	fsub f0, f3, f0
/* 804CB004  FC 02 00 32 */	fmul f0, f2, f0
/* 804CB008  FC 44 00 32 */	fmul f2, f4, f0
/* 804CB00C  FC 00 00 32 */	fmul f0, f0, f0
/* 804CB010  FC 01 00 32 */	fmul f0, f1, f0
/* 804CB014  FC 03 00 28 */	fsub f0, f3, f0
/* 804CB018  FC 02 00 32 */	fmul f0, f2, f0
/* 804CB01C  FC 44 00 32 */	fmul f2, f4, f0
/* 804CB020  FC 00 00 32 */	fmul f0, f0, f0
/* 804CB024  FC 01 00 32 */	fmul f0, f1, f0
/* 804CB028  FC 03 00 28 */	fsub f0, f3, f0
/* 804CB02C  FC 02 00 32 */	fmul f0, f2, f0
/* 804CB030  FC 21 00 32 */	fmul f1, f1, f0
/* 804CB034  FC 20 08 18 */	frsp f1, f1
/* 804CB038  48 00 00 88 */	b lbl_804CB0C0
lbl_804CB03C:
/* 804CB03C  C8 1E 01 20 */	lfd f0, 0x120(r30)
/* 804CB040  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CB044  40 80 00 10 */	bge lbl_804CB054
/* 804CB048  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CB04C  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804CB050  48 00 00 70 */	b lbl_804CB0C0
lbl_804CB054:
/* 804CB054  D0 21 00 10 */	stfs f1, 0x10(r1)
/* 804CB058  80 81 00 10 */	lwz r4, 0x10(r1)
/* 804CB05C  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804CB060  3C 00 7F 80 */	lis r0, 0x7f80
/* 804CB064  7C 03 00 00 */	cmpw r3, r0
/* 804CB068  41 82 00 14 */	beq lbl_804CB07C
/* 804CB06C  40 80 00 40 */	bge lbl_804CB0AC
/* 804CB070  2C 03 00 00 */	cmpwi r3, 0
/* 804CB074  41 82 00 20 */	beq lbl_804CB094
/* 804CB078  48 00 00 34 */	b lbl_804CB0AC
lbl_804CB07C:
/* 804CB07C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CB080  41 82 00 0C */	beq lbl_804CB08C
/* 804CB084  38 00 00 01 */	li r0, 1
/* 804CB088  48 00 00 28 */	b lbl_804CB0B0
lbl_804CB08C:
/* 804CB08C  38 00 00 02 */	li r0, 2
/* 804CB090  48 00 00 20 */	b lbl_804CB0B0
lbl_804CB094:
/* 804CB094  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CB098  41 82 00 0C */	beq lbl_804CB0A4
/* 804CB09C  38 00 00 05 */	li r0, 5
/* 804CB0A0  48 00 00 10 */	b lbl_804CB0B0
lbl_804CB0A4:
/* 804CB0A4  38 00 00 03 */	li r0, 3
/* 804CB0A8  48 00 00 08 */	b lbl_804CB0B0
lbl_804CB0AC:
/* 804CB0AC  38 00 00 04 */	li r0, 4
lbl_804CB0B0:
/* 804CB0B0  2C 00 00 01 */	cmpwi r0, 1
/* 804CB0B4  40 82 00 0C */	bne lbl_804CB0C0
/* 804CB0B8  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CB0BC  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804CB0C0:
/* 804CB0C0  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 804CB0C4  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 804CB0C8  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_804CB0CC:
/* 804CB0CC  C3 FE 00 40 */	lfs f31, 0x40(r30)
/* 804CB0D0  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 804CB0D4  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 804CB0D8  D0 1F 0C 20 */	stfs f0, 0xc20(r31)
/* 804CB0DC  C0 03 00 04 */	lfs f0, 4(r3)
/* 804CB0E0  D0 1F 0C 24 */	stfs f0, 0xc24(r31)
/* 804CB0E4  C0 03 00 08 */	lfs f0, 8(r3)
/* 804CB0E8  D0 1F 0C 28 */	stfs f0, 0xc28(r31)
/* 804CB0EC  48 00 00 10 */	b lbl_804CB0FC
lbl_804CB0F0:
/* 804CB0F0  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB0F4  54 00 04 5E */	rlwinm r0, r0, 0, 0x11, 0xf
/* 804CB0F8  90 1F 0B 4C */	stw r0, 0xb4c(r31)
lbl_804CB0FC:
/* 804CB0FC  38 7F 0C 2C */	addi r3, r31, 0xc2c
/* 804CB100  4B E7 C0 38 */	b PSVECSquareMag
/* 804CB104  FF C0 08 90 */	fmr f30, f1
/* 804CB108  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB10C  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804CB110  41 82 00 88 */	beq lbl_804CB198
/* 804CB114  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804CB118  28 00 00 03 */	cmplwi r0, 3
/* 804CB11C  40 82 00 7C */	bne lbl_804CB198
/* 804CB120  38 7F 04 D0 */	addi r3, r31, 0x4d0
/* 804CB124  38 9F 06 68 */	addi r4, r31, 0x668
/* 804CB128  38 A1 00 98 */	addi r5, r1, 0x98
/* 804CB12C  38 C1 00 1C */	addi r6, r1, 0x1c
/* 804CB130  38 E0 00 00 */	li r7, 0
/* 804CB134  4B B5 28 74 */	b fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii
/* 804CB138  2C 03 00 00 */	cmpwi r3, 0
/* 804CB13C  41 82 00 5C */	beq lbl_804CB198
/* 804CB140  38 61 00 74 */	addi r3, r1, 0x74
/* 804CB144  38 81 00 98 */	addi r4, r1, 0x98
/* 804CB148  80 01 00 1C */	lwz r0, 0x1c(r1)
/* 804CB14C  C8 3E 00 98 */	lfd f1, 0x98(r30)
/* 804CB150  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804CB154  90 01 00 B4 */	stw r0, 0xb4(r1)
/* 804CB158  3C 00 43 30 */	lis r0, 0x4330
/* 804CB15C  90 01 00 B0 */	stw r0, 0xb0(r1)
/* 804CB160  C8 01 00 B0 */	lfd f0, 0xb0(r1)
/* 804CB164  EC 20 08 28 */	fsubs f1, f0, f1
/* 804CB168  4B D9 BA 1C */	b __ml__4cXyzCFf
/* 804CB16C  38 61 00 68 */	addi r3, r1, 0x68
/* 804CB170  38 81 00 74 */	addi r4, r1, 0x74
/* 804CB174  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 804CB178  4B D9 BA 0C */	b __ml__4cXyzCFf
/* 804CB17C  38 7F 0C 2C */	addi r3, r31, 0xc2c
/* 804CB180  38 81 00 68 */	addi r4, r1, 0x68
/* 804CB184  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 804CB188  C0 5E 00 88 */	lfs f2, 0x88(r30)
/* 804CB18C  C0 7E 00 3C */	lfs f3, 0x3c(r30)
/* 804CB190  4B DA 49 28 */	b cLib_addCalcPos__FP4cXyzRC4cXyzfff
/* 804CB194  48 00 01 5C */	b lbl_804CB2F0
lbl_804CB198:
/* 804CB198  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804CB19C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804CB1A0  40 81 01 30 */	ble lbl_804CB2D0
/* 804CB1A4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804CB1A8  38 9F 0C 2C */	addi r4, r31, 0xc2c
/* 804CB1AC  7C 65 1B 78 */	mr r5, r3
/* 804CB1B0  4B E7 BE E0 */	b PSVECAdd
/* 804CB1B4  38 61 00 A4 */	addi r3, r1, 0xa4
/* 804CB1B8  4B D9 BF 70 */	b atan2sX_Z__4cXyzCFv
/* 804CB1BC  B0 7F 04 DE */	sth r3, 0x4de(r31)
/* 804CB1C0  C0 01 00 A4 */	lfs f0, 0xa4(r1)
/* 804CB1C4  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804CB1C8  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804CB1CC  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 804CB1D0  C0 01 00 AC */	lfs f0, 0xac(r1)
/* 804CB1D4  D0 01 00 34 */	stfs f0, 0x34(r1)
/* 804CB1D8  38 61 00 2C */	addi r3, r1, 0x2c
/* 804CB1DC  4B E7 BF 5C */	b PSVECSquareMag
/* 804CB1E0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804CB1E4  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CB1E8  40 81 00 58 */	ble lbl_804CB240
/* 804CB1EC  FC 00 08 34 */	frsqrte f0, f1
/* 804CB1F0  C8 9E 01 10 */	lfd f4, 0x110(r30)
/* 804CB1F4  FC 44 00 32 */	fmul f2, f4, f0
/* 804CB1F8  C8 7E 01 18 */	lfd f3, 0x118(r30)
/* 804CB1FC  FC 00 00 32 */	fmul f0, f0, f0
/* 804CB200  FC 01 00 32 */	fmul f0, f1, f0
/* 804CB204  FC 03 00 28 */	fsub f0, f3, f0
/* 804CB208  FC 02 00 32 */	fmul f0, f2, f0
/* 804CB20C  FC 44 00 32 */	fmul f2, f4, f0
/* 804CB210  FC 00 00 32 */	fmul f0, f0, f0
/* 804CB214  FC 01 00 32 */	fmul f0, f1, f0
/* 804CB218  FC 03 00 28 */	fsub f0, f3, f0
/* 804CB21C  FC 02 00 32 */	fmul f0, f2, f0
/* 804CB220  FC 44 00 32 */	fmul f2, f4, f0
/* 804CB224  FC 00 00 32 */	fmul f0, f0, f0
/* 804CB228  FC 01 00 32 */	fmul f0, f1, f0
/* 804CB22C  FC 03 00 28 */	fsub f0, f3, f0
/* 804CB230  FC 02 00 32 */	fmul f0, f2, f0
/* 804CB234  FC 21 00 32 */	fmul f1, f1, f0
/* 804CB238  FC 20 08 18 */	frsp f1, f1
/* 804CB23C  48 00 00 88 */	b lbl_804CB2C4
lbl_804CB240:
/* 804CB240  C8 1E 01 20 */	lfd f0, 0x120(r30)
/* 804CB244  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CB248  40 80 00 10 */	bge lbl_804CB258
/* 804CB24C  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CB250  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804CB254  48 00 00 70 */	b lbl_804CB2C4
lbl_804CB258:
/* 804CB258  D0 21 00 0C */	stfs f1, 0xc(r1)
/* 804CB25C  80 81 00 0C */	lwz r4, 0xc(r1)
/* 804CB260  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804CB264  3C 00 7F 80 */	lis r0, 0x7f80
/* 804CB268  7C 03 00 00 */	cmpw r3, r0
/* 804CB26C  41 82 00 14 */	beq lbl_804CB280
/* 804CB270  40 80 00 40 */	bge lbl_804CB2B0
/* 804CB274  2C 03 00 00 */	cmpwi r3, 0
/* 804CB278  41 82 00 20 */	beq lbl_804CB298
/* 804CB27C  48 00 00 34 */	b lbl_804CB2B0
lbl_804CB280:
/* 804CB280  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CB284  41 82 00 0C */	beq lbl_804CB290
/* 804CB288  38 00 00 01 */	li r0, 1
/* 804CB28C  48 00 00 28 */	b lbl_804CB2B4
lbl_804CB290:
/* 804CB290  38 00 00 02 */	li r0, 2
/* 804CB294  48 00 00 20 */	b lbl_804CB2B4
lbl_804CB298:
/* 804CB298  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CB29C  41 82 00 0C */	beq lbl_804CB2A8
/* 804CB2A0  38 00 00 05 */	li r0, 5
/* 804CB2A4  48 00 00 10 */	b lbl_804CB2B4
lbl_804CB2A8:
/* 804CB2A8  38 00 00 03 */	li r0, 3
/* 804CB2AC  48 00 00 08 */	b lbl_804CB2B4
lbl_804CB2B0:
/* 804CB2B0  38 00 00 04 */	li r0, 4
lbl_804CB2B4:
/* 804CB2B4  2C 00 00 01 */	cmpwi r0, 1
/* 804CB2B8  40 82 00 0C */	bne lbl_804CB2C4
/* 804CB2BC  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CB2C0  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804CB2C4:
/* 804CB2C4  D0 3F 05 2C */	stfs f1, 0x52c(r31)
/* 804CB2C8  C0 01 00 A8 */	lfs f0, 0xa8(r1)
/* 804CB2CC  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
lbl_804CB2D0:
/* 804CB2D0  C3 DE 00 40 */	lfs f30, 0x40(r30)
/* 804CB2D4  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 804CB2D8  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 804CB2DC  D0 1F 0C 2C */	stfs f0, 0xc2c(r31)
/* 804CB2E0  C0 03 00 04 */	lfs f0, 4(r3)
/* 804CB2E4  D0 1F 0C 30 */	stfs f0, 0xc30(r31)
/* 804CB2E8  C0 03 00 08 */	lfs f0, 8(r3)
/* 804CB2EC  D0 1F 0C 34 */	stfs f0, 0xc34(r31)
lbl_804CB2F0:
/* 804CB2F0  38 00 00 00 */	li r0, 0
/* 804CB2F4  B0 1F 0B 5A */	sth r0, 0xb5a(r31)
/* 804CB2F8  C0 1F 0B CC */	lfs f0, 0xbcc(r31)
/* 804CB2FC  D0 1F 0B D8 */	stfs f0, 0xbd8(r31)
/* 804CB300  C0 1F 0B D0 */	lfs f0, 0xbd0(r31)
/* 804CB304  D0 1F 0B DC */	stfs f0, 0xbdc(r31)
/* 804CB308  C0 1F 0B D4 */	lfs f0, 0xbd4(r31)
/* 804CB30C  D0 1F 0B E0 */	stfs f0, 0xbe0(r31)
/* 804CB310  80 7F 0B 4C */	lwz r3, 0xb4c(r31)
/* 804CB314  54 60 05 29 */	rlwinm. r0, r3, 0, 0x14, 0x14
/* 804CB318  40 82 00 18 */	bne lbl_804CB330
/* 804CB31C  54 60 05 AD */	rlwinm. r0, r3, 0, 0x16, 0x16
/* 804CB320  41 82 00 60 */	beq lbl_804CB380
/* 804CB324  A8 1F 0B 5E */	lha r0, 0xb5e(r31)
/* 804CB328  2C 00 00 00 */	cmpwi r0, 0
/* 804CB32C  40 82 00 54 */	bne lbl_804CB380
lbl_804CB330:
/* 804CB330  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 804CB334  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 804CB338  C0 5E 01 7C */	lfs f2, 0x17c(r30)
/* 804CB33C  4B DA 54 04 */	b cLib_chaseF__FPfff
/* 804CB340  2C 03 00 00 */	cmpwi r3, 0
/* 804CB344  41 82 00 14 */	beq lbl_804CB358
/* 804CB348  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB34C  60 00 10 00 */	ori r0, r0, 0x1000
/* 804CB350  90 1F 0B 4C */	stw r0, 0xb4c(r31)
/* 804CB354  48 00 00 2C */	b lbl_804CB380
lbl_804CB358:
/* 804CB358  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 804CB35C  D0 1F 04 F0 */	stfs f0, 0x4f0(r31)
/* 804CB360  D0 1F 04 F4 */	stfs f0, 0x4f4(r31)
/* 804CB364  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804CB368  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 804CB36C  D0 03 00 18 */	stfs f0, 0x18(r3)
/* 804CB370  C0 1F 04 F0 */	lfs f0, 0x4f0(r31)
/* 804CB374  D0 03 00 1C */	stfs f0, 0x1c(r3)
/* 804CB378  C0 1F 04 F4 */	lfs f0, 0x4f4(r31)
/* 804CB37C  D0 03 00 20 */	stfs f0, 0x20(r3)
lbl_804CB380:
/* 804CB380  38 7F 0C 38 */	addi r3, r31, 0xc38
/* 804CB384  4B E9 6C 94 */	b __ptmf_test
/* 804CB388  2C 03 00 00 */	cmpwi r3, 0
/* 804CB38C  41 82 00 14 */	beq lbl_804CB3A0
/* 804CB390  7F E3 FB 78 */	mr r3, r31
/* 804CB394  39 9F 0C 38 */	addi r12, r31, 0xc38
/* 804CB398  4B E9 6C EC */	b __ptmf_scall
/* 804CB39C  60 00 00 00 */	nop 
lbl_804CB3A0:
/* 804CB3A0  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB3A4  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 804CB3A8  41 82 00 14 */	beq lbl_804CB3BC
/* 804CB3AC  7F E3 FB 78 */	mr r3, r31
/* 804CB3B0  4B B4 E8 CC */	b fopAcM_delete__FP10fopAc_ac_c
/* 804CB3B4  38 60 00 01 */	li r3, 1
/* 804CB3B8  48 00 08 58 */	b lbl_804CBC10
lbl_804CB3BC:
/* 804CB3BC  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 804CB3C0  54 00 06 F7 */	rlwinm. r0, r0, 0, 0x1b, 0x1b
/* 804CB3C4  41 82 00 14 */	beq lbl_804CB3D8
/* 804CB3C8  38 7F 07 50 */	addi r3, r31, 0x750
/* 804CB3CC  4B C0 C3 9C */	b checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo
/* 804CB3D0  2C 03 00 00 */	cmpwi r3, 0
/* 804CB3D4  40 82 00 3C */	bne lbl_804CB410
lbl_804CB3D8:
/* 804CB3D8  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 804CB3DC  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804CB3E0  41 82 00 14 */	beq lbl_804CB3F4
/* 804CB3E4  38 7F 06 68 */	addi r3, r31, 0x668
/* 804CB3E8  4B C0 C3 80 */	b checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo
/* 804CB3EC  2C 03 00 00 */	cmpwi r3, 0
/* 804CB3F0  40 82 00 20 */	bne lbl_804CB410
lbl_804CB3F4:
/* 804CB3F4  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 804CB3F8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804CB3FC  41 82 00 1C */	beq lbl_804CB418
/* 804CB400  38 7F 06 A8 */	addi r3, r31, 0x6a8
/* 804CB404  4B C0 C3 64 */	b checkIcePolygonDamage__9daAlink_cFP13cBgS_PolyInfo
/* 804CB408  2C 03 00 00 */	cmpwi r3, 0
/* 804CB40C  41 82 00 0C */	beq lbl_804CB418
lbl_804CB410:
/* 804CB410  7F E3 FB 78 */	mr r3, r31
/* 804CB414  4B FF D4 B9 */	bl setFreeze__9daNbomb_cFv
lbl_804CB418:
/* 804CB418  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 804CB41C  28 03 00 00 */	cmplwi r3, 0
/* 804CB420  41 82 00 08 */	beq lbl_804CB428
/* 804CB424  4B B4 20 04 */	b play__14mDoExt_baseAnmFv
lbl_804CB428:
/* 804CB428  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CB42C  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CB430  83 83 5D B4 */	lwz r28, 0x5db4(r3)
/* 804CB434  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804CB438  28 00 00 00 */	cmplwi r0, 0
/* 804CB43C  41 82 07 A8 */	beq lbl_804CBBE4
/* 804CB440  7F E3 FB 78 */	mr r3, r31
/* 804CB444  4B FF D4 AD */	bl checkWaterIn__9daNbomb_cFv
/* 804CB448  2C 03 00 00 */	cmpwi r3, 0
/* 804CB44C  41 82 02 90 */	beq lbl_804CB6DC
/* 804CB450  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CB454  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CB458  38 63 0F 38 */	addi r3, r3, 0xf38
/* 804CB45C  38 9F 06 F8 */	addi r4, r31, 0x6f8
/* 804CB460  4B BA 99 F0 */	b GetPolyAtt0__4dBgSFRC13cBgS_PolyInfo
/* 804CB464  2C 03 00 06 */	cmpwi r3, 6
/* 804CB468  40 82 00 14 */	bne lbl_804CB47C
/* 804CB46C  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB470  60 00 10 00 */	ori r0, r0, 0x1000
/* 804CB474  90 1F 0B 4C */	stw r0, 0xb4c(r31)
/* 804CB478  48 00 02 2C */	b lbl_804CB6A4
lbl_804CB47C:
/* 804CB47C  80 7F 0B 4C */	lwz r3, 0xb4c(r31)
/* 804CB480  70 60 08 20 */	andi. r0, r3, 0x820
/* 804CB484  40 82 01 F8 */	bne lbl_804CB67C
/* 804CB488  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804CB48C  7C 03 07 74 */	extsb r3, r0
/* 804CB490  4B B6 1B DC */	b dComIfGp_getReverb__Fi
/* 804CB494  7C 67 1B 78 */	mr r7, r3
/* 804CB498  3C 60 00 06 */	lis r3, 0x0006 /* 0x00060031@ha */
/* 804CB49C  38 03 00 31 */	addi r0, r3, 0x0031 /* 0x00060031@l */
/* 804CB4A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CB4A4  3C 60 80 45 */	lis r3, mAudioMgrPtr__10Z2AudioMgr@ha
/* 804CB4A8  38 63 13 68 */	addi r3, r3, mAudioMgrPtr__10Z2AudioMgr@l
/* 804CB4AC  80 63 00 00 */	lwz r3, 0(r3)
/* 804CB4B0  38 81 00 14 */	addi r4, r1, 0x14
/* 804CB4B4  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 804CB4B8  38 C0 00 00 */	li r6, 0
/* 804CB4BC  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 804CB4C0  FC 40 08 90 */	fmr f2, f1
/* 804CB4C4  C0 7E 01 48 */	lfs f3, 0x148(r30)
/* 804CB4C8  FC 80 18 90 */	fmr f4, f3
/* 804CB4CC  39 00 00 00 */	li r8, 0
/* 804CB4D0  4B DE 04 B4 */	b seStart__7Z2SeMgrF10JAISoundIDPC3VecUlScffffUc
/* 804CB4D4  C0 1F 04 C0 */	lfs f0, 0x4c0(r31)
/* 804CB4D8  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 804CB4DC  EC 00 10 28 */	fsubs f0, f0, f2
/* 804CB4E0  FC 00 02 10 */	fabs f0, f0
/* 804CB4E4  FC 60 00 18 */	frsp f3, f0
/* 804CB4E8  C0 3F 07 44 */	lfs f1, 0x744(r31)
/* 804CB4EC  EC 01 10 28 */	fsubs f0, f1, f2
/* 804CB4F0  FC 00 02 10 */	fabs f0, f0
/* 804CB4F4  FC 40 00 18 */	frsp f2, f0
/* 804CB4F8  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804CB4FC  FC 03 00 40 */	fcmpo cr0, f3, f0
/* 804CB500  40 80 00 1C */	bge lbl_804CB51C
/* 804CB504  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804CB508  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 804CB50C  D0 21 00 90 */	stfs f1, 0x90(r1)
/* 804CB510  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804CB514  D0 01 00 94 */	stfs f0, 0x94(r1)
/* 804CB518  48 00 00 60 */	b lbl_804CB578
lbl_804CB51C:
/* 804CB51C  EF A2 18 24 */	fdivs f29, f2, f3
/* 804CB520  FC 1D 00 40 */	fcmpo cr0, f29, f0
/* 804CB524  40 81 00 08 */	ble lbl_804CB52C
/* 804CB528  FF A0 00 90 */	fmr f29, f0
lbl_804CB52C:
/* 804CB52C  38 61 00 5C */	addi r3, r1, 0x5c
/* 804CB530  38 9F 04 BC */	addi r4, r31, 0x4bc
/* 804CB534  FC 20 E8 90 */	fmr f1, f29
/* 804CB538  4B D9 B6 4C */	b __ml__4cXyzCFf
/* 804CB53C  38 61 00 50 */	addi r3, r1, 0x50
/* 804CB540  38 9F 04 D0 */	addi r4, r31, 0x4d0
/* 804CB544  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804CB548  EC 20 E8 28 */	fsubs f1, f0, f29
/* 804CB54C  4B D9 B6 38 */	b __ml__4cXyzCFf
/* 804CB550  38 61 00 44 */	addi r3, r1, 0x44
/* 804CB554  38 81 00 5C */	addi r4, r1, 0x5c
/* 804CB558  38 A1 00 50 */	addi r5, r1, 0x50
/* 804CB55C  4B D9 B5 88 */	b __pl__4cXyzCFRC3Vec
/* 804CB560  C0 01 00 44 */	lfs f0, 0x44(r1)
/* 804CB564  D0 01 00 8C */	stfs f0, 0x8c(r1)
/* 804CB568  C0 01 00 48 */	lfs f0, 0x48(r1)
/* 804CB56C  D0 01 00 90 */	stfs f0, 0x90(r1)
/* 804CB570  C0 01 00 4C */	lfs f0, 0x4c(r1)
/* 804CB574  D0 01 00 94 */	stfs f0, 0x94(r1)
lbl_804CB578:
/* 804CB578  38 61 00 8C */	addi r3, r1, 0x8c
/* 804CB57C  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 804CB580  38 80 00 00 */	li r4, 0
/* 804CB584  4B B5 42 F8 */	b fopKyM_createWpillar__FPC4cXyzfi
/* 804CB588  80 9F 0B 4C */	lwz r4, 0xb4c(r31)
/* 804CB58C  54 85 06 F7 */	rlwinm. r5, r4, 0, 0x1b, 0x1b
/* 804CB590  40 82 00 3C */	bne lbl_804CB5CC
/* 804CB594  80 7F 04 9C */	lwz r3, 0x49c(r31)
/* 804CB598  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 804CB59C  40 82 00 20 */	bne lbl_804CB5BC
/* 804CB5A0  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 804CB5A4  40 82 00 18 */	bne lbl_804CB5BC
/* 804CB5A8  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804CB5AC  28 00 00 06 */	cmplwi r0, 6
/* 804CB5B0  41 82 00 0C */	beq lbl_804CB5BC
/* 804CB5B4  28 00 00 05 */	cmplwi r0, 5
/* 804CB5B8  40 82 00 14 */	bne lbl_804CB5CC
lbl_804CB5BC:
/* 804CB5BC  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB5C0  60 00 10 00 */	ori r0, r0, 0x1000
/* 804CB5C4  90 1F 0B 4C */	stw r0, 0xb4c(r31)
/* 804CB5C8  48 00 00 DC */	b lbl_804CB6A4
lbl_804CB5CC:
/* 804CB5CC  54 80 05 6B */	rlwinm. r0, r4, 0, 0x15, 0x15
/* 804CB5D0  41 82 00 34 */	beq lbl_804CB604
/* 804CB5D4  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 804CB5D8  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 804CB5DC  EC 00 00 72 */	fmuls f0, f0, f1
/* 804CB5E0  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804CB5E4  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 804CB5E8  C0 03 00 0C */	lfs f0, 0xc(r3)
/* 804CB5EC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CB5F0  D0 03 00 0C */	stfs f0, 0xc(r3)
/* 804CB5F4  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB5F8  60 00 08 00 */	ori r0, r0, 0x800
/* 804CB5FC  90 1F 0B 4C */	stw r0, 0xb4c(r31)
/* 804CB600  48 00 00 A4 */	b lbl_804CB6A4
lbl_804CB604:
/* 804CB604  28 05 00 00 */	cmplwi r5, 0
/* 804CB608  41 82 00 14 */	beq lbl_804CB61C
/* 804CB60C  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB610  60 00 00 20 */	ori r0, r0, 0x20
/* 804CB614  90 1F 0B 4C */	stw r0, 0xb4c(r31)
/* 804CB618  48 00 00 2C */	b lbl_804CB644
lbl_804CB61C:
/* 804CB61C  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB620  60 00 08 00 */	ori r0, r0, 0x800
/* 804CB624  90 1F 0B 4C */	stw r0, 0xb4c(r31)
/* 804CB628  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 804CB62C  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 804CB630  D0 1F 0B E4 */	stfs f0, 0xbe4(r31)
/* 804CB634  C0 03 00 04 */	lfs f0, 4(r3)
/* 804CB638  D0 1F 0B E8 */	stfs f0, 0xbe8(r31)
/* 804CB63C  C0 03 00 08 */	lfs f0, 8(r3)
/* 804CB640  D0 1F 0B EC */	stfs f0, 0xbec(r31)
lbl_804CB644:
/* 804CB644  C0 1F 05 2C */	lfs f0, 0x52c(r31)
/* 804CB648  C0 3E 00 34 */	lfs f1, 0x34(r30)
/* 804CB64C  EC 00 00 72 */	fmuls f0, f0, f1
/* 804CB650  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804CB654  C0 1F 04 FC */	lfs f0, 0x4fc(r31)
/* 804CB658  EC 00 00 72 */	fmuls f0, f0, f1
/* 804CB65C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804CB660  7F 83 E3 78 */	mr r3, r28
/* 804CB664  4B C1 81 8C */	b getBombWaterGravity__9daAlink_cCFv
/* 804CB668  D0 3F 05 30 */	stfs f1, 0x530(r31)
/* 804CB66C  7F 83 E3 78 */	mr r3, r28
/* 804CB670  4B C1 81 90 */	b getBombWaterMaxFallSpeed__9daAlink_cCFv
/* 804CB674  D0 3F 05 34 */	stfs f1, 0x534(r31)
/* 804CB678  48 00 00 2C */	b lbl_804CB6A4
lbl_804CB67C:
/* 804CB67C  54 60 06 F7 */	rlwinm. r0, r3, 0, 0x1b, 0x1b
/* 804CB680  40 82 00 24 */	bne lbl_804CB6A4
/* 804CB684  80 7F 04 9C */	lwz r3, 0x49c(r31)
/* 804CB688  54 60 04 A5 */	rlwinm. r0, r3, 0, 0x12, 0x12
/* 804CB68C  40 82 00 0C */	bne lbl_804CB698
/* 804CB690  54 60 02 D7 */	rlwinm. r0, r3, 0, 0xb, 0xb
/* 804CB694  41 82 00 10 */	beq lbl_804CB6A4
lbl_804CB698:
/* 804CB698  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB69C  60 00 10 00 */	ori r0, r0, 0x1000
/* 804CB6A0  90 1F 0B 4C */	stw r0, 0xb4c(r31)
lbl_804CB6A4:
/* 804CB6A4  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB6A8  54 00 04 E7 */	rlwinm. r0, r0, 0, 0x13, 0x13
/* 804CB6AC  41 82 00 70 */	beq lbl_804CB71C
/* 804CB6B0  7F E3 FB 78 */	mr r3, r31
/* 804CB6B4  4B B4 E5 C8 */	b fopAcM_delete__FP10fopAc_ac_c
/* 804CB6B8  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 804CB6BC  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 804CB6C0  D0 1F 0B E4 */	stfs f0, 0xbe4(r31)
/* 804CB6C4  C0 03 00 04 */	lfs f0, 4(r3)
/* 804CB6C8  D0 1F 0B E8 */	stfs f0, 0xbe8(r31)
/* 804CB6CC  C0 03 00 08 */	lfs f0, 8(r3)
/* 804CB6D0  D0 1F 0B EC */	stfs f0, 0xbec(r31)
/* 804CB6D4  38 60 00 01 */	li r3, 1
/* 804CB6D8  48 00 05 38 */	b lbl_804CBC10
lbl_804CB6DC:
/* 804CB6DC  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB6E0  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804CB6E4  41 82 00 14 */	beq lbl_804CB6F8
/* 804CB6E8  7F E3 FB 78 */	mr r3, r31
/* 804CB6EC  4B B4 E5 90 */	b fopAcM_delete__FP10fopAc_ac_c
/* 804CB6F0  38 60 00 01 */	li r3, 1
/* 804CB6F4  48 00 05 1C */	b lbl_804CBC10
lbl_804CB6F8:
/* 804CB6F8  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CB6FC  54 00 06 F2 */	rlwinm r0, r0, 0, 0x1b, 0x19
/* 804CB700  90 1F 0B 4C */	stw r0, 0xb4c(r31)
/* 804CB704  7F 83 E3 78 */	mr r3, r28
/* 804CB708  4B C1 80 68 */	b getBombGravity__9daAlink_cCFv
/* 804CB70C  D0 3F 05 30 */	stfs f1, 0x530(r31)
/* 804CB710  7F 83 E3 78 */	mr r3, r28
/* 804CB714  4B C1 80 6C */	b getBombMaxFallSpeed__9daAlink_cCFv
/* 804CB718  D0 3F 05 34 */	stfs f1, 0x534(r31)
lbl_804CB71C:
/* 804CB71C  C0 BF 05 2C */	lfs f5, 0x52c(r31)
/* 804CB720  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804CB724  FC 05 00 40 */	fcmpo cr0, f5, f0
/* 804CB728  41 81 00 14 */	bgt lbl_804CB73C
/* 804CB72C  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804CB730  41 81 00 0C */	bgt lbl_804CB73C
/* 804CB734  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804CB738  40 81 02 3C */	ble lbl_804CB974
lbl_804CB73C:
/* 804CB73C  3B 60 00 01 */	li r27, 1
/* 804CB740  C0 1E 00 3C */	lfs f0, 0x3c(r30)
/* 804CB744  FC 1F 00 40 */	fcmpo cr0, f31, f0
/* 804CB748  41 81 00 0C */	bgt lbl_804CB754
/* 804CB74C  FC 1E 00 40 */	fcmpo cr0, f30, f0
/* 804CB750  40 81 01 68 */	ble lbl_804CB8B8
lbl_804CB754:
/* 804CB754  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 804CB758  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804CB75C  7C 1D 04 2E */	lfsx f0, r29, r0
/* 804CB760  C0 5F 0C 34 */	lfs f2, 0xc34(r31)
/* 804CB764  C0 3F 0C 28 */	lfs f1, 0xc28(r31)
/* 804CB768  EC 05 00 32 */	fmuls f0, f5, f0
/* 804CB76C  EC 01 00 2A */	fadds f0, f1, f0
/* 804CB770  EC 82 00 2A */	fadds f4, f2, f0
/* 804CB774  C0 3F 0C 24 */	lfs f1, 0xc24(r31)
/* 804CB778  C0 1F 0C 30 */	lfs f0, 0xc30(r31)
/* 804CB77C  EC 61 00 2A */	fadds f3, f1, f0
/* 804CB780  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804CB784  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804CB788  7C 03 04 2E */	lfsx f0, r3, r0
/* 804CB78C  C0 5F 0C 2C */	lfs f2, 0xc2c(r31)
/* 804CB790  C0 3F 0C 20 */	lfs f1, 0xc20(r31)
/* 804CB794  EC 05 00 32 */	fmuls f0, f5, f0
/* 804CB798  EC 01 00 2A */	fadds f0, f1, f0
/* 804CB79C  EC 02 00 2A */	fadds f0, f2, f0
/* 804CB7A0  D0 01 00 80 */	stfs f0, 0x80(r1)
/* 804CB7A4  D0 61 00 84 */	stfs f3, 0x84(r1)
/* 804CB7A8  D0 81 00 88 */	stfs f4, 0x88(r1)
/* 804CB7AC  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804CB7B0  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804CB7B4  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804CB7B8  D0 81 00 28 */	stfs f4, 0x28(r1)
/* 804CB7BC  38 61 00 20 */	addi r3, r1, 0x20
/* 804CB7C0  4B E7 B9 78 */	b PSVECSquareMag
/* 804CB7C4  C0 1E 00 40 */	lfs f0, 0x40(r30)
/* 804CB7C8  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CB7CC  40 81 00 58 */	ble lbl_804CB824
/* 804CB7D0  FC 00 08 34 */	frsqrte f0, f1
/* 804CB7D4  C8 9E 01 10 */	lfd f4, 0x110(r30)
/* 804CB7D8  FC 44 00 32 */	fmul f2, f4, f0
/* 804CB7DC  C8 7E 01 18 */	lfd f3, 0x118(r30)
/* 804CB7E0  FC 00 00 32 */	fmul f0, f0, f0
/* 804CB7E4  FC 01 00 32 */	fmul f0, f1, f0
/* 804CB7E8  FC 03 00 28 */	fsub f0, f3, f0
/* 804CB7EC  FC 02 00 32 */	fmul f0, f2, f0
/* 804CB7F0  FC 44 00 32 */	fmul f2, f4, f0
/* 804CB7F4  FC 00 00 32 */	fmul f0, f0, f0
/* 804CB7F8  FC 01 00 32 */	fmul f0, f1, f0
/* 804CB7FC  FC 03 00 28 */	fsub f0, f3, f0
/* 804CB800  FC 02 00 32 */	fmul f0, f2, f0
/* 804CB804  FC 44 00 32 */	fmul f2, f4, f0
/* 804CB808  FC 00 00 32 */	fmul f0, f0, f0
/* 804CB80C  FC 01 00 32 */	fmul f0, f1, f0
/* 804CB810  FC 03 00 28 */	fsub f0, f3, f0
/* 804CB814  FC 02 00 32 */	fmul f0, f2, f0
/* 804CB818  FC 21 00 32 */	fmul f1, f1, f0
/* 804CB81C  FC 20 08 18 */	frsp f1, f1
/* 804CB820  48 00 00 88 */	b lbl_804CB8A8
lbl_804CB824:
/* 804CB824  C8 1E 01 20 */	lfd f0, 0x120(r30)
/* 804CB828  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 804CB82C  40 80 00 10 */	bge lbl_804CB83C
/* 804CB830  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CB834  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
/* 804CB838  48 00 00 70 */	b lbl_804CB8A8
lbl_804CB83C:
/* 804CB83C  D0 21 00 08 */	stfs f1, 8(r1)
/* 804CB840  80 81 00 08 */	lwz r4, 8(r1)
/* 804CB844  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 804CB848  3C 00 7F 80 */	lis r0, 0x7f80
/* 804CB84C  7C 03 00 00 */	cmpw r3, r0
/* 804CB850  41 82 00 14 */	beq lbl_804CB864
/* 804CB854  40 80 00 40 */	bge lbl_804CB894
/* 804CB858  2C 03 00 00 */	cmpwi r3, 0
/* 804CB85C  41 82 00 20 */	beq lbl_804CB87C
/* 804CB860  48 00 00 34 */	b lbl_804CB894
lbl_804CB864:
/* 804CB864  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CB868  41 82 00 0C */	beq lbl_804CB874
/* 804CB86C  38 00 00 01 */	li r0, 1
/* 804CB870  48 00 00 28 */	b lbl_804CB898
lbl_804CB874:
/* 804CB874  38 00 00 02 */	li r0, 2
/* 804CB878  48 00 00 20 */	b lbl_804CB898
lbl_804CB87C:
/* 804CB87C  54 80 02 7F */	clrlwi. r0, r4, 9
/* 804CB880  41 82 00 0C */	beq lbl_804CB88C
/* 804CB884  38 00 00 05 */	li r0, 5
/* 804CB888  48 00 00 10 */	b lbl_804CB898
lbl_804CB88C:
/* 804CB88C  38 00 00 03 */	li r0, 3
/* 804CB890  48 00 00 08 */	b lbl_804CB898
lbl_804CB894:
/* 804CB894  38 00 00 04 */	li r0, 4
lbl_804CB898:
/* 804CB898  2C 00 00 01 */	cmpwi r0, 1
/* 804CB89C  40 82 00 0C */	bne lbl_804CB8A8
/* 804CB8A0  3C 60 80 45 */	lis r3, __float_nan@ha
/* 804CB8A4  C0 23 0A E0 */	lfs f1, __float_nan@l(r3)
lbl_804CB8A8:
/* 804CB8A8  FF A0 08 90 */	fmr f29, f1
/* 804CB8AC  38 61 00 80 */	addi r3, r1, 0x80
/* 804CB8B0  4B D9 B8 78 */	b atan2sX_Z__4cXyzCFv
/* 804CB8B4  48 00 00 1C */	b lbl_804CB8D0
lbl_804CB8B8:
/* 804CB8B8  FF A0 28 90 */	fmr f29, f5
/* 804CB8BC  A8 7F 04 DE */	lha r3, 0x4de(r31)
/* 804CB8C0  80 1F 05 A4 */	lwz r0, 0x5a4(r31)
/* 804CB8C4  54 00 06 B5 */	rlwinm. r0, r0, 0, 0x1a, 0x1a
/* 804CB8C8  41 82 00 08 */	beq lbl_804CB8D0
/* 804CB8CC  3B 60 00 00 */	li r27, 0
lbl_804CB8D0:
/* 804CB8D0  C0 3E 00 F8 */	lfs f1, 0xf8(r30)
/* 804CB8D4  C0 1E 01 80 */	lfs f0, 0x180(r30)
/* 804CB8D8  EC 1D 00 24 */	fdivs f0, f29, f0
/* 804CB8DC  EC 01 00 32 */	fmuls f0, f1, f0
/* 804CB8E0  FC 00 00 1E */	fctiwz f0, f0
/* 804CB8E4  D8 01 00 B0 */	stfd f0, 0xb0(r1)
/* 804CB8E8  83 41 00 B4 */	lwz r26, 0xb4(r1)
/* 804CB8EC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804CB8F0  7C 00 18 50 */	subf r0, r0, r3
/* 804CB8F4  7C 19 07 34 */	extsh r25, r0
/* 804CB8F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CB8FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CB900  7F 24 CB 78 */	mr r4, r25
/* 804CB904  4B B4 0A D8 */	b mDoMtx_YrotS__FPA4_fs
/* 804CB908  2C 1B 00 00 */	cmpwi r27, 0
/* 804CB90C  40 82 00 18 */	bne lbl_804CB924
/* 804CB910  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CB914  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CB918  7F 44 D3 78 */	mr r4, r26
/* 804CB91C  4B B4 0A 80 */	b mDoMtx_XrotM__FPA4_fs
/* 804CB920  48 00 00 1C */	b lbl_804CB93C
lbl_804CB924:
/* 804CB924  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CB928  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CB92C  7F 40 07 34 */	extsh r0, r26
/* 804CB930  7C 00 0E 70 */	srawi r0, r0, 1
/* 804CB934  7C 04 07 34 */	extsh r4, r0
/* 804CB938  4B B4 0A 64 */	b mDoMtx_XrotM__FPA4_fs
lbl_804CB93C:
/* 804CB93C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CB940  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CB944  7C 19 00 D0 */	neg r0, r25
/* 804CB948  7C 04 07 34 */	extsh r4, r0
/* 804CB94C  4B B4 0A E8 */	b mDoMtx_YrotM__FPA4_fs
/* 804CB950  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CB954  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CB958  38 9F 0A 40 */	addi r4, r31, 0xa40
/* 804CB95C  7C 65 1B 78 */	mr r5, r3
/* 804CB960  4B E7 AB 84 */	b PSMTXConcat
/* 804CB964  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CB968  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CB96C  38 9F 0A 40 */	addi r4, r31, 0xa40
/* 804CB970  4B E7 AB 40 */	b PSMTXCopy
lbl_804CB974:
/* 804CB974  28 1F 00 00 */	cmplwi r31, 0
/* 804CB978  41 82 00 0C */	beq lbl_804CB984
/* 804CB97C  83 7F 00 04 */	lwz r27, 4(r31)
/* 804CB980  48 00 00 08 */	b lbl_804CB988
lbl_804CB984:
/* 804CB984  3B 60 FF FF */	li r27, -1
lbl_804CB988:
/* 804CB988  7F 83 E3 78 */	mr r3, r28
/* 804CB98C  81 9C 06 28 */	lwz r12, 0x628(r28)
/* 804CB990  81 8C 00 FC */	lwz r12, 0xfc(r12)
/* 804CB994  7D 89 03 A6 */	mtctr r12
/* 804CB998  4E 80 04 21 */	bctrl 
/* 804CB99C  7C 03 D8 40 */	cmplw r3, r27
/* 804CB9A0  40 82 00 50 */	bne lbl_804CB9F0
/* 804CB9A4  A0 1C 2F E8 */	lhz r0, 0x2fe8(r28)
/* 804CB9A8  28 00 00 6D */	cmplwi r0, 0x6d
/* 804CB9AC  40 82 00 44 */	bne lbl_804CB9F0
/* 804CB9B0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CB9B4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CB9B8  A8 9F 04 E6 */	lha r4, 0x4e6(r31)
/* 804CB9BC  A8 1F 0B 5C */	lha r0, 0xb5c(r31)
/* 804CB9C0  7C 04 00 50 */	subf r0, r4, r0
/* 804CB9C4  7C 04 07 34 */	extsh r4, r0
/* 804CB9C8  4B B4 0A 14 */	b mDoMtx_YrotS__FPA4_fs
/* 804CB9CC  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CB9D0  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CB9D4  38 9F 0A 40 */	addi r4, r31, 0xa40
/* 804CB9D8  7C 65 1B 78 */	mr r5, r3
/* 804CB9DC  4B E7 AB 08 */	b PSMTXConcat
/* 804CB9E0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CB9E4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CB9E8  38 9F 0A 40 */	addi r4, r31, 0xa40
/* 804CB9EC  4B E7 AA C4 */	b PSMTXCopy
lbl_804CB9F0:
/* 804CB9F0  C0 7E 00 40 */	lfs f3, 0x40(r30)
/* 804CB9F4  A8 7F 0B 5A */	lha r3, 0xb5a(r31)
/* 804CB9F8  7C 60 07 35 */	extsh. r0, r3
/* 804CB9FC  41 82 00 30 */	beq lbl_804CBA2C
/* 804CBA00  2C 03 40 00 */	cmpwi r3, 0x4000
/* 804CBA04  40 80 00 28 */	bge lbl_804CBA2C
/* 804CBA08  54 60 04 38 */	rlwinm r0, r3, 0, 0x10, 0x1c
/* 804CBA0C  7C 1D 04 2E */	lfsx f0, r29, r0
/* 804CBA10  C0 7E 00 80 */	lfs f3, 0x80(r30)
/* 804CBA14  C0 5E 01 74 */	lfs f2, 0x174(r30)
/* 804CBA18  C0 3E 00 3C */	lfs f1, 0x3c(r30)
/* 804CBA1C  EC 01 00 24 */	fdivs f0, f1, f0
/* 804CBA20  EC 00 08 28 */	fsubs f0, f0, f1
/* 804CBA24  EC 02 00 32 */	fmuls f0, f2, f0
/* 804CBA28  EC 63 00 32 */	fmuls f3, f3, f0
lbl_804CBA2C:
/* 804CBA2C  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804CBA30  28 00 00 07 */	cmplwi r0, 7
/* 804CBA34  41 82 00 78 */	beq lbl_804CBAAC
/* 804CBA38  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CBA3C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CBA40  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 804CBA44  C0 5F 0B B0 */	lfs f2, 0xbb0(r31)
/* 804CBA48  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804CBA4C  EC 00 18 2A */	fadds f0, f0, f3
/* 804CBA50  EC 42 00 2A */	fadds f2, f2, f0
/* 804CBA54  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 804CBA58  4B E7 AE 90 */	b PSMTXTrans
/* 804CBA5C  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 804CBA60  4B B4 14 E4 */	b ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 804CBA64  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 804CBA68  C0 5E 01 74 */	lfs f2, 0x174(r30)
/* 804CBA6C  FC 60 08 90 */	fmr f3, f1
/* 804CBA70  4B B4 13 2C */	b transM__14mDoMtx_stack_cFfff
/* 804CBA74  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CBA78  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CBA7C  38 9F 0A 40 */	addi r4, r31, 0xa40
/* 804CBA80  7C 65 1B 78 */	mr r5, r3
/* 804CBA84  4B E7 AA 60 */	b PSMTXConcat
/* 804CBA88  C0 3E 00 40 */	lfs f1, 0x40(r30)
/* 804CBA8C  C0 5E 01 84 */	lfs f2, 0x184(r30)
/* 804CBA90  FC 60 08 90 */	fmr f3, f1
/* 804CBA94  4B B4 13 08 */	b transM__14mDoMtx_stack_cFfff
/* 804CBA98  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 804CBA9C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 804CBAA0  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 804CBAA4  38 84 00 24 */	addi r4, r4, 0x24
/* 804CBAA8  4B E7 AA 08 */	b PSMTXCopy
lbl_804CBAAC:
/* 804CBAAC  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804CBAB0  38 63 00 24 */	addi r3, r3, 0x24
/* 804CBAB4  38 9E 00 0C */	addi r4, r30, 0xc
/* 804CBAB8  38 BF 05 50 */	addi r5, r31, 0x550
/* 804CBABC  4B E7 B2 B0 */	b PSMTXMultVec
/* 804CBAC0  C0 1F 05 50 */	lfs f0, 0x550(r31)
/* 804CBAC4  D0 1F 05 38 */	stfs f0, 0x538(r31)
/* 804CBAC8  C0 1F 05 54 */	lfs f0, 0x554(r31)
/* 804CBACC  D0 1F 05 3C */	stfs f0, 0x53c(r31)
/* 804CBAD0  C0 1F 05 58 */	lfs f0, 0x558(r31)
/* 804CBAD4  D0 1F 05 40 */	stfs f0, 0x540(r31)
/* 804CBAD8  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 804CBADC  38 9F 05 50 */	addi r4, r31, 0x550
/* 804CBAE0  4B DA 3B 68 */	b SetC__8cM3dGSphFRC4cXyz
/* 804CBAE4  38 7F 08 F0 */	addi r3, r31, 0x8f0
/* 804CBAE8  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804CBAEC  C0 1F 04 EC */	lfs f0, 0x4ec(r31)
/* 804CBAF0  EC 21 00 32 */	fmuls f1, f1, f0
/* 804CBAF4  4B DA 3C 14 */	b SetR__8cM3dGSphFf
/* 804CBAF8  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 804CBAFC  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 804CBB00  3B 63 23 3C */	addi r27, r3, 0x233c
/* 804CBB04  7F 63 DB 78 */	mr r3, r27
/* 804CBB08  38 9F 07 CC */	addi r4, r31, 0x7cc
/* 804CBB0C  4B D9 90 9C */	b Set__4cCcSFP8cCcD_Obj
/* 804CBB10  80 1F 00 B0 */	lwz r0, 0xb0(r31)
/* 804CBB14  28 00 00 04 */	cmplwi r0, 4
/* 804CBB18  41 82 00 1C */	beq lbl_804CBB34
/* 804CBB1C  38 7F 0A 28 */	addi r3, r31, 0xa28
/* 804CBB20  38 9F 05 50 */	addi r4, r31, 0x550
/* 804CBB24  4B DA 3B 24 */	b SetC__8cM3dGSphFRC4cXyz
/* 804CBB28  7F 63 DB 78 */	mr r3, r27
/* 804CBB2C  38 9F 09 04 */	addi r4, r31, 0x904
/* 804CBB30  4B D9 90 78 */	b Set__4cCcSFP8cCcD_Obj
lbl_804CBB34:
/* 804CBB34  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CBB38  54 00 05 29 */	rlwinm. r0, r0, 0, 0x14, 0x14
/* 804CBB3C  40 82 00 0C */	bne lbl_804CBB48
/* 804CBB40  7F E3 FB 78 */	mr r3, r31
/* 804CBB44  4B FF C9 95 */	bl setSmokePos__9daNbomb_cFv
lbl_804CBB48:
/* 804CBB48  80 7F 0A 3C */	lwz r3, 0xa3c(r31)
/* 804CBB4C  28 03 00 00 */	cmplwi r3, 0
/* 804CBB50  41 82 00 14 */	beq lbl_804CBB64
/* 804CBB54  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 804CBB58  80 84 00 04 */	lwz r4, 4(r4)
/* 804CBB5C  C0 23 00 10 */	lfs f1, 0x10(r3)
/* 804CBB60  4B B4 1E 6C */	b entry__13mDoExt_bckAnmFP12J3DModelDataf
lbl_804CBB64:
/* 804CBB64  80 7F 05 74 */	lwz r3, 0x574(r31)
/* 804CBB68  81 83 00 00 */	lwz r12, 0(r3)
/* 804CBB6C  81 8C 00 10 */	lwz r12, 0x10(r12)
/* 804CBB70  7D 89 03 A6 */	mtctr r12
/* 804CBB74  4E 80 04 21 */	bctrl 
/* 804CBB78  7F E3 FB 78 */	mr r3, r31
/* 804CBB7C  4B FF C7 19 */	bl checkTimerStop__9daNbomb_cFv
/* 804CBB80  54 60 06 3F */	clrlwi. r0, r3, 0x18
/* 804CBB84  40 82 00 38 */	bne lbl_804CBBBC
/* 804CBB88  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008000A@ha */
/* 804CBB8C  38 03 00 0A */	addi r0, r3, 0x000A /* 0x0008000A@l */
/* 804CBB90  90 01 00 18 */	stw r0, 0x18(r1)
/* 804CBB94  38 7F 0B 20 */	addi r3, r31, 0xb20
/* 804CBB98  38 81 00 18 */	addi r4, r1, 0x18
/* 804CBB9C  38 A0 00 00 */	li r5, 0
/* 804CBBA0  88 DF 0B 53 */	lbz r6, 0xb53(r31)
/* 804CBBA4  81 9F 0B 30 */	lwz r12, 0xb30(r31)
/* 804CBBA8  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 804CBBAC  7D 89 03 A6 */	mtctr r12
/* 804CBBB0  4E 80 04 21 */	bctrl 
/* 804CBBB4  7F E3 FB 78 */	mr r3, r31
/* 804CBBB8  4B FF C9 D1 */	bl setEffect__9daNbomb_cFv
lbl_804CBBBC:
/* 804CBBBC  A8 1F 04 E6 */	lha r0, 0x4e6(r31)
/* 804CBBC0  B0 1F 0B 5C */	sth r0, 0xb5c(r31)
/* 804CBBC4  80 1F 0B 4C */	lwz r0, 0xb4c(r31)
/* 804CBBC8  54 00 05 AD */	rlwinm. r0, r0, 0, 0x16, 0x16
/* 804CBBCC  41 82 00 18 */	beq lbl_804CBBE4
/* 804CBBD0  A8 7F 0B 5E */	lha r3, 0xb5e(r31)
/* 804CBBD4  2C 03 00 00 */	cmpwi r3, 0
/* 804CBBD8  41 82 00 0C */	beq lbl_804CBBE4
/* 804CBBDC  38 03 FF FF */	addi r0, r3, -1
/* 804CBBE0  B0 1F 0B 5E */	sth r0, 0xb5e(r31)
lbl_804CBBE4:
/* 804CBBE4  88 1F 04 E2 */	lbz r0, 0x4e2(r31)
/* 804CBBE8  7C 03 07 74 */	extsb r3, r0
/* 804CBBEC  4B B6 14 80 */	b dComIfGp_getReverb__Fi
/* 804CBBF0  7C 65 1B 78 */	mr r5, r3
/* 804CBBF4  38 7F 0B 20 */	addi r3, r31, 0xb20
/* 804CBBF8  80 9F 0B B4 */	lwz r4, 0xbb4(r31)
/* 804CBBFC  81 9F 0B 30 */	lwz r12, 0xb30(r31)
/* 804CBC00  81 8C 00 08 */	lwz r12, 8(r12)
/* 804CBC04  7D 89 03 A6 */	mtctr r12
/* 804CBC08  4E 80 04 21 */	bctrl 
/* 804CBC0C  38 60 00 01 */	li r3, 1
lbl_804CBC10:
/* 804CBC10  E3 E1 01 08 */	psq_l f31, 264(r1), 0, 0 /* qr0 */
/* 804CBC14  CB E1 01 00 */	lfd f31, 0x100(r1)
/* 804CBC18  E3 C1 00 F8 */	psq_l f30, 248(r1), 0, 0 /* qr0 */
/* 804CBC1C  CB C1 00 F0 */	lfd f30, 0xf0(r1)
/* 804CBC20  E3 A1 00 E8 */	psq_l f29, 232(r1), 0, 0 /* qr0 */
/* 804CBC24  CB A1 00 E0 */	lfd f29, 0xe0(r1)
/* 804CBC28  39 61 00 E0 */	addi r11, r1, 0xe0
/* 804CBC2C  4B E9 65 EC */	b _restgpr_25
/* 804CBC30  80 01 01 14 */	lwz r0, 0x114(r1)
/* 804CBC34  7C 08 03 A6 */	mtlr r0
/* 804CBC38  38 21 01 10 */	addi r1, r1, 0x110
/* 804CBC3C  4E 80 00 20 */	blr 
