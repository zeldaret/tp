lbl_805A83F8:
/* 805A83F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A83FC  7C 08 02 A6 */	mflr r0
/* 805A8400  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A8404  4B CB AC 8C */	b ModuleUnresolved
/* 805A8408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A840C  7C 08 03 A6 */	mtlr r0
/* 805A8410  38 21 00 10 */	addi r1, r1, 0x10
/* 805A8414  4E 80 00 20 */	blr 
