lbl_8023DD90:
/* 8023DD90  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8023DD94  7C 08 02 A6 */	mflr r0
/* 8023DD98  90 01 00 14 */	stw r0, 0x14(r1)
/* 8023DD9C  80 63 00 34 */	lwz r3, 0x34(r3)
/* 8023DDA0  4B FF E0 95 */	bl arwAnimeInit__15dMsgScrnArrow_cFv
/* 8023DDA4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8023DDA8  7C 08 03 A6 */	mtlr r0
/* 8023DDAC  38 21 00 10 */	addi r1, r1, 0x10
/* 8023DDB0  4E 80 00 20 */	blr 
