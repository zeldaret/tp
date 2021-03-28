lbl_805A5478:
/* 805A5478  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A547C  7C 08 02 A6 */	mflr r0
/* 805A5480  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A5484  4B CB DC 0C */	b ModuleUnresolved
/* 805A5488  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A548C  7C 08 03 A6 */	mtlr r0
/* 805A5490  38 21 00 10 */	addi r1, r1, 0x10
/* 805A5494  4E 80 00 20 */	blr 
