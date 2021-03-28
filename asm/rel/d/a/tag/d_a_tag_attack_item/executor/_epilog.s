lbl_805A290C:
/* 805A290C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A2910  7C 08 02 A6 */	mflr r0
/* 805A2914  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A2918  4B CC 07 74 */	b ModuleEpilog
/* 805A291C  3C 60 80 5A */	lis r3, data_805A32C4@ha
/* 805A2920  38 63 32 C4 */	addi r3, r3, data_805A32C4@l
/* 805A2924  4B CC 08 6C */	b ModuleDestructorsX
/* 805A2928  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A292C  7C 08 03 A6 */	mtlr r0
/* 805A2930  38 21 00 10 */	addi r1, r1, 0x10
/* 805A2934  4E 80 00 20 */	blr 
