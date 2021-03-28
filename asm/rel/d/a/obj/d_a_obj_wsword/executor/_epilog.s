lbl_80D3B92C:
/* 80D3B92C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D3B930  7C 08 02 A6 */	mflr r0
/* 80D3B934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D3B938  4B 52 77 54 */	b ModuleEpilog
/* 80D3B93C  3C 60 80 D4 */	lis r3, data_80D3BF1C@ha
/* 80D3B940  38 63 BF 1C */	addi r3, r3, data_80D3BF1C@l
/* 80D3B944  4B 52 78 4C */	b ModuleDestructorsX
/* 80D3B948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D3B94C  7C 08 03 A6 */	mtlr r0
/* 80D3B950  38 21 00 10 */	addi r1, r1, 0x10
/* 80D3B954  4E 80 00 20 */	blr 
