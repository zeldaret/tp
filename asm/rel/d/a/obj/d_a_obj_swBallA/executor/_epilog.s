lbl_80CF32AC:
/* 80CF32AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF32B0  7C 08 02 A6 */	mflr r0
/* 80CF32B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF32B8  4B 56 FD D4 */	b ModuleEpilog
/* 80CF32BC  3C 60 80 CF */	lis r3, data_80CF43E0@ha
/* 80CF32C0  38 63 43 E0 */	addi r3, r3, data_80CF43E0@l
/* 80CF32C4  4B 56 FE CC */	b ModuleDestructorsX
/* 80CF32C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF32CC  7C 08 03 A6 */	mtlr r0
/* 80CF32D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF32D4  4E 80 00 20 */	blr 
