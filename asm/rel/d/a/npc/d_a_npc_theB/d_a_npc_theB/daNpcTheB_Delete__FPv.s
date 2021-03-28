lbl_80B00394:
/* 80B00394  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80B00398  7C 08 02 A6 */	mflr r0
/* 80B0039C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80B003A0  4B FF CE 5D */	bl Delete__11daNpcTheB_cFv
/* 80B003A4  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80B003A8  7C 08 03 A6 */	mtlr r0
/* 80B003AC  38 21 00 10 */	addi r1, r1, 0x10
/* 80B003B0  4E 80 00 20 */	blr 
