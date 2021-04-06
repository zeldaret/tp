lbl_80B8A7F8:
/* 80B8A7F8  94 21 FF C0 */	stwu r1, -0x40(r1)
/* 80B8A7FC  7C 08 02 A6 */	mflr r0
/* 80B8A800  90 01 00 44 */	stw r0, 0x44(r1)
/* 80B8A804  93 E1 00 3C */	stw r31, 0x3c(r1)
/* 80B8A808  93 C1 00 38 */	stw r30, 0x38(r1)
/* 80B8A80C  7C 7E 1B 78 */	mr r30, r3
/* 80B8A810  3C 80 80 B9 */	lis r4, m__17daNpc_zrA_Param_c@ha /* 0x80B8C458@ha */
/* 80B8A814  3B E4 C4 58 */	addi r31, r4, m__17daNpc_zrA_Param_c@l /* 0x80B8C458@l */
/* 80B8A818  A0 03 14 E6 */	lhz r0, 0x14e6(r3)
/* 80B8A81C  2C 00 00 02 */	cmpwi r0, 2
/* 80B8A820  41 82 00 9C */	beq lbl_80B8A8BC
/* 80B8A824  40 80 01 DC */	bge lbl_80B8AA00
/* 80B8A828  2C 00 00 00 */	cmpwi r0, 0
/* 80B8A82C  41 82 00 0C */	beq lbl_80B8A838
/* 80B8A830  48 00 01 D0 */	b lbl_80B8AA00
/* 80B8A834  48 00 01 CC */	b lbl_80B8AA00
lbl_80B8A838:
/* 80B8A838  38 80 00 14 */	li r4, 0x14
/* 80B8A83C  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8A840  81 83 0B 44 */	lwz r12, 0xb44(r3)
/* 80B8A844  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8A848  7D 89 03 A6 */	mtctr r12
/* 80B8A84C  4E 80 04 21 */	bctrl 
/* 80B8A850  7F C3 F3 78 */	mr r3, r30
/* 80B8A854  38 80 00 21 */	li r4, 0x21
/* 80B8A858  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8A85C  38 A0 00 00 */	li r5, 0
/* 80B8A860  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B8A864  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8A868  7D 89 03 A6 */	mtctr r12
/* 80B8A86C  4E 80 04 21 */	bctrl 
/* 80B8A870  38 00 00 03 */	li r0, 3
/* 80B8A874  98 1E 15 94 */	stb r0, 0x1594(r30)
/* 80B8A878  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8A87C  D0 1E 15 44 */	stfs f0, 0x1544(r30)
/* 80B8A880  C0 1F 08 B0 */	lfs f0, 0x8b0(r31)
/* 80B8A884  D0 1E 15 48 */	stfs f0, 0x1548(r30)
/* 80B8A888  C0 1F 07 F4 */	lfs f0, 0x7f4(r31)
/* 80B8A88C  D0 1E 15 4C */	stfs f0, 0x154c(r30)
/* 80B8A890  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8A894  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8A898  A8 9E 08 F2 */	lha r4, 0x8f2(r30)
/* 80B8A89C  4B 48 1B 41 */	bl mDoMtx_YrotS__FPA4_fs
/* 80B8A8A0  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8A8A4  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8A8A8  38 9E 15 44 */	addi r4, r30, 0x1544
/* 80B8A8AC  7C 85 23 78 */	mr r5, r4
/* 80B8A8B0  4B 7B C4 BD */	bl PSMTXMultVec
/* 80B8A8B4  38 00 00 02 */	li r0, 2
/* 80B8A8B8  B0 1E 14 E6 */	sth r0, 0x14e6(r30)
lbl_80B8A8BC:
/* 80B8A8BC  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B8A8C0  38 81 00 0C */	addi r4, r1, 0xc
/* 80B8A8C4  4B 49 2F CD */	bl fopAcM_getWaterY__FPC4cXyzPf
/* 80B8A8C8  2C 03 00 00 */	cmpwi r3, 0
/* 80B8A8CC  41 82 01 14 */	beq lbl_80B8A9E0
/* 80B8A8D0  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B8A8D4  80 63 00 04 */	lwz r3, 4(r3)
/* 80B8A8D8  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80B8A8DC  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80B8A8E0  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80B8A8E4  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8A8E8  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8A8EC  4B 7B BB C5 */	bl PSMTXCopy
/* 80B8A8F0  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80B8A8F4  4B 48 25 7D */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B8A8F8  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B8A8FC  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B8A900  C0 43 00 0C */	lfs f2, 0xc(r3)
/* 80B8A904  D0 41 00 28 */	stfs f2, 0x28(r1)
/* 80B8A908  C0 23 00 1C */	lfs f1, 0x1c(r3)
/* 80B8A90C  D0 21 00 2C */	stfs f1, 0x2c(r1)
/* 80B8A910  C0 03 00 2C */	lfs f0, 0x2c(r3)
/* 80B8A914  D0 01 00 30 */	stfs f0, 0x30(r1)
/* 80B8A918  C0 61 00 0C */	lfs f3, 0xc(r1)
/* 80B8A91C  FC 01 18 40 */	fcmpo cr0, f1, f3
/* 80B8A920  4C 40 13 82 */	cror 2, 0, 2
/* 80B8A924  40 82 00 BC */	bne lbl_80B8A9E0
/* 80B8A928  D0 41 00 1C */	stfs f2, 0x1c(r1)
/* 80B8A92C  D0 21 00 20 */	stfs f1, 0x20(r1)
/* 80B8A930  D0 01 00 24 */	stfs f0, 0x24(r1)
/* 80B8A934  D0 61 00 20 */	stfs f3, 0x20(r1)
/* 80B8A938  38 61 00 1C */	addi r3, r1, 0x1c
/* 80B8A93C  C0 3F 07 88 */	lfs f1, 0x788(r31)
/* 80B8A940  38 80 00 00 */	li r4, 0
/* 80B8A944  4B 49 4F 39 */	bl fopKyM_createWpillar__FPC4cXyzfi
/* 80B8A948  3C 60 00 06 */	lis r3, 0x0006 /* 0x000600C4@ha */
/* 80B8A94C  38 03 00 C4 */	addi r0, r3, 0x00C4 /* 0x000600C4@l */
/* 80B8A950  90 01 00 08 */	stw r0, 8(r1)
/* 80B8A954  38 7E 0B 48 */	addi r3, r30, 0xb48
/* 80B8A958  38 81 00 08 */	addi r4, r1, 8
/* 80B8A95C  38 A0 00 00 */	li r5, 0
/* 80B8A960  38 C0 FF FF */	li r6, -1
/* 80B8A964  81 9E 0B 48 */	lwz r12, 0xb48(r30)
/* 80B8A968  81 8C 00 14 */	lwz r12, 0x14(r12)
/* 80B8A96C  7D 89 03 A6 */	mtctr r12
/* 80B8A970  4E 80 04 21 */	bctrl 
/* 80B8A974  7F C3 F3 78 */	mr r3, r30
/* 80B8A978  38 80 00 14 */	li r4, 0x14
/* 80B8A97C  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8A980  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B8A984  81 8C 00 34 */	lwz r12, 0x34(r12)
/* 80B8A988  7D 89 03 A6 */	mtctr r12
/* 80B8A98C  4E 80 04 21 */	bctrl 
/* 80B8A990  7F C3 F3 78 */	mr r3, r30
/* 80B8A994  38 80 00 22 */	li r4, 0x22
/* 80B8A998  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B8A99C  38 A0 00 00 */	li r5, 0
/* 80B8A9A0  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B8A9A4  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B8A9A8  7D 89 03 A6 */	mtctr r12
/* 80B8A9AC  4E 80 04 21 */	bctrl 
/* 80B8A9B0  3C 60 80 B9 */	lis r3, lit_11372@ha /* 0x80B8D8AC@ha */
/* 80B8A9B4  38 83 D8 AC */	addi r4, r3, lit_11372@l /* 0x80B8D8AC@l */
/* 80B8A9B8  80 64 00 00 */	lwz r3, 0(r4)
/* 80B8A9BC  80 04 00 04 */	lwz r0, 4(r4)
/* 80B8A9C0  90 61 00 10 */	stw r3, 0x10(r1)
/* 80B8A9C4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B8A9C8  80 04 00 08 */	lwz r0, 8(r4)
/* 80B8A9CC  90 01 00 18 */	stw r0, 0x18(r1)
/* 80B8A9D0  7F C3 F3 78 */	mr r3, r30
/* 80B8A9D4  38 81 00 10 */	addi r4, r1, 0x10
/* 80B8A9D8  4B FF 31 49 */	bl setAction__11daNpc_zrA_cFM11daNpc_zrA_cFPCvPvPv_i
/* 80B8A9DC  48 00 00 24 */	b lbl_80B8AA00
lbl_80B8A9E0:
/* 80B8A9E0  C0 3E 15 48 */	lfs f1, 0x1548(r30)
/* 80B8A9E4  C0 1F 07 CC */	lfs f0, 0x7cc(r31)
/* 80B8A9E8  EC 01 00 28 */	fsubs f0, f1, f0
/* 80B8A9EC  D0 1E 15 48 */	stfs f0, 0x1548(r30)
/* 80B8A9F0  38 7E 04 D0 */	addi r3, r30, 0x4d0
/* 80B8A9F4  38 9E 15 44 */	addi r4, r30, 0x1544
/* 80B8A9F8  7C 65 1B 78 */	mr r5, r3
/* 80B8A9FC  4B 7B C6 95 */	bl PSVECAdd
lbl_80B8AA00:
/* 80B8AA00  38 60 00 01 */	li r3, 1
/* 80B8AA04  83 E1 00 3C */	lwz r31, 0x3c(r1)
/* 80B8AA08  83 C1 00 38 */	lwz r30, 0x38(r1)
/* 80B8AA0C  80 01 00 44 */	lwz r0, 0x44(r1)
/* 80B8AA10  7C 08 03 A6 */	mtlr r0
/* 80B8AA14  38 21 00 40 */	addi r1, r1, 0x40
/* 80B8AA18  4E 80 00 20 */	blr 
