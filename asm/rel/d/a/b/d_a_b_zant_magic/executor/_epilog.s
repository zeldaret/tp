lbl_8064F72C:
/* 8064F72C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8064F730  7C 08 02 A6 */	mflr r0
/* 8064F734  90 01 00 14 */	stw r0, 0x14(r1)
/* 8064F738  4B C1 39 54 */	b ModuleEpilog
/* 8064F73C  3C 60 80 65 */	lis r3, data_80650498@ha
/* 8064F740  38 63 04 98 */	addi r3, r3, data_80650498@l
/* 8064F744  4B C1 3A 4C */	b ModuleDestructorsX
/* 8064F748  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8064F74C  7C 08 03 A6 */	mtlr r0
/* 8064F750  38 21 00 10 */	addi r1, r1, 0x10
/* 8064F754  4E 80 00 20 */	blr 
