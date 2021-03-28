lbl_80C685AC:
/* 80C685AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C685B0  7C 08 02 A6 */	mflr r0
/* 80C685B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C685B8  4B 5F AA D4 */	b ModuleEpilog
/* 80C685BC  3C 60 80 C7 */	lis r3, data_80C68B64@ha
/* 80C685C0  38 63 8B 64 */	addi r3, r3, data_80C68B64@l
/* 80C685C4  4B 5F AB CC */	b ModuleDestructorsX
/* 80C685C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C685CC  7C 08 03 A6 */	mtlr r0
/* 80C685D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C685D4  4E 80 00 20 */	blr 
