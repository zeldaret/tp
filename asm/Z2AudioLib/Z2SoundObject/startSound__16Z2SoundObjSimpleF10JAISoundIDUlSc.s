lbl_802BE8A0:
/* 802BE8A0  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802BE8A4  7C 08 02 A6 */	mflr r0
/* 802BE8A8  90 01 00 44 */	stw r0, 0x44(r1)
/* 802BE8AC  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802BE8B0  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802BE8B4  39 61 00 30 */	addi r11, r1, 0x30
/* 802BE8B8  48 0A 39 25 */	bl _savegpr_29
/* 802BE8BC  7C 9D 23 78 */	mr r29, r4
/* 802BE8C0  7C BE 2B 78 */	mr r30, r5
/* 802BE8C4  80 04 00 00 */	lwz r0, 0(r4)
/* 802BE8C8  90 01 00 08 */	stw r0, 8(r1)
/* 802BE8CC  38 81 00 08 */	addi r4, r1, 8
/* 802BE8D0  4B FF F8 75 */	bl startSound__14Z2SoundObjBaseF10JAISoundIDUlSc
/* 802BE8D4  7C 7F 1B 78 */	mr r31, r3
/* 802BE8D8  80 7D 00 00 */	lwz r3, 0(r29)
/* 802BE8DC  3C 03 FF FE */	addis r0, r3, 0xfffe
/* 802BE8E0  28 00 00 C7 */	cmplwi r0, 0xc7
/* 802BE8E4  40 82 00 A8 */	bne lbl_802BE98C
/* 802BE8E8  28 1F 00 00 */	cmplwi r31, 0
/* 802BE8EC  41 82 00 A0 */	beq lbl_802BE98C
/* 802BE8F0  80 1F 00 00 */	lwz r0, 0(r31)
/* 802BE8F4  28 00 00 00 */	cmplwi r0, 0
/* 802BE8F8  41 82 00 94 */	beq lbl_802BE98C
/* 802BE8FC  C8 22 C1 68 */	lfd f1, lit_3828(r2)
/* 802BE900  93 C1 00 14 */	stw r30, 0x14(r1)
/* 802BE904  3C 00 43 30 */	lis r0, 0x4330
/* 802BE908  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BE90C  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802BE910  EC 20 08 28 */	fsubs f1, f0, f1
/* 802BE914  C0 42 C1 50 */	lfs f2, lit_3821(r2)
/* 802BE918  C0 62 C1 38 */	lfs f3, lit_3559(r2)
/* 802BE91C  C0 82 C1 54 */	lfs f4, lit_3822(r2)
/* 802BE920  C0 A2 C1 58 */	lfs f5, lit_3823(r2)
/* 802BE924  C0 C2 C1 3C */	lfs f6, lit_3560(r2)
/* 802BE928  38 60 00 01 */	li r3, 1
/* 802BE92C  4B FE AD C9 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BE930  FF E0 08 90 */	fmr f31, f1
/* 802BE934  C8 22 C1 68 */	lfd f1, lit_3828(r2)
/* 802BE938  93 C1 00 1C */	stw r30, 0x1c(r1)
/* 802BE93C  3C 00 43 30 */	lis r0, 0x4330
/* 802BE940  90 01 00 18 */	stw r0, 0x18(r1)
/* 802BE944  C8 01 00 18 */	lfd f0, 0x18(r1)
/* 802BE948  EC 20 08 28 */	fsubs f1, f0, f1
/* 802BE94C  C0 42 C1 50 */	lfs f2, lit_3821(r2)
/* 802BE950  C0 62 C1 38 */	lfs f3, lit_3559(r2)
/* 802BE954  C0 82 C1 54 */	lfs f4, lit_3822(r2)
/* 802BE958  C0 A2 C1 5C */	lfs f5, lit_3824(r2)
/* 802BE95C  C0 C2 C1 60 */	lfs f6, lit_3825(r2)
/* 802BE960  38 60 00 01 */	li r3, 1
/* 802BE964  4B FE AD 91 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BE968  80 7F 00 00 */	lwz r3, 0(r31)
/* 802BE96C  38 63 00 48 */	addi r3, r3, 0x48
/* 802BE970  38 80 00 00 */	li r4, 0
/* 802BE974  4B FE 44 99 */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802BE978  80 7F 00 00 */	lwz r3, 0(r31)
/* 802BE97C  38 63 00 48 */	addi r3, r3, 0x48
/* 802BE980  FC 20 F8 90 */	fmr f1, f31
/* 802BE984  38 80 00 00 */	li r4, 0
/* 802BE988  4B FE 44 2D */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802BE98C:
/* 802BE98C  7F E3 FB 78 */	mr r3, r31
/* 802BE990  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802BE994  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802BE998  39 61 00 30 */	addi r11, r1, 0x30
/* 802BE99C  48 0A 38 8D */	bl _restgpr_29
/* 802BE9A0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802BE9A4  7C 08 03 A6 */	mtlr r0
/* 802BE9A8  38 21 00 40 */	addi r1, r1, 0x40
/* 802BE9AC  4E 80 00 20 */	blr 
