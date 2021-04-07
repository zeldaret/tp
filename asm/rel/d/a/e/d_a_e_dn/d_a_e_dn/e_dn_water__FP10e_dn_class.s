lbl_804EA854:
/* 804EA854  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 804EA858  7C 08 02 A6 */	mflr r0
/* 804EA85C  90 01 00 44 */	stw r0, 0x44(r1)
/* 804EA860  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 804EA864  93 C1 00 38 */	stw r30, 0x38(r1)
/* 804EA868  7C 7F 1B 78 */	mr r31, r3
/* 804EA86C  3C 60 80 4F */	lis r3, lit_3789@ha /* 0x804EE8AC@ha */
/* 804EA870  3B C3 E8 AC */	addi r30, r3, lit_3789@l /* 0x804EE8AC@l */
/* 804EA874  80 7F 05 DC */	lwz r3, 0x5dc(r31)
/* 804EA878  80 63 00 04 */	lwz r3, 4(r3)
/* 804EA87C  80 63 00 84 */	lwz r3, 0x84(r3)
/* 804EA880  80 63 00 0C */	lwz r3, 0xc(r3)
/* 804EA884  38 63 00 60 */	addi r3, r3, 0x60
/* 804EA888  3C 80 80 45 */	lis r4, calc_mtx@ha /* 0x80450768@ha */
/* 804EA88C  38 84 07 68 */	addi r4, r4, calc_mtx@l /* 0x80450768@l */
/* 804EA890  80 84 00 00 */	lwz r4, 0(r4)
/* 804EA894  4B E5 BC 1D */	bl PSMTXCopy
/* 804EA898  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804EA89C  D0 01 00 20 */	stfs f0, 0x20(r1)
/* 804EA8A0  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 804EA8A4  D0 01 00 28 */	stfs f0, 0x28(r1)
/* 804EA8A8  38 61 00 20 */	addi r3, r1, 0x20
/* 804EA8AC  38 81 00 14 */	addi r4, r1, 0x14
/* 804EA8B0  4B D8 66 3D */	bl MtxPosition__FP4cXyzP4cXyz
/* 804EA8B4  38 00 00 0A */	li r0, 0xa
/* 804EA8B8  B0 1F 06 E8 */	sth r0, 0x6e8(r31)
/* 804EA8BC  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 804EA8C0  2C 00 00 0A */	cmpwi r0, 0xa
/* 804EA8C4  41 82 00 D4 */	beq lbl_804EA998
/* 804EA8C8  40 80 01 14 */	bge lbl_804EA9DC
/* 804EA8CC  2C 00 00 02 */	cmpwi r0, 2
/* 804EA8D0  40 80 01 0C */	bge lbl_804EA9DC
/* 804EA8D4  2C 00 00 00 */	cmpwi r0, 0
/* 804EA8D8  40 80 00 08 */	bge lbl_804EA8E0
/* 804EA8DC  48 00 01 00 */	b lbl_804EA9DC
lbl_804EA8E0:
/* 804EA8E0  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804EA8E4  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804EA8E8  88 1F 07 37 */	lbz r0, 0x737(r31)
/* 804EA8EC  7C 00 07 75 */	extsb. r0, r0
/* 804EA8F0  40 82 00 20 */	bne lbl_804EA910
/* 804EA8F4  7F E3 FB 78 */	mr r3, r31
/* 804EA8F8  38 80 00 13 */	li r4, 0x13
/* 804EA8FC  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804EA900  38 A0 00 02 */	li r5, 2
/* 804EA904  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804EA908  4B FF A9 C9 */	bl anm_init__FP10e_dn_classifUcf
/* 804EA90C  48 00 00 1C */	b lbl_804EA928
lbl_804EA910:
/* 804EA910  7F E3 FB 78 */	mr r3, r31
/* 804EA914  38 80 00 14 */	li r4, 0x14
/* 804EA918  C0 3E 00 70 */	lfs f1, 0x70(r30)
/* 804EA91C  38 A0 00 02 */	li r5, 2
/* 804EA920  C0 5E 00 08 */	lfs f2, 8(r30)
/* 804EA924  4B FF A9 AD */	bl anm_init__FP10e_dn_classifUcf
lbl_804EA928:
/* 804EA928  38 00 00 3C */	li r0, 0x3c
/* 804EA92C  B0 1F 06 E0 */	sth r0, 0x6e0(r31)
/* 804EA930  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804EA934  D0 1F 05 2C */	stfs f0, 0x52c(r31)
/* 804EA938  D0 1F 07 04 */	stfs f0, 0x704(r31)
/* 804EA93C  D0 1F 07 08 */	stfs f0, 0x708(r31)
/* 804EA940  C0 1F 04 D0 */	lfs f0, 0x4d0(r31)
/* 804EA944  D0 01 00 08 */	stfs f0, 8(r1)
/* 804EA948  C0 1F 04 D4 */	lfs f0, 0x4d4(r31)
/* 804EA94C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804EA950  C0 1F 04 D8 */	lfs f0, 0x4d8(r31)
/* 804EA954  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 804EA958  C0 1F 0A 5C */	lfs f0, 0xa5c(r31)
/* 804EA95C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 804EA960  A8 1F 05 B4 */	lha r0, 0x5b4(r31)
/* 804EA964  2C 00 00 00 */	cmpwi r0, 0
/* 804EA968  40 82 00 18 */	bne lbl_804EA980
/* 804EA96C  38 61 00 08 */	addi r3, r1, 8
/* 804EA970  C0 3E 00 74 */	lfs f1, 0x74(r30)
/* 804EA974  38 80 00 00 */	li r4, 0
/* 804EA978  4B B3 4F 05 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 804EA97C  48 00 00 10 */	b lbl_804EA98C
lbl_804EA980:
/* 804EA980  38 61 00 08 */	addi r3, r1, 8
/* 804EA984  C0 3E 00 08 */	lfs f1, 8(r30)
/* 804EA988  4B B3 4F 85 */	bl fopKyM_createMpillar__FPC4cXyzf
lbl_804EA98C:
/* 804EA98C  38 00 00 0A */	li r0, 0xa
/* 804EA990  B0 1F 05 B4 */	sth r0, 0x5b4(r31)
/* 804EA994  48 00 00 48 */	b lbl_804EA9DC
lbl_804EA998:
/* 804EA998  C0 1E 00 04 */	lfs f0, 4(r30)
/* 804EA99C  D0 1F 04 FC */	stfs f0, 0x4fc(r31)
/* 804EA9A0  38 7F 04 D4 */	addi r3, r31, 0x4d4
/* 804EA9A4  C0 3F 0A 5C */	lfs f1, 0xa5c(r31)
/* 804EA9A8  C0 5E 00 D8 */	lfs f2, 0xd8(r30)
/* 804EA9AC  C0 7E 00 7C */	lfs f3, 0x7c(r30)
/* 804EA9B0  4B D8 50 8D */	bl cLib_addCalc2__FPffff
/* 804EA9B4  38 7F 07 24 */	addi r3, r31, 0x724
/* 804EA9B8  38 80 C0 00 */	li r4, -16384
/* 804EA9BC  38 A0 00 04 */	li r5, 4
/* 804EA9C0  38 C0 04 00 */	li r6, 0x400
/* 804EA9C4  4B D8 5C 45 */	bl cLib_addCalcAngleS2__FPssss
/* 804EA9C8  A8 1F 06 E0 */	lha r0, 0x6e0(r31)
/* 804EA9CC  2C 00 00 00 */	cmpwi r0, 0
/* 804EA9D0  40 82 00 0C */	bne lbl_804EA9DC
/* 804EA9D4  7F E3 FB 78 */	mr r3, r31
/* 804EA9D8  4B FF A8 49 */	bl dn_disappear__FP10e_dn_class
lbl_804EA9DC:
/* 804EA9DC  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 804EA9E0  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 804EA9E4  80 01 00 44 */	lwz r0, 0x44(r1)
/* 804EA9E8  7C 08 03 A6 */	mtlr r0
/* 804EA9EC  38 21 00 40 */	addi r1, r1, 0x40
/* 804EA9F0  4E 80 00 20 */	blr 
