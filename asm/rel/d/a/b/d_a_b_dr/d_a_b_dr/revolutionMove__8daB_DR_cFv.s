lbl_805BCEA4:
/* 805BCEA4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 805BCEA8  7C 08 02 A6 */	mflr r0
/* 805BCEAC  90 01 00 44 */	stw r0, 0x44(r1)
/* 805BCEB0  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 805BCEB4  93 C1 00 38 */	stw r30, 0x38(r1)
/* 805BCEB8  7C 7E 1B 78 */	mr r30, r3
/* 805BCEBC  3C 60 80 5C */	lis r3, lit_3800@ha
/* 805BCEC0  3B E3 6C 74 */	addi r31, r3, lit_3800@l
/* 805BCEC4  38 00 00 01 */	li r0, 1
/* 805BCEC8  98 1E 07 EA */	stb r0, 0x7ea(r30)
/* 805BCECC  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 805BCED0  C0 3E 07 20 */	lfs f1, 0x720(r30)
/* 805BCED4  EC 00 08 28 */	fsubs f0, f0, f1
/* 805BCED8  FC 00 02 10 */	fabs f0, f0
/* 805BCEDC  FC 40 00 18 */	frsp f2, f0
/* 805BCEE0  C0 1F 03 74 */	lfs f0, 0x374(r31)
/* 805BCEE4  FC 02 00 40 */	fcmpo cr0, f2, f0
/* 805BCEE8  40 81 00 68 */	ble lbl_805BCF50
/* 805BCEEC  38 7E 04 D4 */	addi r3, r30, 0x4d4
/* 805BCEF0  C0 5F 00 00 */	lfs f2, 0(r31)
/* 805BCEF4  C0 7F 00 08 */	lfs f3, 8(r31)
/* 805BCEF8  4B CB 2B 44 */	b cLib_addCalc2__FPffff
/* 805BCEFC  38 61 00 14 */	addi r3, r1, 0x14
/* 805BCF00  38 9E 04 D0 */	addi r4, r30, 0x4d0
/* 805BCF04  38 BE 04 A8 */	addi r5, r30, 0x4a8
/* 805BCF08  4B CA 9C 2C */	b __mi__4cXyzCFRC3Vec
/* 805BCF0C  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 805BCF10  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805BCF14  C0 01 00 18 */	lfs f0, 0x18(r1)
/* 805BCF18  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BCF1C  C0 01 00 1C */	lfs f0, 0x1c(r1)
/* 805BCF20  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805BCF24  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BCF28  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BCF2C  38 00 00 C8 */	li r0, 0xc8
/* 805BCF30  B0 1E 07 50 */	sth r0, 0x750(r30)
/* 805BCF34  38 61 00 20 */	addi r3, r1, 0x20
/* 805BCF38  4B CA A1 F0 */	b atan2sX_Z__4cXyzCFv
/* 805BCF3C  54 63 04 26 */	rlwinm r3, r3, 0, 0x10, 0x13
/* 805BCF40  38 03 10 00 */	addi r0, r3, 0x1000
/* 805BCF44  B0 1E 07 4C */	sth r0, 0x74c(r30)
/* 805BCF48  38 60 00 00 */	li r3, 0
/* 805BCF4C  48 00 00 F8 */	b lbl_805BD044
lbl_805BCF50:
/* 805BCF50  38 7E 04 FC */	addi r3, r30, 0x4fc
/* 805BCF54  C0 3F 03 78 */	lfs f1, 0x378(r31)
/* 805BCF58  C0 5F 00 20 */	lfs f2, 0x20(r31)
/* 805BCF5C  4B CB 2B 24 */	b cLib_addCalc0__FPfff
/* 805BCF60  3C 60 80 45 */	lis r3, calc_mtx@ha
/* 805BCF64  38 63 07 68 */	addi r3, r3, calc_mtx@l
/* 805BCF68  80 63 00 00 */	lwz r3, 0(r3)
/* 805BCF6C  A8 9E 07 4C */	lha r4, 0x74c(r30)
/* 805BCF70  4B A4 F4 6C */	b mDoMtx_YrotS__FPA4_fs
/* 805BCF74  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BCF78  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805BCF7C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BCF80  C0 1F 03 7C */	lfs f0, 0x37c(r31)
/* 805BCF84  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805BCF88  38 61 00 20 */	addi r3, r1, 0x20
/* 805BCF8C  38 9E 07 A8 */	addi r4, r30, 0x7a8
/* 805BCF90  4B CB 3F 5C */	b MtxPosition__FP4cXyzP4cXyz
/* 805BCF94  38 7E 07 A8 */	addi r3, r30, 0x7a8
/* 805BCF98  38 9E 04 A8 */	addi r4, r30, 0x4a8
/* 805BCF9C  7C 65 1B 78 */	mr r5, r3
/* 805BCFA0  4B D8 A0 F0 */	b PSVECAdd
/* 805BCFA4  C0 1E 07 20 */	lfs f0, 0x720(r30)
/* 805BCFA8  D0 1E 07 AC */	stfs f0, 0x7ac(r30)
/* 805BCFAC  38 61 00 08 */	addi r3, r1, 8
/* 805BCFB0  38 9E 07 A8 */	addi r4, r30, 0x7a8
/* 805BCFB4  38 BE 04 D0 */	addi r5, r30, 0x4d0
/* 805BCFB8  4B CA 9B 7C */	b __mi__4cXyzCFRC3Vec
/* 805BCFBC  C0 01 00 08 */	lfs f0, 8(r1)
/* 805BCFC0  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 805BCFC4  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 805BCFC8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BCFCC  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 805BCFD0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 805BCFD4  C0 1F 00 30 */	lfs f0, 0x30(r31)
/* 805BCFD8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 805BCFDC  38 61 00 20 */	addi r3, r1, 0x20
/* 805BCFE0  4B CA A1 48 */	b atan2sX_Z__4cXyzCFv
/* 805BCFE4  7C 64 07 34 */	extsh r4, r3
/* 805BCFE8  38 7E 04 DE */	addi r3, r30, 0x4de
/* 805BCFEC  A8 BE 07 50 */	lha r5, 0x750(r30)
/* 805BCFF0  38 C0 04 00 */	li r6, 0x400
/* 805BCFF4  4B CB 36 14 */	b cLib_addCalcAngleS2__FPssss
/* 805BCFF8  38 7E 07 50 */	addi r3, r30, 0x750
/* 805BCFFC  38 80 00 08 */	li r4, 8
/* 805BD000  38 A0 00 0A */	li r5, 0xa
/* 805BD004  38 C0 00 28 */	li r6, 0x28
/* 805BD008  4B CB 36 00 */	b cLib_addCalcAngleS2__FPssss
/* 805BD00C  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 805BD010  B0 1E 04 E6 */	sth r0, 0x4e6(r30)
/* 805BD014  38 61 00 20 */	addi r3, r1, 0x20
/* 805BD018  4B CA A1 10 */	b atan2sX_Z__4cXyzCFv
/* 805BD01C  7C 63 07 34 */	extsh r3, r3
/* 805BD020  A8 1E 04 E6 */	lha r0, 0x4e6(r30)
/* 805BD024  7C 00 18 50 */	subf r0, r0, r3
/* 805BD028  7C 03 07 34 */	extsh r3, r0
/* 805BD02C  4B DA 80 A4 */	b abs
/* 805BD030  38 00 10 00 */	li r0, 0x1000
/* 805BD034  7C 05 FE 70 */	srawi r5, r0, 0x1f
/* 805BD038  54 64 0F FE */	srwi r4, r3, 0x1f
/* 805BD03C  7C 03 00 10 */	subfc r0, r3, r0
/* 805BD040  7C 65 21 14 */	adde r3, r5, r4
lbl_805BD044:
/* 805BD044  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 805BD048  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 805BD04C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 805BD050  7C 08 03 A6 */	mtlr r0
/* 805BD054  38 21 00 40 */	addi r1, r1, 0x40
/* 805BD058  4E 80 00 20 */	blr 
