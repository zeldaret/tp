lbl_805A6F0C:
/* 805A6F0C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A6F10  7C 08 02 A6 */	mflr r0
/* 805A6F14  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A6F18  4B CB C1 74 */	b ModuleEpilog
/* 805A6F1C  3C 60 80 5B */	lis r3, data_805A8100@ha
/* 805A6F20  38 63 81 00 */	addi r3, r3, data_805A8100@l
/* 805A6F24  4B CB C2 6C */	b ModuleDestructorsX
/* 805A6F28  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A6F2C  7C 08 03 A6 */	mtlr r0
/* 805A6F30  38 21 00 10 */	addi r1, r1, 0x10
/* 805A6F34  4E 80 00 20 */	blr 
