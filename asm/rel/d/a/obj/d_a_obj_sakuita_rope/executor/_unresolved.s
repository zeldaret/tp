lbl_80CC5218:
/* 80CC5218  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CC521C  7C 08 02 A6 */	mflr r0
/* 80CC5220  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CC5224  4B 59 DE 6C */	b ModuleUnresolved
/* 80CC5228  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CC522C  7C 08 03 A6 */	mtlr r0
/* 80CC5230  38 21 00 10 */	addi r1, r1, 0x10
/* 80CC5234  4E 80 00 20 */	blr 
