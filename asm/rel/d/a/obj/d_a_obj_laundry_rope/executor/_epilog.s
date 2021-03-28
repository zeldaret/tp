lbl_80C521AC:
/* 80C521AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C521B0  7C 08 02 A6 */	mflr r0
/* 80C521B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C521B8  4B 61 0E D4 */	b ModuleEpilog
/* 80C521BC  3C 60 80 C5 */	lis r3, data_80C53300@ha
/* 80C521C0  38 63 33 00 */	addi r3, r3, data_80C53300@l
/* 80C521C4  4B 61 0F CC */	b ModuleDestructorsX
/* 80C521C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C521CC  7C 08 03 A6 */	mtlr r0
/* 80C521D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C521D4  4E 80 00 20 */	blr 
