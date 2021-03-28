lbl_8022E960:
/* 8022E960  94 21 FF E0 */	stwu r1, -0x20(r1)
/* 8022E964  7C 08 02 A6 */	mflr r0
/* 8022E968  90 01 00 24 */	stw r0, 0x24(r1)
/* 8022E96C  93 E1 00 1C */	stw r31, 0x1c(r1)
/* 8022E970  7C 7F 1B 78 */	mr r31, r3
/* 8022E974  7C 80 23 78 */	mr r0, r4
/* 8022E978  38 61 00 08 */	addi r3, r1, 8
/* 8022E97C  3C 80 80 3A */	lis r4, d_msg_d_msg_class__stringBase0@ha
/* 8022E980  38 84 96 10 */	addi r4, r4, d_msg_d_msg_class__stringBase0@l
/* 8022E984  38 84 00 10 */	addi r4, r4, 0x10
/* 8022E988  7C 05 07 34 */	extsh r5, r0
/* 8022E98C  4C C6 31 82 */	crclr 6
/* 8022E990  48 13 7B 4D */	bl sprintf
/* 8022E994  7F E3 FB 78 */	mr r3, r31
/* 8022E998  38 81 00 08 */	addi r4, r1, 8
/* 8022E99C  38 A0 00 00 */	li r5, 0
/* 8022E9A0  38 C0 00 01 */	li r6, 1
/* 8022E9A4  38 E0 00 00 */	li r7, 0
/* 8022E9A8  48 00 05 59 */	bl do_strcat__28jmessage_tRenderingProcessorFPcbbb
/* 8022E9AC  83 E1 00 1C */	lwz r31, 0x1c(r1)
/* 8022E9B0  80 01 00 24 */	lwz r0, 0x24(r1)
/* 8022E9B4  7C 08 03 A6 */	mtlr r0
/* 8022E9B8  38 21 00 20 */	addi r1, r1, 0x20
/* 8022E9BC  4E 80 00 20 */	blr 
