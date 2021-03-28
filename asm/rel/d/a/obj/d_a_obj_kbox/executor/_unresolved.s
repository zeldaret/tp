lbl_80C3D578:
/* 80C3D578  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3D57C  7C 08 02 A6 */	mflr r0
/* 80C3D580  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3D584  4B 62 5B 0C */	b ModuleUnresolved
/* 80C3D588  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3D58C  7C 08 03 A6 */	mtlr r0
/* 80C3D590  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3D594  4E 80 00 20 */	blr 
