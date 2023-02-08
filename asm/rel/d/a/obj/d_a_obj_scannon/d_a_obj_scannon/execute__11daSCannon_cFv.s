lbl_80CC7204:
/* 80CC7204  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC7208  7C 08 02 A6 */	mflr r0
/* 80CC720C  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC7210  48 00 07 61 */	bl middleExe__11daSCannon_cFv
/* 80CC7214  38 60 00 01 */	li r3, 1
/* 80CC7218  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC721C  7C 08 03 A6 */	mtlr r0
/* 80CC7220  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC7224  4E 80 00 20 */	blr 
