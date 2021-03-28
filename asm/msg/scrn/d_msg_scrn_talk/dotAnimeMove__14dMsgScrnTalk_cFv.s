lbl_8024815C:
/* 8024815C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80248160  7C 08 02 A6 */	mflr r0
/* 80248164  90 01 00 14 */	stw r0, 0x14(r1)
/* 80248168  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 8024816C  4B FF 3E A5 */	bl dotAnimeMove__15dMsgScrnArrow_cFv
/* 80248170  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80248174  7C 08 03 A6 */	mtlr r0
/* 80248178  38 21 00 10 */	addi r1, r1, 0x10
/* 8024817C  4E 80 00 20 */	blr 
