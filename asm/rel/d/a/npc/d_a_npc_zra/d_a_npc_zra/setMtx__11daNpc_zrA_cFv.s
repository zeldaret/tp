lbl_80B7B91C:
/* 80B7B91C  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80B7B920  7C 08 02 A6 */	mflr r0
/* 80B7B924  90 01 00 24 */	stw r0, 0x24(r1)
/* 80B7B928  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80B7B92C  93 C1 00 18 */	stw r30, 0x18(r1)
/* 80B7B930  7C 7E 1B 78 */	mr r30, r3
/* 80B7B934  80 63 05 68 */	lwz r3, 0x568(r3)
/* 80B7B938  83 E3 00 04 */	lwz r31, 4(r3)
/* 80B7B93C  C0 1E 04 D0 */	lfs f0, 0x4d0(r30)
/* 80B7B940  D0 01 00 08 */	stfs f0, 8(r1)
/* 80B7B944  C0 1E 04 D4 */	lfs f0, 0x4d4(r30)
/* 80B7B948  D0 01 00 0C */	stfs f0, 0xc(r1)
/* 80B7B94C  C0 1E 04 D8 */	lfs f0, 0x4d8(r30)
/* 80B7B950  D0 01 00 10 */	stfs f0, 0x10(r1)
/* 80B7B954  38 61 00 08 */	addi r3, r1, 8
/* 80B7B958  38 9E 15 60 */	addi r4, r30, 0x1560
/* 80B7B95C  7C 65 1B 78 */	mr r5, r3
/* 80B7B960  4B 7C B7 31 */	bl PSVECAdd
/* 80B7B964  38 61 00 08 */	addi r3, r1, 8
/* 80B7B968  4B 49 13 FD */	bl transS__14mDoMtx_stack_cFRC4cXyz
/* 80B7B96C  38 7E 08 F0 */	addi r3, r30, 0x8f0
/* 80B7B970  4B 49 15 D5 */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80B7B974  38 7E 04 EC */	addi r3, r30, 0x4ec
/* 80B7B978  4B 49 14 F9 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
/* 80B7B97C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80B7B980  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80B7B984  38 9F 00 24 */	addi r4, r31, 0x24
/* 80B7B988  4B 7C AB 29 */	bl PSMTXCopy
/* 80B7B98C  93 DF 00 14 */	stw r30, 0x14(r31)
/* 80B7B990  80 1E 09 9C */	lwz r0, 0x99c(r30)
/* 80B7B994  54 00 05 EF */	rlwinm. r0, r0, 0, 0x17, 0x17
/* 80B7B998  41 82 00 1C */	beq lbl_80B7B9B4
/* 80B7B99C  C0 1E 05 7C */	lfs f0, 0x57c(r30)
/* 80B7B9A0  80 7E 05 80 */	lwz r3, 0x580(r30)
/* 80B7B9A4  D0 03 00 08 */	stfs f0, 8(r3)
/* 80B7B9A8  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B7B9AC  4B 49 58 41 */	bl modelCalc__16mDoExt_McaMorfSOFv
/* 80B7B9B0  48 00 00 0C */	b lbl_80B7B9BC
lbl_80B7B9B4:
/* 80B7B9B4  80 7E 05 68 */	lwz r3, 0x568(r30)
/* 80B7B9B8  4B 49 58 35 */	bl modelCalc__16mDoExt_McaMorfSOFv
lbl_80B7B9BC:
/* 80B7B9BC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80B7B9C0  83 C1 00 18 */	lwz r30, 0x18(r1)
/* 80B7B9C4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80B7B9C8  7C 08 03 A6 */	mtlr r0
/* 80B7B9CC  38 21 00 20 */	addi r1, r1, 0x20
/* 80B7B9D0  4E 80 00 20 */	blr 
