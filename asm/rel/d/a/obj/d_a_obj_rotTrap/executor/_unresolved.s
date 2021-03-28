lbl_80CBF818:
/* 80CBF818  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CBF81C  7C 08 02 A6 */	mflr r0
/* 80CBF820  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CBF824  4B 5A 38 6C */	b ModuleUnresolved
/* 80CBF828  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CBF82C  7C 08 03 A6 */	mtlr r0
/* 80CBF830  38 21 00 10 */	addi r1, r1, 0x10
/* 80CBF834  4E 80 00 20 */	blr 
