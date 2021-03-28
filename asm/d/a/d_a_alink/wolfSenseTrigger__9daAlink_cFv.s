lbl_80127CF0:
/* 80127CF0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80127CF4  7C 08 02 A6 */	mflr r0
/* 80127CF8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80127CFC  38 80 00 01 */	li r4, 1
/* 80127D00  4B F8 A8 CD */	bl itemTriggerCheck__9daAlink_cFUc
/* 80127D04  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80127D08  7C 08 03 A6 */	mtlr r0
/* 80127D0C  38 21 00 10 */	addi r1, r1, 0x10
/* 80127D10  4E 80 00 20 */	blr 
