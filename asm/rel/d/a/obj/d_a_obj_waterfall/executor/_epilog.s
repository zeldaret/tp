lbl_80D2EBCC:
/* 80D2EBCC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D2EBD0  7C 08 02 A6 */	mflr r0
/* 80D2EBD4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D2EBD8  4B 53 44 B4 */	b ModuleEpilog
/* 80D2EBDC  3C 60 80 D3 */	lis r3, data_80D2FD54@ha
/* 80D2EBE0  38 63 FD 54 */	addi r3, r3, data_80D2FD54@l
/* 80D2EBE4  4B 53 45 AC */	b ModuleDestructorsX
/* 80D2EBE8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2EBEC  7C 08 03 A6 */	mtlr r0
/* 80D2EBF0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D2EBF4  4E 80 00 20 */	blr 
