lbl_8045792C:
/* 8045792C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80457930  7C 08 02 A6 */	mflr r0
/* 80457934  90 01 00 14 */	stw r0, 0x14(r1)
/* 80457938  4B E0 B7 54 */	b ModuleEpilog
/* 8045793C  3C 60 80 45 */	lis r3, data_80457B28@ha
/* 80457940  38 63 7B 28 */	addi r3, r3, data_80457B28@l
/* 80457944  4B E0 B8 4C */	b ModuleDestructorsX
/* 80457948  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045794C  7C 08 03 A6 */	mtlr r0
/* 80457950  38 21 00 10 */	addi r1, r1, 0x10
/* 80457954  4E 80 00 20 */	blr 
