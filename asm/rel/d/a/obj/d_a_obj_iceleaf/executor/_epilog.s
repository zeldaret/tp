lbl_80C246CC:
/* 80C246CC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C246D0  7C 08 02 A6 */	mflr r0
/* 80C246D4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C246D8  4B 63 E9 B4 */	b ModuleEpilog
/* 80C246DC  3C 60 80 C2 */	lis r3, data_80C25D60@ha
/* 80C246E0  38 63 5D 60 */	addi r3, r3, data_80C25D60@l
/* 80C246E4  4B 63 EA AC */	b ModuleDestructorsX
/* 80C246E8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C246EC  7C 08 03 A6 */	mtlr r0
/* 80C246F0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C246F4  4E 80 00 20 */	blr 
