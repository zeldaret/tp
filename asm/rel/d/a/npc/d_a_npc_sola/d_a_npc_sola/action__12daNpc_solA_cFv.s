lbl_80AED6D0:
/* 80AED6D0  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80AED6D4  7C 08 02 A6 */	mflr r0
/* 80AED6D8  90 01 00 24 */	stw r0, 0x24(r1)
/* 80AED6DC  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 80AED6E0  7C 7F 1B 78 */	mr r31, r3
/* 80AED6E4  38 7F 0F 84 */	addi r3, r31, 0xf84
/* 80AED6E8  4B 87 49 31 */	bl __ptmf_test
/* 80AED6EC  2C 03 00 00 */	cmpwi r3, 0
/* 80AED6F0  41 82 00 54 */	beq lbl_80AED744
/* 80AED6F4  38 7F 0F 90 */	addi r3, r31, 0xf90
/* 80AED6F8  38 9F 0F 84 */	addi r4, r31, 0xf84
/* 80AED6FC  4B 87 49 4D */	bl __ptmf_cmpr
/* 80AED700  2C 03 00 00 */	cmpwi r3, 0
/* 80AED704  40 82 00 1C */	bne lbl_80AED720
/* 80AED708  7F E3 FB 78 */	mr r3, r31
/* 80AED70C  38 80 00 00 */	li r4, 0
/* 80AED710  39 9F 0F 90 */	addi r12, r31, 0xf90
/* 80AED714  4B 87 49 71 */	bl __ptmf_scall
/* 80AED718  60 00 00 00 */	nop 
/* 80AED71C  48 00 00 28 */	b lbl_80AED744
lbl_80AED720:
/* 80AED720  80 7F 0F 84 */	lwz r3, 0xf84(r31)
/* 80AED724  80 1F 0F 88 */	lwz r0, 0xf88(r31)
/* 80AED728  90 61 00 08 */	stw r3, 8(r1)
/* 80AED72C  90 01 00 0C */	stw r0, 0xc(r1)
/* 80AED730  80 1F 0F 8C */	lwz r0, 0xf8c(r31)
/* 80AED734  90 01 00 10 */	stw r0, 0x10(r1)
/* 80AED738  7F E3 FB 78 */	mr r3, r31
/* 80AED73C  38 81 00 08 */	addi r4, r1, 8
/* 80AED740  48 00 03 FD */	bl setAction__12daNpc_solA_cFM12daNpc_solA_cFPCvPvPv_i
lbl_80AED744:
/* 80AED744  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 80AED748  80 01 00 24 */	lwz r0, 0x24(r1)
/* 80AED74C  7C 08 03 A6 */	mtlr r0
/* 80AED750  38 21 00 20 */	addi r1, r1, 0x20
/* 80AED754  4E 80 00 20 */	blr 
