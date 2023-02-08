lbl_80CC06C0:
/* 80CC06C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC06C4  7C 08 02 A6 */	mflr r0
/* 80CC06C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC06CC  4B FF F3 FD */	bl create__11daRotTrap_cFv
/* 80CC06D0  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC06D4  7C 08 03 A6 */	mtlr r0
/* 80CC06D8  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC06DC  4E 80 00 20 */	blr 
