lbl_80D5FDF0:
/* 80D5FDF0  94 21 FF D0 */	stwu r1, -0x30(r1)
/* 80D5FDF4  7C 08 02 A6 */	mflr r0
/* 80D5FDF8  90 01 00 34 */	stw r0, 0x34(r1)
/* 80D5FDFC  93 E1 00 2C */	stw r31, 0x2c(r1)
/* 80D5FE00  7C 7F 1B 78 */	mr r31, r3
/* 80D5FE04  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 80D5FE08  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 80D5FE0C  80 83 5D AC */	lwz r4, 0x5dac(r3)
/* 80D5FE10  28 04 00 00 */	cmplwi r4, 0
/* 80D5FE14  40 82 00 0C */	bne lbl_80D5FE20
/* 80D5FE18  38 60 00 00 */	li r3, 0
/* 80D5FE1C  48 00 00 BC */	b lbl_80D5FED8
lbl_80D5FE20:
/* 80D5FE20  38 61 00 08 */	addi r3, r1, 8
/* 80D5FE24  38 84 04 D0 */	addi r4, r4, 0x4d0
/* 80D5FE28  38 BF 04 D0 */	addi r5, r31, 0x4d0
/* 80D5FE2C  4B 50 6D 08 */	b __mi__4cXyzCFRC3Vec
/* 80D5FE30  C0 01 00 08 */	lfs f0, 8(r1)
/* 80D5FE34  D0 01 00 14 */	stfs f0, 0x14(r1)
/* 80D5FE38  C0 01 00 0C */	lfs f0, 0xc(r1)
/* 80D5FE3C  D0 01 00 18 */	stfs f0, 0x18(r1)
/* 80D5FE40  C0 01 00 10 */	lfs f0, 0x10(r1)
/* 80D5FE44  D0 01 00 1C */	stfs f0, 0x1c(r1)
/* 80D5FE48  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D5FE4C  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D5FE50  A8 1F 04 DE */	lha r0, 0x4de(r31)
/* 80D5FE54  7C 00 00 D0 */	neg r0, r0
/* 80D5FE58  7C 04 07 34 */	extsh r4, r0
/* 80D5FE5C  4B 2A C5 80 */	b mDoMtx_YrotS__FPA4_fs
/* 80D5FE60  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80D5FE64  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80D5FE68  38 81 00 14 */	addi r4, r1, 0x14
/* 80D5FE6C  7C 85 23 78 */	mr r5, r4
/* 80D5FE70  4B 5E 6E FC */	b PSMTXMultVec
/* 80D5FE74  3C 60 80 D6 */	lis r3, lit_3853@ha
/* 80D5FE78  C0 03 FF B0 */	lfs f0, lit_3853@l(r3)
/* 80D5FE7C  C0 21 00 18 */	lfs f1, 0x18(r1)
/* 80D5FE80  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D5FE84  40 80 00 50 */	bge lbl_80D5FED4
/* 80D5FE88  C0 1F 05 70 */	lfs f0, 0x570(r31)
/* 80D5FE8C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D5FE90  40 81 00 44 */	ble lbl_80D5FED4
/* 80D5FE94  C0 1F 05 6C */	lfs f0, 0x56c(r31)
/* 80D5FE98  C0 21 00 14 */	lfs f1, 0x14(r1)
/* 80D5FE9C  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D5FEA0  40 81 00 34 */	ble lbl_80D5FED4
/* 80D5FEA4  C0 7F 05 74 */	lfs f3, 0x574(r31)
/* 80D5FEA8  C0 41 00 1C */	lfs f2, 0x1c(r1)
/* 80D5FEAC  FC 03 10 40 */	fcmpo cr0, f3, f2
/* 80D5FEB0  40 81 00 24 */	ble lbl_80D5FED4
/* 80D5FEB4  FC 00 00 50 */	fneg f0, f0
/* 80D5FEB8  FC 00 08 40 */	fcmpo cr0, f0, f1
/* 80D5FEBC  40 80 00 18 */	bge lbl_80D5FED4
/* 80D5FEC0  FC 00 18 50 */	fneg f0, f3
/* 80D5FEC4  FC 00 10 40 */	fcmpo cr0, f0, f2
/* 80D5FEC8  40 80 00 0C */	bge lbl_80D5FED4
/* 80D5FECC  38 60 00 01 */	li r3, 1
/* 80D5FED0  48 00 00 08 */	b lbl_80D5FED8
lbl_80D5FED4:
/* 80D5FED4  38 60 00 00 */	li r3, 0
lbl_80D5FED8:
/* 80D5FED8  83 E1 00 2C */	lwz r31, 0x2c(r1)
/* 80D5FEDC  80 01 00 34 */	lwz r0, 0x34(r1)
/* 80D5FEE0  7C 08 03 A6 */	mtlr r0
/* 80D5FEE4  38 21 00 30 */	addi r1, r1, 0x30
/* 80D5FEE8  4E 80 00 20 */	blr 
