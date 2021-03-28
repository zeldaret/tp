lbl_805A3738:
/* 805A3738  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A373C  7C 08 02 A6 */	mflr r0
/* 805A3740  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3744  4B CB F9 4C */	b ModuleUnresolved
/* 805A3748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A374C  7C 08 03 A6 */	mtlr r0
/* 805A3750  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3754  4E 80 00 20 */	blr 
