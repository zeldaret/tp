lbl_80CC6AEC:
/* 80CC6AEC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC6AF0  7C 08 02 A6 */	mflr r0
/* 80CC6AF4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC6AF8  48 00 0B 11 */	bl createHeap__11daSCannon_cFv
/* 80CC6AFC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC6B00  7C 08 03 A6 */	mtlr r0
/* 80CC6B04  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC6B08  4E 80 00 20 */	blr 
