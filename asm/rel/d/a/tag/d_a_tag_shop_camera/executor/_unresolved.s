lbl_80D60878:
/* 80D60878  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D6087C  7C 08 02 A6 */	mflr r0
/* 80D60880  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D60884  4B 50 28 0C */	b ModuleUnresolved
/* 80D60888  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D6088C  7C 08 03 A6 */	mtlr r0
/* 80D60890  38 21 00 10 */	addi r1, r1, 0x10
/* 80D60894  4E 80 00 20 */	blr 
