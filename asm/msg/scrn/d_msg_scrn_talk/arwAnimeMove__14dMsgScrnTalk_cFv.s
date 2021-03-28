lbl_80248114:
/* 80248114  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80248118  7C 08 02 A6 */	mflr r0
/* 8024811C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80248120  80 63 00 C8 */	lwz r3, 0xc8(r3)
/* 80248124  4B FF 3D 6D */	bl arwAnimeMove__15dMsgScrnArrow_cFv
/* 80248128  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8024812C  7C 08 03 A6 */	mtlr r0
/* 80248130  38 21 00 10 */	addi r1, r1, 0x10
/* 80248134  4E 80 00 20 */	blr 
