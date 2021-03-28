lbl_800158DC:
/* 800158DC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 800158E0  7C 08 02 A6 */	mflr r0
/* 800158E4  90 01 00 14 */	stw r0, 0x14(r1)
/* 800158E8  48 33 2C 41 */	bl DVDConvertPathToEntrynum
/* 800158EC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 800158F0  7C 08 03 A6 */	mtlr r0
/* 800158F4  38 21 00 10 */	addi r1, r1, 0x10
/* 800158F8  4E 80 00 20 */	blr 
