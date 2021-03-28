lbl_80C3148C:
/* 80C3148C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C31490  7C 08 02 A6 */	mflr r0
/* 80C31494  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C31498  4B 63 1B F4 */	b ModuleEpilog
/* 80C3149C  3C 60 80 C3 */	lis r3, data_80C31958@ha
/* 80C314A0  38 63 19 58 */	addi r3, r3, data_80C31958@l
/* 80C314A4  4B 63 1C EC */	b ModuleDestructorsX
/* 80C314A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C314AC  7C 08 03 A6 */	mtlr r0
/* 80C314B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C314B4  4E 80 00 20 */	blr 
