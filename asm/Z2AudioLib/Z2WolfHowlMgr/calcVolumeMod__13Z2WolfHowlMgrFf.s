lbl_802CABEC:
/* 802CABEC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802CABF0  7C 08 02 A6 */	mflr r0
/* 802CABF4  90 01 00 24 */	stw r0, 0x24(r1)
/* 802CABF8  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802CABFC  7C 7F 1B 78 */	mr r31, r3
/* 802CAC00  80 83 00 00 */	lwz r4, 0(r3)
/* 802CAC04  28 04 00 00 */	cmplwi r4, 0
/* 802CAC08  41 82 00 94 */	beq lbl_802CAC9C
/* 802CAC0C  80 7F 00 88 */	lwz r3, 0x88(r31)
/* 802CAC10  88 0D 83 0E */	lbz r0, struct_8045088C+0x2(r13)
/* 802CAC14  7C 03 00 40 */	cmplw r3, r0
/* 802CAC18  40 80 00 18 */	bge lbl_802CAC30
/* 802CAC1C  38 64 00 48 */	addi r3, r4, 0x48
/* 802CAC20  C0 22 C4 64 */	lfs f1, lit_3486(r2)
/* 802CAC24  38 80 00 00 */	li r4, 0
/* 802CAC28  4B FD 81 8D */	bl moveVolume__18JAISoundParamsMoveFfUl
/* 802CAC2C  48 00 00 70 */	b lbl_802CAC9C
lbl_802CAC30:
/* 802CAC30  C0 C2 C4 64 */	lfs f6, lit_3486(r2)
/* 802CAC34  88 1F 00 8C */	lbz r0, 0x8c(r31)
/* 802CAC38  28 00 00 00 */	cmplwi r0, 0
/* 802CAC3C  41 82 00 38 */	beq lbl_802CAC74
/* 802CAC40  C8 22 C4 70 */	lfd f1, lit_3530(r2)
/* 802CAC44  90 01 00 0C */	stw r0, 0xc(r1)
/* 802CAC48  3C 00 43 30 */	lis r0, 0x4330
/* 802CAC4C  90 01 00 08 */	stw r0, 8(r1)
/* 802CAC50  C8 01 00 08 */	lfd f0, 8(r1)
/* 802CAC54  EC 20 08 28 */	fsubs f1, f0, f1
/* 802CAC58  C0 42 C4 68 */	lfs f2, lit_3527(r2)
/* 802CAC5C  C0 62 C4 60 */	lfs f3, lit_3485(r2)
/* 802CAC60  C0 82 C4 6C */	lfs f4, lit_3528(r2)
/* 802CAC64  FC A0 18 90 */	fmr f5, f3
/* 802CAC68  38 60 00 01 */	li r3, 1
/* 802CAC6C  4B FD EA 89 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802CAC70  FC C0 08 90 */	fmr f6, f1
lbl_802CAC74:
/* 802CAC74  D0 DF 00 18 */	stfs f6, 0x18(r31)
/* 802CAC78  80 7F 00 00 */	lwz r3, 0(r31)
/* 802CAC7C  28 03 00 00 */	cmplwi r3, 0
/* 802CAC80  41 82 00 14 */	beq lbl_802CAC94
/* 802CAC84  38 63 00 48 */	addi r3, r3, 0x48
/* 802CAC88  C0 3F 00 18 */	lfs f1, 0x18(r31)
/* 802CAC8C  38 80 00 00 */	li r4, 0
/* 802CAC90  4B FD 81 25 */	bl moveVolume__18JAISoundParamsMoveFfUl
lbl_802CAC94:
/* 802CAC94  C0 1F 00 18 */	lfs f0, 0x18(r31)
/* 802CAC98  D0 1F 00 1C */	stfs f0, 0x1c(r31)
lbl_802CAC9C:
/* 802CAC9C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802CACA0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802CACA4  7C 08 03 A6 */	mtlr r0
/* 802CACA8  38 21 00 20 */	addi r1, r1, 0x20
/* 802CACAC  4E 80 00 20 */	blr 
