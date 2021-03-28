lbl_805A342C:
/* 805A342C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A3430  7C 08 02 A6 */	mflr r0
/* 805A3434  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A3438  4B CB FC 54 */	b ModuleEpilog
/* 805A343C  3C 60 80 5A */	lis r3, data_805A3684@ha
/* 805A3440  38 63 36 84 */	addi r3, r3, data_805A3684@l
/* 805A3444  4B CB FD 4C */	b ModuleDestructorsX
/* 805A3448  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A344C  7C 08 03 A6 */	mtlr r0
/* 805A3450  38 21 00 10 */	addi r1, r1, 0x10
/* 805A3454  4E 80 00 20 */	blr 
