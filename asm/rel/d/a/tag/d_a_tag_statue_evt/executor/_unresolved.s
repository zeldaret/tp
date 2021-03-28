lbl_805A6F38:
/* 805A6F38  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6F3C  7C 08 02 A6 */	mflr r0
/* 805A6F40  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6F44  4B CB C1 4C */	b ModuleUnresolved
/* 805A6F48  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6F4C  7C 08 03 A6 */	mtlr r0
/* 805A6F50  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6F54  4E 80 00 20 */	blr 
