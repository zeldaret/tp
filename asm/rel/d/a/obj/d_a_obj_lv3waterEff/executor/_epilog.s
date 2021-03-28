lbl_80C5C4AC:
/* 80C5C4AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C5C4B0  7C 08 02 A6 */	mflr r0
/* 80C5C4B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C5C4B8  4B 60 6B D4 */	b ModuleEpilog
/* 80C5C4BC  3C 60 80 C6 */	lis r3, data_80C5C874@ha
/* 80C5C4C0  38 63 C8 74 */	addi r3, r3, data_80C5C874@l
/* 80C5C4C4  4B 60 6C CC */	b ModuleDestructorsX
/* 80C5C4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C5C4CC  7C 08 03 A6 */	mtlr r0
/* 80C5C4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C5C4D4  4E 80 00 20 */	blr 
