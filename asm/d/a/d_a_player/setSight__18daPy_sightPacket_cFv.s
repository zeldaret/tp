lbl_8015F2FC:
/* 8015F2FC  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8015F300  7C 08 02 A6 */	mflr r0
/* 8015F304  90 01 00 24 */	stw r0, 0x24(r1)
/* 8015F308  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8015F30C  7C 7F 1B 78 */	mr r31, r3
/* 8015F310  38 7F 00 08 */	addi r3, r31, 8
/* 8015F314  38 81 00 08 */	addi r4, r1, 8
/* 8015F318  4B EB 5F F9 */	bl mDoLib_project__FP3VecP3Vec
/* 8015F31C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8015F320  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8015F324  C0 21 00 08 */	lfs f1, 8(r1)
/* 8015F328  C0 41 00 0C */	lfs f2, 0xc(r1)
/* 8015F32C  C0 61 00 10 */	lfs f3, 0x10(r1)
/* 8015F330  48 1E 75 B9 */	bl PSMTXTrans
/* 8015F334  C0 22 9C 80 */	lfs f1, lit_4699(r2)
/* 8015F338  FC 40 08 90 */	fmr f2, f1
/* 8015F33C  FC 60 08 90 */	fmr f3, f1
/* 8015F340  4B EA DA F9 */	bl scaleM__14mDoMtx_stack_cFfff
/* 8015F344  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha
/* 8015F348  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l
/* 8015F34C  38 9F 00 14 */	addi r4, r31, 0x14
/* 8015F350  48 1E 71 61 */	bl PSMTXCopy
/* 8015F354  3C 60 80 40 */	lis r3, g_dComIfG_gameInfo@ha
/* 8015F358  38 63 61 C0 */	addi r3, r3, g_dComIfG_gameInfo@l
/* 8015F35C  38 63 5F 64 */	addi r3, r3, 0x5f64
/* 8015F360  38 83 02 3C */	addi r4, r3, 0x23c
/* 8015F364  38 A3 02 40 */	addi r5, r3, 0x240
/* 8015F368  7F E6 FB 78 */	mr r6, r31
/* 8015F36C  4B EF 74 29 */	bl set__12dDlst_list_cFRPP12dDlst_base_cRPP12dDlst_base_cP12dDlst_base_c
/* 8015F370  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8015F374  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8015F378  7C 08 03 A6 */	mtlr r0
/* 8015F37C  38 21 00 20 */	addi r1, r1, 0x20
/* 8015F380  4E 80 00 20 */	blr 
