lbl_80AF7638:
/* 80AF7638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80AF763C  7C 08 02 A6 */	mflr r0
/* 80AF7640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80AF7644  4B 76 BA 4C */	b ModuleUnresolved
/* 80AF7648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80AF764C  7C 08 03 A6 */	mtlr r0
/* 80AF7650  38 21 00 10 */	addi r1, r1, 0x10
/* 80AF7654  4E 80 00 20 */	blr 
