lbl_80CF6964:
/* 80CF6964  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6968  7C 08 02 A6 */	mflr r0
/* 80CF696C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6970  7C 64 1B 78 */	mr r4, r3
/* 80CF6974  3C 60 80 CF */	lis r3, s_ballB_sub__FPvPv@ha
/* 80CF6978  38 63 5C 7C */	addi r3, r3, s_ballB_sub__FPvPv@l
/* 80CF697C  4B 32 A9 BC */	b fpcEx_Search__FPFPvPv_PvPv
/* 80CF6980  28 03 00 00 */	cmplwi r3, 0
/* 80CF6984  41 82 00 08 */	beq lbl_80CF698C
/* 80CF6988  4B 32 32 F4 */	b fopAcM_delete__FP10fopAc_ac_c
lbl_80CF698C:
/* 80CF698C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6990  7C 08 03 A6 */	mtlr r0
/* 80CF6994  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6998  4E 80 00 20 */	blr 
