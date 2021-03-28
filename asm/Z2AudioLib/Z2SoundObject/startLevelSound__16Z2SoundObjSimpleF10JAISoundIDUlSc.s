lbl_802BE9B0:
/* 802BE9B0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802BE9B4  7C 08 02 A6 */	mflr r0
/* 802BE9B8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802BE9BC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802BE9C0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802BE9C4  39 61 00 30 */	addi r11, r1, 0x30
/* 802BE9C8  48 0A 38 15 */	bl _savegpr_29
/* 802BE9CC  7C 9D 23 78 */	mr r29, r4
/* 802BE9D0  7C BE 2B 78 */	mr r30, r5
/* 802BE9D4  80 04 00 00 */	lwz r0, 0(r4)
/* 802BE9D8  90 01 00 08 */	stw r0, 8(r1)
/* 802BE9DC  38 81 00 08 */	addi r4, r1, 8
/* 802BE9E0  4B FF F8 F5 */	bl startLevelSound__14Z2SoundObjBaseF10JAISoundIDUlSc
/* 802BE9E4  7C 7F 1B 79 */	or. r31, r3, r3
/* 802BE9E8  41 82 01 2C */	beq lbl_802BEB14
/* 802BE9EC  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BE9F0  28 00 00 00 */	cmplwi r0, 0
/* 802BE9F4  41 82 01 20 */	beq lbl_802BEB14
/* 802BE9F8  C0 C2 C1 3C */	lfs f6, lit_3560(r2)
/* 802BE9FC  FF E0 30 90 */	fmr f31, f6
/* 802BEA00  80 9D 00 00 */	lwz r4, 0(r29)
/* 802BEA04  3C 60 00 08 */	lis r3, 0x0008 /* 0x0008025C@ha */
/* 802BEA08  38 03 02 5C */	addi r0, r3, 0x025C /* 0x0008025C@l */
/* 802BEA0C  7C 04 00 00 */	cmpw r4, r0
/* 802BEA10  41 82 00 8C */	beq lbl_802BEA9C
/* 802BEA14  40 80 00 D8 */	bge lbl_802BEAEC
/* 802BEA18  3C 60 00 02 */	lis r3, 0x0002 /* 0x000200C6@ha */
/* 802BEA1C  38 03 00 C6 */	addi r0, r3, 0x00C6 /* 0x000200C6@l */
/* 802BEA20  7C 04 00 00 */	cmpw r4, r0
/* 802BEA24  41 82 00 08 */	beq lbl_802BEA2C
/* 802BEA28  48 00 00 C4 */	b lbl_802BEAEC
lbl_802BEA2C:
/* 802BEA2C  C8 22 C1 68 */	lfd f1, lit_3828(r2)
/* 802BEA30  93 C1 00 14 */	stw r30, 0x14(r1)
/* 802BEA34  3C 00 43 30 */	lis r0, 0x4330
/* 802BEA38  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BEA3C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802BEA40  EC 20 08 28 */	fsubs f1, f0, f1
/* 802BEA44  C0 42 C1 50 */	lfs f2, lit_3821(r2)
/* 802BEA48  C0 62 C1 38 */	lfs f3, lit_3559(r2)
/* 802BEA4C  C0 82 C1 54 */	lfs f4, lit_3822(r2)
/* 802BEA50  C0 A2 C1 58 */	lfs f5, lit_3823(r2)
/* 802BEA54  38 60 00 01 */	li r3, 1
/* 802BEA58  4B FE AC 9D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BEA5C  FF E0 08 90 */	fmr f31, f1
/* 802BEA60  C8 22 C1 68 */	lfd f1, lit_3828(r2)
/* 802BEA64  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802BEA68  3C 00 43 30 */	lis r0, 0x4330
/* 802BEA6C  90 01 00 18 */	stw r0, 0x18(r1)
/* 802BEA70  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802BEA74  EC 20 08 28 */	fsubs f1, f0, f1
/* 802BEA78  C0 42 C1 50 */	lfs f2, lit_3821(r2)
/* 802BEA7C  C0 62 C1 38 */	lfs f3, lit_3559(r2)
/* 802BEA80  C0 82 C1 54 */	lfs f4, lit_3822(r2)
/* 802BEA84  C0 A2 C1 5C */	lfs f5, lit_3824(r2)
/* 802BEA88  C0 C2 C1 60 */	lfs f6, lit_3825(r2)
/* 802BEA8C  38 60 00 01 */	li r3, 1
/* 802BEA90  4B FE AC 65 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BEA94  FC C0 08 90 */	fmr f6, f1
/* 802BEA98  48 00 00 54 */	b lbl_802BEAEC
lbl_802BEA9C:
/* 802BEA9C  28 1E 00 64 */	cmplwi r30, 0x64
/* 802BEAA0  40 81 00 0C */	ble lbl_802BEAAC
/* 802BEAA4  C0 C2 C1 70 */	lfs f6, lit_3859(r2)
/* 802BEAA8  48 00 00 44 */	b lbl_802BEAEC
lbl_802BEAAC:
/* 802BEAAC  28 1E 00 15 */	cmplwi r30, 0x15
/* 802BEAB0  40 81 00 3C */	ble lbl_802BEAEC
/* 802BEAB4  C8 22 C1 68 */	lfd f1, lit_3828(r2)
/* 802BEAB8  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802BEABC  3C 00 43 30 */	lis r0, 0x4330
/* 802BEAC0  90 01 00 18 */	stw r0, 0x18(r1)
/* 802BEAC4  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802BEAC8  EC 20 08 28 */	fsubs f1, f0, f1
/* 802BEACC  C0 42 C1 74 */	lfs f2, lit_3860(r2)
/* 802BEAD0  C0 62 C1 78 */	lfs f3, lit_3861(r2)
/* 802BEAD4  C0 82 C1 58 */	lfs f4, lit_3823(r2)
/* 802BEAD8  FC A0 30 90 */	fmr f5, f6
/* 802BEADC  C0 C2 C1 7C */	lfs f6, lit_3862(r2)
/* 802BEAE0  38 60 00 00 */	li r3, 0
/* 802BEAE4  4B FE AC 11 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BEAE8  FC C0 08 90 */	fmr f6, f1
lbl_802BEAEC:
/* 802BEAEC  80 7F 00 00 */	lwz r3, 0(r31)
/* 802BEAF0  38 63 00 48 */	addi r3, r3, 0x48
/* 802BEAF4  FC 20 30 90 */	fmr f1, f6
/* 802BEAF8  38 80 00 00 */	li r4, 0
/* 802BEAFC  4B FE 43 11 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802BEB00  80 7F 00 00 */	lwz r3, 0(r31)
/* 802BEB04  38 63 00 48 */	addi r3, r3, 0x48
/* 802BEB08  FC 20 F8 90 */	fmr f1, f31
/* 802BEB0C  38 80 00 00 */	li r4, 0
/* 802BEB10  4B FE 42 A5 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802BEB14:
/* 802BEB14  7F E3 FB 78 */	mr r3, r31
/* 802BEB18  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802BEB1C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802BEB20  39 61 00 30 */	addi r11, r1, 0x30
/* 802BEB24  48 0A 37 05 */	bl _restgpr_29
/* 802BEB28  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802BEB2C  7C 08 03 A6 */	mtlr r0
/* 802BEB30  38 21 00 40 */	addi r1, r1, 0x40
/* 802BEB34  4E 80 00 20 */	blr 
