lbl_805A13AC:
/* 805A13AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805A13B0  7C 08 02 A6 */	mflr r0
/* 805A13B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805A13B8  4B CC 1C D4 */	b ModuleEpilog
/* 805A13BC  3C 60 80 5A */	lis r3, data_805A1D90@ha
/* 805A13C0  38 63 1D 90 */	addi r3, r3, data_805A1D90@l
/* 805A13C4  4B CC 1D CC */	b ModuleDestructorsX
/* 805A13C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805A13CC  7C 08 03 A6 */	mtlr r0
/* 805A13D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805A13D4  4E 80 00 20 */	blr 
