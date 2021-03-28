lbl_80C7CACC:
/* 80C7CACC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C7CAD0  7C 08 02 A6 */	mflr r0
/* 80C7CAD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C7CAD8  4B 5E 65 B4 */	b ModuleEpilog
/* 80C7CADC  3C 60 80 C8 */	lis r3, data_80C7DEC8@ha
/* 80C7CAE0  38 63 DE C8 */	addi r3, r3, data_80C7DEC8@l
/* 80C7CAE4  4B 5E 66 AC */	b ModuleDestructorsX
/* 80C7CAE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C7CAEC  7C 08 03 A6 */	mtlr r0
/* 80C7CAF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C7CAF4  4E 80 00 20 */	blr 
