lbl_80D08738:
/* 80D08738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0873C  7C 08 02 A6 */	mflr r0
/* 80D08740  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D08744  4B 55 A9 4C */	b ModuleUnresolved
/* 80D08748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0874C  7C 08 03 A6 */	mtlr r0
/* 80D08750  38 21 00 10 */	addi r1, r1, 0x10
/* 80D08754  4E 80 00 20 */	blr 
