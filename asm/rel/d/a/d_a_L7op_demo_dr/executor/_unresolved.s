lbl_805AB078:
/* 805AB078  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AB07C  7C 08 02 A6 */	mflr r0
/* 805AB080  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AB084  4B CB 80 0C */	b ModuleUnresolved
/* 805AB088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AB08C  7C 08 03 A6 */	mtlr r0
/* 805AB090  38 21 00 10 */	addi r1, r1, 0x10
/* 805AB094  4E 80 00 20 */	blr 
