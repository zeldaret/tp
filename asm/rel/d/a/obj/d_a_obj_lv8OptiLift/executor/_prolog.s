lbl_80C8A220:
/* 80C8A220  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C8A224  7C 08 02 A6 */	mflr r0
/* 80C8A228  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C8A22C  3C 60 80 C9 */	lis r3, data_80C8B998@ha
/* 80C8A230  38 63 B9 98 */	addi r3, r3, data_80C8B998@l
/* 80C8A234  4B 5D 8F 18 */	b ModuleConstructorsX
/* 80C8A238  4B 5D 8E 50 */	b ModuleProlog
/* 80C8A23C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C8A240  7C 08 03 A6 */	mtlr r0
/* 80C8A244  38 21 00 10 */	addi r1, r1, 0x10
/* 80C8A248  4E 80 00 20 */	blr 
