lbl_80D34440:
/* 80D34440  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D34444  7C 08 02 A6 */	mflr r0
/* 80D34448  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3444C  3C 60 80 D3 */	lis r3, data_80D35168@ha
/* 80D34450  38 63 51 68 */	addi r3, r3, data_80D35168@l
/* 80D34454  4B 52 EC F8 */	b ModuleConstructorsX
/* 80D34458  4B 52 EC 30 */	b ModuleProlog
/* 80D3445C  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D34460  7C 08 03 A6 */	mtlr r0
/* 80D34464  38 21 00 10 */	addi r1, r1, 0x10
/* 80D34468  4E 80 00 20 */	blr 
