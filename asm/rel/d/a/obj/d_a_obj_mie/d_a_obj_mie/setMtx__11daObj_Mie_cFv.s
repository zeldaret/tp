lbl_80C9540C:
/* 80C9540C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C95410  7C 08 02 A6 */	mflr r0
/* 80C95414  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C95418  93 E1 00 0C */	stw r31, 0xc(r1)
/* 80C9541C  7C 7F 1B 78 */	mr r31, r3
/* 80C95420  38 60 00 00 */	li r3, 0
/* 80C95424  88 1F 0A 40 */	lbz r0, 0xa40(r31)
/* 80C95428  28 00 00 00 */	cmplwi r0, 0
/* 80C9542C  41 82 00 14 */	beq lbl_80C95440
/* 80C95430  3C 60 80 C9 */	lis r3, srchPouyaa__11daObj_Mie_cFPvPv@ha /* 0x80C952F8@ha */
/* 80C95434  38 63 52 F8 */	addi r3, r3, srchPouyaa__11daObj_Mie_cFPvPv@l /* 0x80C952F8@l */
/* 80C95438  38 80 00 00 */	li r4, 0
/* 80C9543C  4B 38 43 BD */	bl fopAcIt_Judge__FPFPvPv_PvPv
lbl_80C95440:
/* 80C95440  28 03 00 00 */	cmplwi r3, 0
/* 80C95444  41 82 00 28 */	beq lbl_80C9546C
/* 80C95448  80 63 05 78 */	lwz r3, 0x578(r3)
/* 80C9544C  80 63 00 04 */	lwz r3, 4(r3)
/* 80C95450  80 63 00 84 */	lwz r3, 0x84(r3)
/* 80C95454  80 63 00 0C */	lwz r3, 0xc(r3)
/* 80C95458  38 63 00 C0 */	addi r3, r3, 0xc0
/* 80C9545C  3C 80 80 3E */	lis r4, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C95460  38 84 D4 70 */	addi r4, r4, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C95464  4B 6B 10 4D */	bl PSMTXCopy
/* 80C95468  48 00 00 2C */	b lbl_80C95494
lbl_80C9546C:
/* 80C9546C  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C95470  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C95474  C0 3F 04 D0 */	lfs f1, 0x4d0(r31)
/* 80C95478  C0 5F 04 D4 */	lfs f2, 0x4d4(r31)
/* 80C9547C  C0 7F 04 D8 */	lfs f3, 0x4d8(r31)
/* 80C95480  4B 6B 14 69 */	bl PSMTXTrans
/* 80C95484  38 7F 04 E4 */	addi r3, r31, 0x4e4
/* 80C95488  4B 37 7A BD */	bl ZXYrotM__14mDoMtx_stack_cFRC5csXyz
/* 80C9548C  38 7F 04 EC */	addi r3, r31, 0x4ec
/* 80C95490  4B 37 79 E1 */	bl scaleM__14mDoMtx_stack_cFRC4cXyz
lbl_80C95494:
/* 80C95494  3C 60 80 3E */	lis r3, now__14mDoMtx_stack_c@ha /* 0x803DD470@ha */
/* 80C95498  38 63 D4 70 */	addi r3, r3, now__14mDoMtx_stack_c@l /* 0x803DD470@l */
/* 80C9549C  80 9F 05 74 */	lwz r4, 0x574(r31)
/* 80C954A0  38 84 00 24 */	addi r4, r4, 0x24
/* 80C954A4  4B 6B 10 0D */	bl PSMTXCopy
/* 80C954A8  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 80C954AC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C954B0  7C 08 03 A6 */	mtlr r0
/* 80C954B4  38 21 00 10 */	addi r1, r1, 0x10
/* 80C954B8  4E 80 00 20 */	blr 
