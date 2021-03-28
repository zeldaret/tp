lbl_80CC46D8:
/* 80CC46D8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC46DC  7C 08 02 A6 */	mflr r0
/* 80CC46E0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC46E4  4B 59 E9 AC */	b ModuleUnresolved
/* 80CC46E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC46EC  7C 08 03 A6 */	mtlr r0
/* 80CC46F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC46F4  4E 80 00 20 */	blr 
