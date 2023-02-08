lbl_80B540F0:
/* 80B540F0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B540F4  7C 08 02 A6 */	mflr r0
/* 80B540F8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B540FC  4B 5F 44 31 */	bl execute__8daNpcT_cFv
/* 80B54100  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B54104  7C 08 03 A6 */	mtlr r0
/* 80B54108  38 21 00 10 */	addi r1, r1, 0x10
/* 80B5410C  4E 80 00 20 */	blr 
