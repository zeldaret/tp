lbl_80D213B8:
/* 80D213B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D213BC  7C 08 02 A6 */	mflr r0
/* 80D213C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D213C4  4B 54 1C CC */	b ModuleUnresolved
/* 80D213C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D213CC  7C 08 03 A6 */	mtlr r0
/* 80D213D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D213D4  4E 80 00 20 */	blr 
