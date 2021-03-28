lbl_8054A8F4:
/* 8054A8F4  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054A8F8  7C 08 02 A6 */	mflr r0
/* 8054A8FC  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054A900  4B CE DB 40 */	b getSelectCursorPos__12dMsgObject_cFv
/* 8054A904  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054A908  7C 08 03 A6 */	mtlr r0
/* 8054A90C  38 21 00 10 */	addi r1, r1, 0x10
/* 8054A910  4E 80 00 20 */	blr 
