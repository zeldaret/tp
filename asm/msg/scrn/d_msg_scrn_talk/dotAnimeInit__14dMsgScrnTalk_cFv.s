lbl_80248138:
/* 80248138  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8024813C  7C 08 02 A6 */	mflr r0
/* 80248140  90 01 00 14 */	stw r0, 0x14(r1)
/* 80248144  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 80248148  4B FF 3E 7D */	bl dotAnimeInit__15dMsgScrnArrow_cFv
/* 8024814C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80248150  7C 08 03 A6 */	mtlr r0
/* 80248154  38 21 00 10 */	addi r1, r1, 0x10
/* 80248158  4E 80 00 20 */	blr 
