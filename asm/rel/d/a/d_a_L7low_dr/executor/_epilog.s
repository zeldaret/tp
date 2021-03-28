lbl_805AA5AC:
/* 805AA5AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 805AA5B0  7C 08 02 A6 */	mflr r0
/* 805AA5B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 805AA5B8  4B CB 8A D4 */	b ModuleEpilog
/* 805AA5BC  3C 60 80 5B */	lis r3, data_805AAF70@ha
/* 805AA5C0  38 63 AF 70 */	addi r3, r3, data_805AAF70@l
/* 805AA5C4  4B CB 8B CC */	b ModuleDestructorsX
/* 805AA5C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 805AA5CC  7C 08 03 A6 */	mtlr r0
/* 805AA5D0  38 21 00 10 */	addi r1, r1, 0x10
/* 805AA5D4  4E 80 00 20 */	blr 
