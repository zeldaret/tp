lbl_8054F318:
/* 8054F318  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8054F31C  7C 08 02 A6 */	mflr r0
/* 8054F320  90 01 00 14 */	stw r0, 0x14(r1)
/* 8054F324  4B D1 3D 6C */	b ModuleUnresolved
/* 8054F328  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8054F32C  7C 08 03 A6 */	mtlr r0
/* 8054F330  38 21 00 10 */	addi r1, r1, 0x10
/* 8054F334  4E 80 00 20 */	blr 
