lbl_802C2EE4:
/* 802C2EE4  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 802C2EE8  7C 08 02 A6 */	mflr r0
/* 802C2EEC  90 01 00 44 */	stw r0, 0x44(r1)
/* 802C2EF0  DB E1 00 30 */	stfd f31, 0x30(r1)
/* 802C2EF4  F3 E1 00 38 */	psq_st f31, 56(r1), 0, 0 /* qr0 */
/* 802C2EF8  DB C1 00 20 */	stfd f30, 0x20(r1)
/* 802C2EFC  F3 C1 00 28 */	psq_st f30, 40(r1), 0, 0 /* qr0 */
/* 802C2F00  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802C2F04  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802C2F08  7C 7E 1B 79 */	or. r30, r3, r3
/* 802C2F0C  7C 9F 23 78 */	mr r31, r4
/* 802C2F10  41 82 01 08 */	beq lbl_802C3018
/* 802C2F14  80 1E 00 00 */	lwz r0, 0(r30)
/* 802C2F18  28 00 00 00 */	cmplwi r0, 0
/* 802C2F1C  41 82 00 FC */	beq lbl_802C3018
/* 802C2F20  C3 C2 C2 20 */	lfs f30, lit_3669(r2)
/* 802C2F24  28 1F 01 90 */	cmplwi r31, 0x190
/* 802C2F28  40 81 00 0C */	ble lbl_802C2F34
/* 802C2F2C  C3 E2 C2 1C */	lfs f31, lit_3668(r2)
/* 802C2F30  48 00 00 C0 */	b lbl_802C2FF0
lbl_802C2F34:
/* 802C2F34  28 1F 00 64 */	cmplwi r31, 0x64
/* 802C2F38  40 81 00 44 */	ble lbl_802C2F7C
/* 802C2F3C  20 1F 01 90 */	subfic r0, r31, 0x190
/* 802C2F40  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C2F44  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C2F48  3C 00 43 30 */	lis r0, 0x4330
/* 802C2F4C  90 01 00 08 */	stw r0, 8(r1)
/* 802C2F50  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C2F54  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C2F58  C0 42 C2 34 */	lfs f2, lit_3717(r2)
/* 802C2F5C  C0 62 C2 90 */	lfs f3, lit_4944(r2)
/* 802C2F60  C0 82 C2 40 */	lfs f4, lit_3720(r2)
/* 802C2F64  C0 A2 C2 1C */	lfs f5, lit_3668(r2)
/* 802C2F68  FC C0 F0 90 */	fmr f6, f30
/* 802C2F6C  38 60 00 00 */	li r3, 0
/* 802C2F70  4B FE 67 85 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C2F74  FF E0 08 90 */	fmr f31, f1
/* 802C2F78  48 00 00 78 */	b lbl_802C2FF0
lbl_802C2F7C:
/* 802C2F7C  20 1F 00 64 */	subfic r0, r31, 0x64
/* 802C2F80  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C2F84  90 01 00 0C */	stw r0, 0xc(r1)
/* 802C2F88  3C 00 43 30 */	lis r0, 0x4330
/* 802C2F8C  90 01 00 08 */	stw r0, 8(r1)
/* 802C2F90  C8 01 00 08 */	lfd f0, 8(r1)
/* 802C2F94  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C2F98  C0 42 C2 34 */	lfs f2, lit_3717(r2)
/* 802C2F9C  C0 62 C2 48 */	lfs f3, lit_4091(r2)
/* 802C2FA0  C0 82 C2 40 */	lfs f4, lit_3720(r2)
/* 802C2FA4  FC A0 F0 90 */	fmr f5, f30
/* 802C2FA8  C0 C2 C2 94 */	lfs f6, lit_4945(r2)
/* 802C2FAC  38 60 00 00 */	li r3, 0
/* 802C2FB0  4B FE 67 45 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C2FB4  FF E0 08 90 */	fmr f31, f1
/* 802C2FB8  C8 22 C2 28 */	lfd f1, lit_3672(r2)
/* 802C2FBC  93 E1 00 14 */	stw r31, 0x14(r1)
/* 802C2FC0  3C 00 43 30 */	lis r0, 0x4330
/* 802C2FC4  90 01 00 10 */	stw r0, 0x10(r1)
/* 802C2FC8  C8 01 00 10 */	lfd f0, 0x10(r1)
/* 802C2FCC  EC 20 08 28 */	fsubs f1, f0, f1
/* 802C2FD0  C0 42 C2 48 */	lfs f2, lit_4091(r2)
/* 802C2FD4  C0 62 C2 0C */	lfs f3, lit_3664(r2)
/* 802C2FD8  C0 82 C2 40 */	lfs f4, lit_3720(r2)
/* 802C2FDC  FC A0 20 90 */	fmr f5, f4
/* 802C2FE0  C0 C2 C2 20 */	lfs f6, lit_3669(r2)
/* 802C2FE4  38 60 00 00 */	li r3, 0
/* 802C2FE8  4B FE 67 0D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802C2FEC  FF C0 08 90 */	fmr f30, f1
lbl_802C2FF0:
/* 802C2FF0  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C2FF4  38 63 00 48 */	addi r3, r3, 0x48
/* 802C2FF8  FC 20 F8 90 */	fmr f1, f31
/* 802C2FFC  38 80 00 00 */	li r4, 0
/* 802C3000  4B FD FE 0D */	bl movePitch__18JAISoundParamsMoveFfUl
/* 802C3004  80 7E 00 00 */	lwz r3, 0(r30)
/* 802C3008  38 63 00 48 */	addi r3, r3, 0x48
/* 802C300C  FC 20 F0 90 */	fmr f1, f30
/* 802C3010  38 80 00 00 */	li r4, 0
/* 802C3014  4B FD FD A1 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802C3018:
/* 802C3018  E3 E1 00 38 */	psq_l f31, 56(r1), 0, 0 /* qr0 */
/* 802C301C  CB E1 00 30 */	lfd f31, 0x30(r1)
/* 802C3020  E3 C1 00 28 */	psq_l f30, 40(r1), 0, 0 /* qr0 */
/* 802C3024  CB C1 00 20 */	lfd f30, 0x20(r1)
/* 802C3028  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802C302C  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802C3030  80 01 00 44 */	lwz r0, 0x44(r1)
/* 802C3034  7C 08 03 A6 */	mtlr r0
/* 802C3038  38 21 00 40 */	addi r1, r1, 0x40
/* 802C303C  4E 80 00 20 */	blr 
