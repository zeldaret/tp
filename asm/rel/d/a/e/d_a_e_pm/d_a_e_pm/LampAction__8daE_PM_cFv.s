lbl_80749ED0:
/* 80749ED0  94 21 FF 80 */	stwu r1, -0x80(r1)
/* 80749ED4  7C 08 02 A6 */	mflr r0
/* 80749ED8  90 01 00 84 */	stw r0, 0x84(r1)
/* 80749EDC  DB E1 00 70 */	stfd f31, 0x70(r1)
/* 80749EE0  F3 E1 00 78 */	psq_st f31, 120(r1), 0, 0 /* qr0 */
/* 80749EE4  93 E1 00 6C */	stw r31, 0x6c(r1)
/* 80749EE8  93 C1 00 68 */	stw r30, 0x68(r1)
/* 80749EEC  7C 7E 1B 78 */	mr r30, r3
/* 80749EF0  3C 60 80 75 */	lis r3, lit_3910@ha /* 0x8074BF3C@ha */
/* 80749EF4  3B E3 BF 3C */	addi r31, r3, lit_3910@l /* 0x8074BF3C@l */
/* 80749EF8  38 61 00 0C */	addi r3, r1, 0xc
/* 80749EFC  38 9E 06 DC */	addi r4, r30, 0x6dc
/* 80749F00  38 BE 06 E8 */	addi r5, r30, 0x6e8
/* 80749F04  4B B1 CC 31 */	bl __mi__4cXyzCFRC3Vec
/* 80749F08  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80749F0C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80749F10  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80749F14  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80749F18  C0 01 00 14 */	lfs f0, 0x14(r1)
/* 80749F1C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 80749F20  38 61 00 18 */	addi r3, r1, 0x18
/* 80749F24  4B BF D2 15 */	bl PSVECSquareMag
/* 80749F28  C0 1F 00 04 */	lfs f0, 4(r31)
/* 80749F2C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80749F30  40 81 00 58 */	ble lbl_80749F88
/* 80749F34  FC 00 08 34 */	frsqrte f0, f1
/* 80749F38  C8 9F 00 10 */	lfd f4, 0x10(r31)
/* 80749F3C  FC 44 00 32 */	fmul f2, f4, f0
/* 80749F40  C8 7F 00 18 */	lfd f3, 0x18(r31)
/* 80749F44  FC 00 00 32 */	fmul f0, f0, f0
/* 80749F48  FC 01 00 32 */	fmul f0, f1, f0
/* 80749F4C  FC 03 00 28 */	fsub f0, f3, f0
/* 80749F50  FC 02 00 32 */	fmul f0, f2, f0
/* 80749F54  FC 44 00 32 */	fmul f2, f4, f0
/* 80749F58  FC 00 00 32 */	fmul f0, f0, f0
/* 80749F5C  FC 01 00 32 */	fmul f0, f1, f0
/* 80749F60  FC 03 00 28 */	fsub f0, f3, f0
/* 80749F64  FC 02 00 32 */	fmul f0, f2, f0
/* 80749F68  FC 44 00 32 */	fmul f2, f4, f0
/* 80749F6C  FC 00 00 32 */	fmul f0, f0, f0
/* 80749F70  FC 01 00 32 */	fmul f0, f1, f0
/* 80749F74  FC 03 00 28 */	fsub f0, f3, f0
/* 80749F78  FC 02 00 32 */	fmul f0, f2, f0
/* 80749F7C  FF E1 00 32 */	fmul f31, f1, f0
/* 80749F80  FF E0 F8 18 */	frsp f31, f31
/* 80749F84  48 00 00 90 */	b lbl_8074A014
lbl_80749F88:
/* 80749F88  C8 1F 00 20 */	lfd f0, 0x20(r31)
/* 80749F8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 80749F90  40 80 00 10 */	bge lbl_80749FA0
/* 80749F94  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 80749F98  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 80749F9C  48 00 00 78 */	b lbl_8074A014
lbl_80749FA0:
/* 80749FA0  D0 21 00 08 */	stfs f1, 8(r1)
/* 80749FA4  80 81 00 08 */	lwz r4, 8(r1)
/* 80749FA8  54 83 00 50 */	rlwinm r3, r4, 0, 1, 8
/* 80749FAC  3C 00 7F 80 */	lis r0, 0x7f80
/* 80749FB0  7C 03 00 00 */	cmpw r3, r0
/* 80749FB4  41 82 00 14 */	beq lbl_80749FC8
/* 80749FB8  40 80 00 40 */	bge lbl_80749FF8
/* 80749FBC  2C 03 00 00 */	cmpwi r3, 0
/* 80749FC0  41 82 00 20 */	beq lbl_80749FE0
/* 80749FC4  48 00 00 34 */	b lbl_80749FF8
lbl_80749FC8:
/* 80749FC8  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80749FCC  41 82 00 0C */	beq lbl_80749FD8
/* 80749FD0  38 00 00 01 */	li r0, 1
/* 80749FD4  48 00 00 28 */	b lbl_80749FFC
lbl_80749FD8:
/* 80749FD8  38 00 00 02 */	li r0, 2
/* 80749FDC  48 00 00 20 */	b lbl_80749FFC
lbl_80749FE0:
/* 80749FE0  54 80 02 7F */	clrlwi. r0, r4, 9
/* 80749FE4  41 82 00 0C */	beq lbl_80749FF0
/* 80749FE8  38 00 00 05 */	li r0, 5
/* 80749FEC  48 00 00 10 */	b lbl_80749FFC
lbl_80749FF0:
/* 80749FF0  38 00 00 03 */	li r0, 3
/* 80749FF4  48 00 00 08 */	b lbl_80749FFC
lbl_80749FF8:
/* 80749FF8  38 00 00 04 */	li r0, 4
lbl_80749FFC:
/* 80749FFC  2C 00 00 01 */	cmpwi r0, 1
/* 8074A000  40 82 00 10 */	bne lbl_8074A010
/* 8074A004  3C 60 80 45 */	lis r3, __float_nan@ha /* 0x80450AE0@ha */
/* 8074A008  C3 E3 0A E0 */	lfs f31, __float_nan@l(r3)  /* 0x80450AE0@l */
/* 8074A00C  48 00 00 08 */	b lbl_8074A014
lbl_8074A010:
/* 8074A010  FF E0 08 90 */	fmr f31, f1
lbl_8074A014:
/* 8074A014  38 7E 06 FA */	addi r3, r30, 0x6fa
/* 8074A018  C0 1F 01 F4 */	lfs f0, 0x1f4(r31)
/* 8074A01C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8074A020  FC 00 00 1E */	fctiwz f0, f0
/* 8074A024  D8 01 00 28 */	stfd f0, 0x28(r1)
/* 8074A028  80 81 00 2C */	lwz r4, 0x2c(r1)
/* 8074A02C  38 A0 00 05 */	li r5, 5
/* 8074A030  38 C0 10 00 */	li r6, 0x1000
/* 8074A034  4B B2 65 D5 */	bl cLib_addCalcAngleS2__FPssss
/* 8074A038  A8 1E 06 FC */	lha r0, 0x6fc(r30)
/* 8074A03C  C8 5F 00 A0 */	lfd f2, 0xa0(r31)
/* 8074A040  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8074A044  90 01 00 34 */	stw r0, 0x34(r1)
/* 8074A048  3C 80 43 30 */	lis r4, 0x4330
/* 8074A04C  90 81 00 30 */	stw r4, 0x30(r1)
/* 8074A050  C8 01 00 30 */	lfd f0, 0x30(r1)
/* 8074A054  EC 20 10 28 */	fsubs f1, f0, f2
/* 8074A058  C0 1F 01 F8 */	lfs f0, 0x1f8(r31)
/* 8074A05C  EC 00 07 F2 */	fmuls f0, f0, f31
/* 8074A060  EC 01 00 2A */	fadds f0, f1, f0
/* 8074A064  FC 00 00 1E */	fctiwz f0, f0
/* 8074A068  D8 01 00 38 */	stfd f0, 0x38(r1)
/* 8074A06C  80 01 00 3C */	lwz r0, 0x3c(r1)
/* 8074A070  B0 1E 06 FC */	sth r0, 0x6fc(r30)
/* 8074A074  A8 1E 06 FC */	lha r0, 0x6fc(r30)
/* 8074A078  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8074A07C  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8074A080  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8074A084  7C 23 04 2E */	lfsx f1, r3, r0
/* 8074A088  38 7E 06 F4 */	addi r3, r30, 0x6f4
/* 8074A08C  A8 1E 06 FA */	lha r0, 0x6fa(r30)
/* 8074A090  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8074A094  90 01 00 44 */	stw r0, 0x44(r1)
/* 8074A098  90 81 00 40 */	stw r4, 0x40(r1)
/* 8074A09C  C8 01 00 40 */	lfd f0, 0x40(r1)
/* 8074A0A0  EC 00 10 28 */	fsubs f0, f0, f2
/* 8074A0A4  EC 00 00 72 */	fmuls f0, f0, f1
/* 8074A0A8  FC 00 00 1E */	fctiwz f0, f0
/* 8074A0AC  D8 01 00 48 */	stfd f0, 0x48(r1)
/* 8074A0B0  80 81 00 4C */	lwz r4, 0x4c(r1)
/* 8074A0B4  38 A0 00 05 */	li r5, 5
/* 8074A0B8  38 C0 10 00 */	li r6, 0x1000
/* 8074A0BC  4B B2 65 4D */	bl cLib_addCalcAngleS2__FPssss
/* 8074A0C0  A8 1E 06 FC */	lha r0, 0x6fc(r30)
/* 8074A0C4  54 00 04 38 */	rlwinm r0, r0, 0, 0x10, 0x1c
/* 8074A0C8  3C 60 80 44 */	lis r3, sincosTable___5JMath@ha /* 0x80439A20@ha */
/* 8074A0CC  38 63 9A 20 */	addi r3, r3, sincosTable___5JMath@l /* 0x80439A20@l */
/* 8074A0D0  7C 43 04 2E */	lfsx f2, r3, r0
/* 8074A0D4  38 7E 06 F8 */	addi r3, r30, 0x6f8
/* 8074A0D8  A8 1E 06 FA */	lha r0, 0x6fa(r30)
/* 8074A0DC  C8 3F 00 A0 */	lfd f1, 0xa0(r31)
/* 8074A0E0  6C 00 80 00 */	xoris r0, r0, 0x8000
/* 8074A0E4  90 01 00 54 */	stw r0, 0x54(r1)
/* 8074A0E8  3C 00 43 30 */	lis r0, 0x4330
/* 8074A0EC  90 01 00 50 */	stw r0, 0x50(r1)
/* 8074A0F0  C8 01 00 50 */	lfd f0, 0x50(r1)
/* 8074A0F4  EC 00 08 28 */	fsubs f0, f0, f1
/* 8074A0F8  EC 00 00 B2 */	fmuls f0, f0, f2
/* 8074A0FC  FC 00 00 1E */	fctiwz f0, f0
/* 8074A100  D8 01 00 58 */	stfd f0, 0x58(r1)
/* 8074A104  80 81 00 5C */	lwz r4, 0x5c(r1)
/* 8074A108  38 A0 00 05 */	li r5, 5
/* 8074A10C  38 C0 10 00 */	li r6, 0x1000
/* 8074A110  4B B2 64 F9 */	bl cLib_addCalcAngleS2__FPssss
/* 8074A114  C0 1E 06 E8 */	lfs f0, 0x6e8(r30)
/* 8074A118  D0 1E 06 DC */	stfs f0, 0x6dc(r30)
/* 8074A11C  C0 1E 06 EC */	lfs f0, 0x6ec(r30)
/* 8074A120  D0 1E 06 E0 */	stfs f0, 0x6e0(r30)
/* 8074A124  C0 1E 06 F0 */	lfs f0, 0x6f0(r30)
/* 8074A128  D0 1E 06 E4 */	stfs f0, 0x6e4(r30)
/* 8074A12C  E3 E1 00 78 */	psq_l f31, 120(r1), 0, 0 /* qr0 */
/* 8074A130  CB E1 00 70 */	lfd f31, 0x70(r1)
/* 8074A134  83 E1 00 6C */	lwz r31, 0x6c(r1)
/* 8074A138  83 C1 00 68 */	lwz r30, 0x68(r1)
/* 8074A13C  80 01 00 84 */	lwz r0, 0x84(r1)
/* 8074A140  7C 08 03 A6 */	mtlr r0
/* 8074A144  38 21 00 80 */	addi r1, r1, 0x80
/* 8074A148  4E 80 00 20 */	blr 
