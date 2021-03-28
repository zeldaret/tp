lbl_80C6D738:
/* 80C6D738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C6D73C  7C 08 02 A6 */	mflr r0
/* 80C6D740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C6D744  4B 5F 59 4C */	b ModuleUnresolved
/* 80C6D748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C6D74C  7C 08 03 A6 */	mtlr r0
/* 80C6D750  38 21 00 10 */	addi r1, r1, 0x10
/* 80C6D754  4E 80 00 20 */	blr 
