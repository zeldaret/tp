lbl_802C2CD4:
/* 802C2CD4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C2CD8  7C 08 02 A6 */	mflr r0
/* 802C2CDC  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C2CE0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802C2CE4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802C2CE8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802C2CEC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 802C2CF0  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C2CF4  7C 68 1B 78 */	mr r8, r3
/* 802C2CF8  FF C0 08 90 */	fmr f30, f1
/* 802C2CFC  80 04 00 00 */	lwz r0, 0(r4)
/* 802C2D00  90 01 00 08 */	stw r0, 8(r1)
/* 802C2D04  54 A3 2C F4 */	rlwinm r3, r5, 5, 0x13, 0x1a
/* 802C2D08  38 63 01 04 */	addi r3, r3, 0x104
/* 802C2D0C  7C 68 1A 14 */	add r3, r8, r3
/* 802C2D10  38 81 00 08 */	addi r4, r1, 8
/* 802C2D14  7C C5 33 78 */	mr r5, r6
/* 802C2D18  7C E6 3B 78 */	mr r6, r7
/* 802C2D1C  81 83 00 10 */	lwz r12, 0x10(r3)
/* 802C2D20  81 8C 00 1C */	lwz r12, 0x1c(r12)
/* 802C2D24  7D 89 03 A6 */	mtctr r12
/* 802C2D28  4E 80 04 21 */	bctrl 
/* 802C2D2C  7C 7F 1B 79 */	or. r31, r3, r3
/* 802C2D30  41 82 00 88 */	beq lbl_802C2DB8
/* 802C2D34  80 1F 00 00 */	lwz r0, 0(r31)
/* 802C2D38  28 00 00 00 */	cmplwi r0, 0
/* 802C2D3C  41 82 00 7C */	beq lbl_802C2DB8
/* 802C2D40  FC 20 F0 90 */	fmr f1, f30
/* 802C2D44  C0 42 C2 34 */	lfs f2, lit_3717(r2)
/* 802C2D48  C0 62 C2 88 */	lfs f3, lit_4875(r2)
/* 802C2D4C  C0 82 C2 40 */	lfs f4, lit_3720(r2)
/* 802C2D50  FC A0 10 90 */	fmr f5, f2
/* 802C2D54  C0 C2 C2 20 */	lfs f6, lit_3669(r2)
/* 802C2D58  38 60 00 01 */	li r3, 1
/* 802C2D5C  4B FE 69 99 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C2D60  FF E0 08 90 */	fmr f31, f1
/* 802C2D64  FC 20 F0 90 */	fmr f1, f30
/* 802C2D68  C0 42 C2 34 */	lfs f2, lit_3717(r2)
/* 802C2D6C  C0 62 C2 88 */	lfs f3, lit_4875(r2)
/* 802C2D70  C0 82 C2 40 */	lfs f4, lit_3720(r2)
/* 802C2D74  C0 A2 C2 84 */	lfs f5, lit_4838(r2)
/* 802C2D78  C0 C2 C2 54 */	lfs f6, lit_4188(r2)
/* 802C2D7C  38 60 00 01 */	li r3, 1
/* 802C2D80  4B FE 69 75 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C2D84  FF C0 08 90 */	fmr f30, f1
/* 802C2D88  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C2D8C  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2D90  FC 20 F8 90 */	fmr f1, f31
/* 802C2D94  38 80 00 00 */	li r4, 0
/* 802C2D98  4B FE 00 1D */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802C2D9C  80 7F 00 00 */	lwz r3, 0(r31)
/* 802C2DA0  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2DA4  FC 20 F0 90 */	fmr f1, f30
/* 802C2DA8  38 80 00 00 */	li r4, 0
/* 802C2DAC  4B FE 00 61 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C2DB0  7F E3 FB 78 */	mr r3, r31
/* 802C2DB4  48 00 00 08 */	b lbl_802C2DBC
lbl_802C2DB8:
/* 802C2DB8  38 60 00 00 */	li r3, 0
lbl_802C2DBC:
/* 802C2DBC  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802C2DC0  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802C2DC4  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 802C2DC8  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802C2DCC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C2DD0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C2DD4  7C 08 03 A6 */	mtlr r0
/* 802C2DD8  38 21 00 40 */	addi r1, r1, 0x40
/* 802C2DDC  4E 80 00 20 */	blr 
