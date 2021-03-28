lbl_8049E06C:
/* 8049E06C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E070  7C 08 02 A6 */	mflr r0
/* 8049E074  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E078  4B DC 50 14 */	b ModuleEpilog
/* 8049E07C  3C 60 80 4A */	lis r3, data_804A284C@ha
/* 8049E080  38 63 28 4C */	addi r3, r3, data_804A284C@l
/* 8049E084  4B DC 51 0C */	b ModuleDestructorsX
/* 8049E088  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E08C  7C 08 03 A6 */	mtlr r0
/* 8049E090  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E094  4E 80 00 20 */	blr 
