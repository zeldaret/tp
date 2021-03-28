lbl_80C2ADD8:
/* 80C2ADD8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C2ADDC  7C 08 02 A6 */	mflr r0
/* 80C2ADE0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C2ADE4  4B 63 82 AC */	b ModuleUnresolved
/* 80C2ADE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2ADEC  7C 08 03 A6 */	mtlr r0
/* 80C2ADF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C2ADF4  4E 80 00 20 */	blr 
