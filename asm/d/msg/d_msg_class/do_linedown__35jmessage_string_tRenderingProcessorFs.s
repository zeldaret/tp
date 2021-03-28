lbl_80232690:
/* 80232690  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 80232694  7C 08 02 A6 */	mflr r0
/* 80232698  90 01 00 24 */	stw r0, 0x24(r1)
/* 8023269C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 802326A0  7C 7F 1B 78 */	mr r31, r3
/* 802326A4  7C 80 23 78 */	mr r0, r4
/* 802326A8  38 61 00 08 */	addi r3, r1, 8
/* 802326AC  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha
/* 802326B0  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l
/* 802326B4  38 84 00 10 */	addi r4, r4, 0x10
/* 802326B8  7C 05 07 34 */	extsh r5, r0
/* 802326BC  4C C6 31 82 */	crclr 6
/* 802326C0  48 13 3E 1D */	bl sprintf
/* 802326C4  7F E3 FB 78 */	mr r3, r31
/* 802326C8  38 81 00 08 */	addi r4, r1, 8
/* 802326CC  4B FF F9 79 */	bl do_strcat__35jmessage_string_tRenderingProcessorFPc
/* 802326D0  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 802326D4  80 01 00 24 */	lwz r0, 0x24(r1)
/* 802326D8  7C 08 03 A6 */	mtlr r0
/* 802326DC  38 21 00 20 */	addi r1, r1, 0x20
/* 802326E0  4E 80 00 20 */	blr 
