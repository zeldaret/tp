lbl_8059B458:
/* 8059B458  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8059B45C  7C 08 02 A6 */	mflr r0
/* 8059B460  90 01 00 14 */	stw r0, 0x14(r1)
/* 8059B464  4B CC 7C 2C */	b ModuleUnresolved
/* 8059B468  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8059B46C  7C 08 03 A6 */	mtlr r0
/* 8059B470  38 21 00 10 */	addi r1, r1, 0x10
/* 8059B474  4E 80 00 20 */	blr 
