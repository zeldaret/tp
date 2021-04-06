lbl_805A7514:
/* 805A7514  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A7518  7C 08 02 A6 */	mflr r0
/* 805A751C  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A7520  93 E1 00 0C */	stw r31, 0xc(r1)
/* 805A7524  7C 7F 1B 78 */	mr r31, r3
/* 805A7528  80 63 05 A0 */	lwz r3, 0x5a0(r3)
/* 805A752C  3C 03 00 01 */	addis r0, r3, 1
/* 805A7530  28 00 FF FF */	cmplwi r0, 0xffff
/* 805A7534  40 82 00 30 */	bne lbl_805A7564
/* 805A7538  3C 60 80 5A */	lis r3, s_s_sub__FPvPv@ha /* 0x805A6F78@ha */
/* 805A753C  38 63 6F 78 */	addi r3, r3, s_s_sub__FPvPv@l /* 0x805A6F78@l */
/* 805A7540  7F E4 FB 78 */	mr r4, r31
/* 805A7544  4B A7 9D F5 */	bl fpcEx_Search__FPFPvPv_PvPv
/* 805A7548  28 03 00 00 */	cmplwi r3, 0
/* 805A754C  41 82 00 18 */	beq lbl_805A7564
/* 805A7550  41 82 00 0C */	beq lbl_805A755C
/* 805A7554  80 03 00 04 */	lwz r0, 4(r3)
/* 805A7558  48 00 00 08 */	b lbl_805A7560
lbl_805A755C:
/* 805A755C  38 00 FF FF */	li r0, -1
lbl_805A7560:
/* 805A7560  90 1F 05 A0 */	stw r0, 0x5a0(r31)
lbl_805A7564:
/* 805A7564  7F E3 FB 78 */	mr r3, r31
/* 805A7568  48 00 00 35 */	bl event_proc_call__13daTagStatue_cFv
/* 805A756C  7F E3 FB 78 */	mr r3, r31
/* 805A7570  4B FF FA 91 */	bl setBaseMtx__13daTagStatue_cFv
/* 805A7574  80 7F 05 80 */	lwz r3, 0x580(r31)
/* 805A7578  28 03 00 00 */	cmplwi r3, 0
/* 805A757C  41 82 00 08 */	beq lbl_805A7584
/* 805A7580  4B A6 5E A9 */	bl play__14mDoExt_baseAnmFv
lbl_805A7584:
/* 805A7584  38 60 00 01 */	li r3, 1
/* 805A7588  83 E1 00 0C */	lwz r31, 0xc(r1)
/* 805A758C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A7590  7C 08 03 A6 */	mtlr r0
/* 805A7594  38 21 00 10 */	addi r1, r1, 0x10
/* 805A7598  4E 80 00 20 */	blr 
