lbl_80CF692C:
/* 80CF692C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF6930  7C 08 02 A6 */	mflr r0
/* 80CF6934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF6938  7C 64 1B 78 */	mr r4, r3
/* 80CF693C  3C 60 80 CF */	lis r3, s_ballA_sub__FPvPv@ha /* 0x80CF5C24@ha */
/* 80CF6940  38 63 5C 24 */	addi r3, r3, s_ballA_sub__FPvPv@l /* 0x80CF5C24@l */
/* 80CF6944  4B 32 A9 F5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 80CF6948  28 03 00 00 */	cmplwi r3, 0
/* 80CF694C  41 82 00 08 */	beq lbl_80CF6954
/* 80CF6950  4B 32 33 2D */	bl fopAcM_delete__FP10fopAc_ac_c
lbl_80CF6954:
/* 80CF6954  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF6958  7C 08 03 A6 */	mtlr r0
/* 80CF695C  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF6960  4E 80 00 20 */	blr 
