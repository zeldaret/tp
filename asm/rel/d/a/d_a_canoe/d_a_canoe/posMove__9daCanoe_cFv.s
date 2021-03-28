lbl_804DB578:
/* 804DB578  94 21 FF B0 */	stwu r1, -0x50(r1)
/* 804DB57C  7C 08 02 A6 */	mflr r0
/* 804DB580  90 01 00 54 */	stw r0, 0x54(r1)
/* 804DB584  DB E1 00 40 */	stfd f31, 0x40(r1)
/* 804DB588  F3 E1 00 48 */	psq_st f31, 72(r1), 0, 0 /* qr0 */
/* 804DB58C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804DB590  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804DB594  7C 7E 1B 78 */	mr r30, r3
/* 804DB598  3C 60 80 4E */	lis r3, lit_3766@ha
/* 804DB59C  3B E3 D5 DC */	addi r31, r3, lit_3766@l
/* 804DB5A0  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha
/* 804DB5A4  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l
/* 804DB5A8  38 83 00 04 */	addi r4, r3, 4
/* 804DB5AC  A8 1E 14 48 */	lha r0, 0x1448(r30)
/* 804DB5B0  54 00 04 3E */	clrlwi r0, r0, 0x10
/* 804DB5B4  7C 00 1E 70 */	srawi r0, r0, 3
/* 804DB5B8  54 00 18 38 */	slwi r0, r0, 3
/* 804DB5BC  7C 24 04 2E */	lfsx f1, r4, r0
/* 804DB5C0  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804DB5C4  EC 60 00 72 */	fmuls f3, f0, f1
/* 804DB5C8  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 804DB5CC  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DB5D0  7C 03 04 2E */	lfsx f0, r3, r0
/* 804DB5D4  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804DB5D8  EC 03 00 32 */	fmuls f0, f3, f0
/* 804DB5DC  EC 01 00 2A */	fadds f0, f1, f0
/* 804DB5E0  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804DB5E4  A8 1E 14 48 */	lha r0, 0x1448(r30)
/* 804DB5E8  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DB5EC  7C 43 04 2E */	lfsx f2, r3, r0
/* 804DB5F0  C0 3E 04 D4 */	lfs f1, 0x4d4(r30)
/* 804DB5F4  C0 1E 05 2C */	lfs f0, 0x52c(r30)
/* 804DB5F8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 804DB5FC  EC 01 00 28 */	fsubs f0, f1, f0
/* 804DB600  D0 1E 04 D4 */	stfs f0, 0x4d4(r30)
/* 804DB604  A8 1E 04 DE */	lha r0, 0x4de(r30)
/* 804DB608  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 804DB60C  7C 04 04 2E */	lfsx f0, r4, r0
/* 804DB610  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 804DB614  EC 03 00 32 */	fmuls f0, f3, f0
/* 804DB618  EC 01 00 2A */	fadds f0, f1, f0
/* 804DB61C  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 804DB620  38 9E 05 7C */	addi r4, r30, 0x57c
/* 804DB624  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804DB628  7C 65 1B 78 */	mr r5, r3
/* 804DB62C  4B E6 BA 64 */	b PSVECAdd
/* 804DB630  38 7E 05 7C */	addi r3, r30, 0x57c
/* 804DB634  4B D8 83 28 */	b ClrCcMove__9cCcD_SttsFv
/* 804DB638  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 804DB63C  38 9E 08 E8 */	addi r4, r30, 0x8e8
/* 804DB640  38 A1 00 24 */	addi r5, r1, 0x24
/* 804DB644  38 C1 00 08 */	addi r6, r1, 8
/* 804DB648  38 E0 00 01 */	li r7, 1
/* 804DB64C  4B B4 23 5C */	b fopAcM_getWaterStream__FPC4cXyzRC13cBgS_PolyInfoP4cXyzPii
/* 804DB650  2C 03 00 00 */	cmpwi r3, 0
/* 804DB654  41 82 00 8C */	beq lbl_804DB6E0
/* 804DB658  38 61 00 24 */	addi r3, r1, 0x24
/* 804DB65C  7C 64 1B 78 */	mr r4, r3
/* 804DB660  80 01 00 08 */	lwz r0, 8(r1)
/* 804DB664  C8 3F 00 A8 */	lfd f1, 0xa8(r31)
/* 804DB668  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 804DB66C  90 01 00 34 */	stw r0, 0x34(r1)
/* 804DB670  3C 00 43 30 */	lis r0, 0x4330
/* 804DB674  90 01 00 30 */	stw r0, 0x30(r1)
/* 804DB678  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 804DB67C  EC 20 08 28 */	fsubs f1, f0, f1
/* 804DB680  4B E6 BA 58 */	b PSVECScale
/* 804DB684  C0 3E 14 CC */	lfs f1, 0x14cc(r30)
/* 804DB688  C0 1E 14 C4 */	lfs f0, 0x14c4(r30)
/* 804DB68C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 804DB690  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804DB694  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 804DB698  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 804DB69C  38 61 00 18 */	addi r3, r1, 0x18
/* 804DB6A0  4B E6 BA 98 */	b PSVECSquareMag
/* 804DB6A4  FF E0 08 90 */	fmr f31, f1
/* 804DB6A8  C0 01 00 24 */	lfs f0, 0x24(r1)
/* 804DB6AC  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804DB6B0  C0 1F 00 88 */	lfs f0, 0x88(r31)
/* 804DB6B4  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804DB6B8  C0 01 00 2C */	lfs f0, 0x2c(r1)
/* 804DB6BC  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 804DB6C0  38 61 00 0C */	addi r3, r1, 0xc
/* 804DB6C4  4B E6 BA 74 */	b PSVECSquareMag
/* 804DB6C8  FC 1F 08 40 */	fcmpo cr0, f31, f1
/* 804DB6CC  40 81 00 0C */	ble lbl_804DB6D8
/* 804DB6D0  C0 5F 00 94 */	lfs f2, 0x94(r31)
/* 804DB6D4  48 00 00 2C */	b lbl_804DB700
lbl_804DB6D8:
/* 804DB6D8  C0 5F 00 70 */	lfs f2, 0x70(r31)
/* 804DB6DC  48 00 00 24 */	b lbl_804DB700
lbl_804DB6E0:
/* 804DB6E0  3C 60 80 43 */	lis r3, Zero__4cXyz@ha
/* 804DB6E4  C4 03 0C F4 */	lfsu f0, Zero__4cXyz@l(r3)
/* 804DB6E8  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804DB6EC  C0 03 00 04 */	lfs f0, 4(r3)
/* 804DB6F0  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804DB6F4  C0 03 00 08 */	lfs f0, 8(r3)
/* 804DB6F8  D0 01 00 2C */	stfs f0, 0x2c(r1)
/* 804DB6FC  C0 5F 00 60 */	lfs f2, 0x60(r31)
lbl_804DB700:
/* 804DB700  38 7E 14 C4 */	addi r3, r30, 0x14c4
/* 804DB704  38 81 00 24 */	addi r4, r1, 0x24
/* 804DB708  C0 3F 00 74 */	lfs f1, 0x74(r31)
/* 804DB70C  FC 60 08 90 */	fmr f3, f1
/* 804DB710  4B D9 46 E4 */	b cLib_addCalcPosXZ__FP4cXyzRC4cXyzfff
/* 804DB714  C0 3E 04 D0 */	lfs f1, 0x4d0(r30)
/* 804DB718  C0 1E 14 C4 */	lfs f0, 0x14c4(r30)
/* 804DB71C  EC 01 00 2A */	fadds f0, f1, f0
/* 804DB720  D0 1E 04 D0 */	stfs f0, 0x4d0(r30)
/* 804DB724  C0 3E 04 D8 */	lfs f1, 0x4d8(r30)
/* 804DB728  C0 1E 14 CC */	lfs f0, 0x14cc(r30)
/* 804DB72C  EC 01 00 2A */	fadds f0, f1, f0
/* 804DB730  D0 1E 04 D8 */	stfs f0, 0x4d8(r30)
/* 804DB734  E3 E1 00 48 */	psq_l f31, 72(r1), 0, 0 /* qr0 */
/* 804DB738  CB E1 00 40 */	lfd f31, 0x40(r1)
/* 804DB73C  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804DB740  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804DB744  80 01 00 54 */	lwz r0, 0x54(r1)
/* 804DB748  7C 08 03 A6 */	mtlr r0
/* 804DB74C  38 21 00 50 */	addi r1, r1, 0x50
/* 804DB750  4E 80 00 20 */	blr 
