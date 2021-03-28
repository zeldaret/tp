lbl_80C84818:
/* 80C84818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8481C  7C 08 02 A6 */	mflr r0
/* 80C84820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C84824  4B 5D E8 6C */	b ModuleUnresolved
/* 80C84828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8482C  7C 08 03 A6 */	mtlr r0
/* 80C84830  38 21 00 10 */	addi r1, r1, 0x10
/* 80C84834  4E 80 00 20 */	blr 
