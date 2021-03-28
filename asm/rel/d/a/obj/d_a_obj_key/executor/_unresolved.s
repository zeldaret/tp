lbl_80C3F378:
/* 80C3F378  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C3F37C  7C 08 02 A6 */	mflr r0
/* 80C3F380  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C3F384  4B 62 3D 0C */	b ModuleUnresolved
/* 80C3F388  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C3F38C  7C 08 03 A6 */	mtlr r0
/* 80C3F390  38 21 00 10 */	addi r1, r1, 0x10
/* 80C3F394  4E 80 00 20 */	blr 
