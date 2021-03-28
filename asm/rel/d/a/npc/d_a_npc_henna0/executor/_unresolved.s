lbl_80A013B8:
/* 80A013B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80A013BC  7C 08 02 A6 */	mflr r0
/* 80A013C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80A013C4  4B 86 1C CC */	b ModuleUnresolved
/* 80A013C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80A013CC  7C 08 03 A6 */	mtlr r0
/* 80A013D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80A013D4  4E 80 00 20 */	blr 
