lbl_802BDA44:
/* 802BDA44  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 802BDA48  7C 08 02 A6 */	mflr r0
/* 802BDA4C  90 01 00 24 */	stw r0, 0x24(r1)
/* 802BDA50  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802BDA54  93 C1 00 18 */	stw r30, 0x18(r1)
/* 802BDA58  7C 7E 1B 78 */	mr r30, r3
/* 802BDA5C  7C BF 2B 78 */	mr r31, r5
/* 802BDA60  80 64 00 00 */	lwz r3, 0(r4)
/* 802BDA64  80 04 00 04 */	lwz r0, 4(r4)
/* 802BDA68  90 61 00 08 */	stw r3, 8(r1)
/* 802BDA6C  90 01 00 0C */	stw r0, 0xc(r1)
/* 802BDA70  80 04 00 08 */	lwz r0, 8(r4)
/* 802BDA74  90 01 00 10 */	stw r0, 0x10(r1)
/* 802BDA78  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BDA7C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 802BDA80  38 61 00 08 */	addi r3, r1, 8
/* 802BDA84  48 08 96 CD */	bl PSVECMag
/* 802BDA88  C0 02 C0 C0 */	lfs f0, lit_1002(r2)
/* 802BDA8C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDA90  40 80 00 0C */	bge lbl_802BDA9C
/* 802BDA94  C0 22 C0 A8 */	lfs f1, lit_895(r2)
/* 802BDA98  48 00 00 94 */	b lbl_802BDB2C
lbl_802BDA9C:
/* 802BDA9C  C0 C2 C0 A8 */	lfs f6, lit_895(r2)
/* 802BDAA0  C0 5E 00 64 */	lfs f2, 0x64(r30)
/* 802BDAA4  C0 01 00 08 */	lfs f0, 8(r1)
/* 802BDAA8  EC 00 08 24 */	fdivs f0, f0, f1
/* 802BDAAC  EC 02 00 32 */	fmuls f0, f2, f0
/* 802BDAB0  EC 26 00 2A */	fadds f1, f6, f0
/* 802BDAB4  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 802BDAB8  C0 42 C0 A0 */	lfs f2, lit_848(r2)
/* 802BDABC  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 802BDAC0  4C 40 13 82 */	cror 2, 0, 2
/* 802BDAC4  40 82 00 44 */	bne lbl_802BDB08
/* 802BDAC8  1C 1F 00 74 */	mulli r0, r31, 0x74
/* 802BDACC  7C 7E 02 14 */	add r3, r30, r0
/* 802BDAD0  C0 83 01 88 */	lfs f4, 0x188(r3)
/* 802BDAD4  FC 01 30 40 */	fcmpo cr0, f1, f6
/* 802BDAD8  40 80 00 18 */	bge lbl_802BDAF0
/* 802BDADC  FC 60 30 90 */	fmr f3, f6
/* 802BDAE0  FC A0 10 90 */	fmr f5, f2
/* 802BDAE4  38 60 00 01 */	li r3, 1
/* 802BDAE8  4B FE BC 0D */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
/* 802BDAEC  48 00 00 1C */	b lbl_802BDB08
lbl_802BDAF0:
/* 802BDAF0  FC 40 30 90 */	fmr f2, f6
/* 802BDAF4  C0 62 C0 A4 */	lfs f3, lit_894(r2)
/* 802BDAF8  FC A0 30 90 */	fmr f5, f6
/* 802BDAFC  FC C0 18 90 */	fmr f6, f3
/* 802BDB00  38 60 00 00 */	li r3, 0
/* 802BDB04  4B FE BB F1 */	bl getParamByExp__6Z2CalcFffffffQ26Z2Calc9CurveSign
lbl_802BDB08:
/* 802BDB08  C0 02 C0 A4 */	lfs f0, lit_894(r2)
/* 802BDB0C  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDB10  40 81 00 0C */	ble lbl_802BDB1C
/* 802BDB14  FC 20 00 90 */	fmr f1, f0
/* 802BDB18  48 00 00 14 */	b lbl_802BDB2C
lbl_802BDB1C:
/* 802BDB1C  C0 02 C0 A0 */	lfs f0, lit_848(r2)
/* 802BDB20  FC 01 00 40 */	fcmpo cr0, f1, f0
/* 802BDB24  40 80 00 08 */	bge lbl_802BDB2C
/* 802BDB28  FC 20 00 90 */	fmr f1, f0
lbl_802BDB2C:
/* 802BDB2C  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802BDB30  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 802BDB34  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802BDB38  7C 08 03 A6 */	mtlr r0
/* 802BDB3C  38 21 00 20 */	addi r1, r1, 0x20
/* 802BDB40  4E 80 00 20 */	blr 
