lbl_80B81918:
/* 80B81918  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B8191C  7C 08 02 A6 */	mflr r0
/* 80B81920  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B81924  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B81928  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B8192C  7C 7E 1B 78 */	mr r30, r3
/* 80B81930  3C 60 80 B9 */	lis r3, m__17daNpc_zrA_Param_c@ha
/* 80B81934  3B E3 C4 58 */	addi r31, r3, m__17daNpc_zrA_Param_c@l
/* 80B81938  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 80B8193C  4B 5C F2 80 */	b reverse__13daNpcF_Path_cFv
/* 80B81940  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B81944  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B81948  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B8194C  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B81950  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B81954  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B81958  38 7E 0C 18 */	addi r3, r30, 0xc18
/* 80B8195C  38 81 00 08 */	addi r4, r1, 8
/* 80B81960  4B FF 6E 0D */	bl setNextIdxDst__16daNpc_zrA_Path_cF4cXyz
/* 80B81964  C0 3E 15 24 */	lfs f1, 0x1524(r30)
/* 80B81968  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B8196C  D0 1E 15 44 */	stfs f0, 0x1544(r30)
/* 80B81970  D0 1E 15 48 */	stfs f0, 0x1548(r30)
/* 80B81974  D0 3E 15 4C */	stfs f1, 0x154c(r30)
/* 80B81978  38 7E 04 DC */	addi r3, r30, 0x4dc
/* 80B8197C  4B 48 B5 90 */	b ZXYrotS__14mDoMtx_stack_cFRC5csXyz
/* 80B81980  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 80B81984  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 80B81988  38 9E 15 44 */	addi r4, r30, 0x1544
/* 80B8198C  7C 85 23 78 */	mr r5, r4
/* 80B81990  4B 7C 53 DC */	b PSMTXMultVec
/* 80B81994  C0 1F 00 B0 */	lfs f0, 0xb0(r31)
/* 80B81998  D0 1E 15 24 */	stfs f0, 0x1524(r30)
/* 80B8199C  38 00 00 01 */	li r0, 1
/* 80B819A0  98 1E 15 91 */	stb r0, 0x1591(r30)
/* 80B819A4  38 00 00 02 */	li r0, 2
/* 80B819A8  98 1E 15 20 */	stb r0, 0x1520(r30)
/* 80B819AC  88 1E 15 76 */	lbz r0, 0x1576(r30)
/* 80B819B0  28 00 00 00 */	cmplwi r0, 0
/* 80B819B4  40 82 00 28 */	bne lbl_80B819DC
/* 80B819B8  7F C3 F3 78 */	mr r3, r30
/* 80B819BC  38 80 00 1F */	li r4, 0x1f
/* 80B819C0  C0 3F 00 D0 */	lfs f1, 0xd0(r31)
/* 80B819C4  38 A0 00 00 */	li r5, 0
/* 80B819C8  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B819CC  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B819D0  7D 89 03 A6 */	mtctr r12
/* 80B819D4  4E 80 04 21 */	bctrl 
/* 80B819D8  48 00 00 24 */	b lbl_80B819FC
lbl_80B819DC:
/* 80B819DC  7F C3 F3 78 */	mr r3, r30
/* 80B819E0  38 80 00 1F */	li r4, 0x1f
/* 80B819E4  C0 3F 07 98 */	lfs f1, 0x798(r31)
/* 80B819E8  38 A0 00 00 */	li r5, 0
/* 80B819EC  81 9E 0B 44 */	lwz r12, 0xb44(r30)
/* 80B819F0  81 8C 00 3C */	lwz r12, 0x3c(r12)
/* 80B819F4  7D 89 03 A6 */	mtctr r12
/* 80B819F8  4E 80 04 21 */	bctrl 
lbl_80B819FC:
/* 80B819FC  38 60 00 01 */	li r3, 1
/* 80B81A00  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B81A04  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B81A08  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B81A0C  7C 08 03 A6 */	mtlr r0
/* 80B81A10  38 21 00 20 */	addi r1, r1, 0x20
/* 80B81A14  4E 80 00 20 */	blr 
