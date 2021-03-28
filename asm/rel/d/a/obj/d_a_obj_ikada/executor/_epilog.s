lbl_80C2696C:
/* 80C2696C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C26970  7C 08 02 A6 */	mflr r0
/* 80C26974  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C26978  4B 63 C7 14 */	b ModuleEpilog
/* 80C2697C  3C 60 80 C2 */	lis r3, data_80C274EC@ha
/* 80C26980  38 63 74 EC */	addi r3, r3, data_80C274EC@l
/* 80C26984  4B 63 C8 0C */	b ModuleDestructorsX
/* 80C26988  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C2698C  7C 08 03 A6 */	mtlr r0
/* 80C26990  38 21 00 10 */	addi r1, r1, 0x10
/* 80C26994  4E 80 00 20 */	blr 
