lbl_8070FD40:
/* 8070FD40  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 8070FD44  7C 08 02 A6 */	mflr r0
/* 8070FD48  90 01 00 44 */	stw r0, 0x44(r1)
/* 8070FD4C  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 8070FD50  93 C1 00 38 */	stw r30, 0x38(r1)
/* 8070FD54  7C 7F 1B 78 */	mr r31, r3
/* 8070FD58  3C 60 80 71 */	lis r3, lit_3828@ha
/* 8070FD5C  3B C3 39 74 */	addi r30, r3, lit_3828@l
/* 8070FD60  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 8070FD64  80 63 00 04 */	lwz r3, 4(r3)
/* 8070FD68  80 63 00 84 */	lwz r3, 0x84(r3)
/* 8070FD6C  80 63 00 0C */	lwz r3, 0xc(r3)
/* 8070FD70  38 63 00 60 */	addi r3, r3, 0x60
/* 8070FD74  3C 80 80 45 */	lis r4, calc_mtx@ha
/* 8070FD78  38 84 07 68 */	addi r4, r4, calc_mtx@l
/* 8070FD7C  80 84 00 00 */	lwz r4, 0(r4)
/* 8070FD80  4B C3 67 30 */	b PSMTXCopy
/* 8070FD84  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8070FD88  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 8070FD8C  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 8070FD90  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 8070FD94  38 61 00 20 */	addi r3, r1, 0x20
/* 8070FD98  38 81 00 14 */	addi r4, r1, 0x14
/* 8070FD9C  4B B6 11 50 */	b MtxPosition__FP4cXyzP4cXyz
/* 8070FDA0  38 00 00 0A */	li r0, 0xa
/* 8070FDA4  B0 1F 06 C8 */	sth r0, 0x6c8(r31)
/* 8070FDA8  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 8070FDAC  2C 00 00 0A */	cmpwi r0, 0xa
/* 8070FDB0  41 82 00 D4 */	beq lbl_8070FE84
/* 8070FDB4  40 80 01 14 */	bge lbl_8070FEC8
/* 8070FDB8  2C 00 00 02 */	cmpwi r0, 2
/* 8070FDBC  40 80 01 0C */	bge lbl_8070FEC8
/* 8070FDC0  2C 00 00 00 */	cmpwi r0, 0
/* 8070FDC4  40 80 00 08 */	bge lbl_8070FDCC
/* 8070FDC8  48 00 01 00 */	b lbl_8070FEC8
lbl_8070FDCC:
/* 8070FDCC  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8070FDD0  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8070FDD4  88 1F 07 17 */	lbz r0, 0x717(r31)
/* 8070FDD8  7C 00 07 75 */	extsb. r0, r0
/* 8070FDDC  40 82 00 20 */	bne lbl_8070FDFC
/* 8070FDE0  7F E3 FB 78 */	mr r3, r31
/* 8070FDE4  38 80 00 13 */	li r4, 0x13
/* 8070FDE8  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8070FDEC  38 A0 00 02 */	li r5, 2
/* 8070FDF0  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070FDF4  4B FF AA 39 */	bl anm_init__FP10e_mf_classifUcf
/* 8070FDF8  48 00 00 1C */	b lbl_8070FE14
lbl_8070FDFC:
/* 8070FDFC  7F E3 FB 78 */	mr r3, r31
/* 8070FE00  38 80 00 14 */	li r4, 0x14
/* 8070FE04  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 8070FE08  38 A0 00 02 */	li r5, 2
/* 8070FE0C  C0 5E 00 08 */	lfs f2, 8(r30)
/* 8070FE10  4B FF AA 1D */	bl anm_init__FP10e_mf_classifUcf
lbl_8070FE14:
/* 8070FE14  38 00 00 3C */	li r0, 0x3c
/* 8070FE18  B0 1F 06 C0 */	sth r0, 0x6c0(r31)
/* 8070FE1C  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8070FE20  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 8070FE24  D0 1F 06 E4 */	stfs f0, 0x6e4(r31)
/* 8070FE28  D0 1F 06 E8 */	stfs f0, 0x6e8(r31)
/* 8070FE2C  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 8070FE30  D0 01 00 08 */	stfs f0, 8(r1)
/* 8070FE34  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 8070FE38  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8070FE3C  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 8070FE40  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 8070FE44  C0 1F 0A 3C */	lfs f0, 0xa3c(r31)
/* 8070FE48  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 8070FE4C  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 8070FE50  2C 00 00 00 */	cmpwi r0, 0
/* 8070FE54  40 82 00 18 */	bne lbl_8070FE6C
/* 8070FE58  38 61 00 08 */	addi r3, r1, 8
/* 8070FE5C  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 8070FE60  38 80 00 00 */	li r4, 0
/* 8070FE64  4B 90 FA 18 */	b fopKyM_createWpillar__FPC4cXyzfi
/* 8070FE68  48 00 00 10 */	b lbl_8070FE78
lbl_8070FE6C:
/* 8070FE6C  38 61 00 08 */	addi r3, r1, 8
/* 8070FE70  C0 3E 00 08 */	lfs f1, 8(r30)
/* 8070FE74  4B 90 FA 98 */	b fopKyM_createMpillar__FPC4cXyzf
lbl_8070FE78:
/* 8070FE78  38 00 00 0A */	li r0, 0xa
/* 8070FE7C  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 8070FE80  48 00 00 48 */	b lbl_8070FEC8
lbl_8070FE84:
/* 8070FE84  C0 1E 00 04 */	lfs f0, 4(r30)
/* 8070FE88  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 8070FE8C  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 8070FE90  C0 3F 0A 3C */	lfs f1, 0xa3c(r31)
/* 8070FE94  C0 5E 00 D0 */	lfs f2, 0xd0(r30)
/* 8070FE98  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 8070FE9C  4B B5 FB A0 */	b cLib_addCalc2__FPffff
/* 8070FEA0  38 7F 07 04 */	addi r3, r31, 0x704
/* 8070FEA4  38 80 C0 00 */	li r4, -16384
/* 8070FEA8  38 A0 00 04 */	li r5, 4
/* 8070FEAC  38 C0 04 00 */	li r6, 0x400
/* 8070FEB0  4B B6 07 58 */	b cLib_addCalcAngleS2__FPssss
/* 8070FEB4  A8 1F 06 C0 */	lha r0, 0x6c0(r31)
/* 8070FEB8  2C 00 00 00 */	cmpwi r0, 0
/* 8070FEBC  40 82 00 0C */	bne lbl_8070FEC8
/* 8070FEC0  7F E3 FB 78 */	mr r3, r31
/* 8070FEC4  4B FF A8 B9 */	bl mf_disappear__FP10e_mf_class
lbl_8070FEC8:
/* 8070FEC8  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 8070FECC  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 8070FED0  80 01 00 44 */	lwz r0, 0x44(r1)
/* 8070FED4  7C 08 03 A6 */	mtlr r0
/* 8070FED8  38 21 00 40 */	addi r1, r1, 0x40
/* 8070FEDC  4E 80 00 20 */	blr 
