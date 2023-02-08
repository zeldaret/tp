lbl_80B4A588:
/* 80B4A588  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B4A58C  7C 08 02 A6 */	mflr r0
/* 80B4A590  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B4A594  4B FF FA 45 */	bl CreateHeap__13daNpc_yamiT_cFv
/* 80B4A598  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B4A59C  7C 08 03 A6 */	mtlr r0
/* 80B4A5A0  38 21 00 10 */	addi r1, r1, 0x10
/* 80B4A5A4  4E 80 00 20 */	blr 
