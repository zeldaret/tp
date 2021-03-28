lbl_80C58738:
/* 80C58738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5873C  7C 08 02 A6 */	mflr r0
/* 80C58740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C58744  4B 60 A9 4C */	b ModuleUnresolved
/* 80C58748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5874C  7C 08 03 A6 */	mtlr r0
/* 80C58750  38 21 00 10 */	addi r1, r1, 0x10
/* 80C58754  4E 80 00 20 */	blr 
