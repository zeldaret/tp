lbl_80CBC638:
/* 80CBC638  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBC63C  7C 08 02 A6 */	mflr r0
/* 80CBC640  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBC644  4B 5A 6A 4C */	b ModuleUnresolved
/* 80CBC648  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBC64C  7C 08 03 A6 */	mtlr r0
/* 80CBC650  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBC654  4E 80 00 20 */	blr 
