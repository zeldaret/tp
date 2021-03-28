lbl_80C47A6C:
/* 80C47A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C47A70  7C 08 02 A6 */	mflr r0
/* 80C47A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C47A78  4B 61 B6 14 */	b ModuleEpilog
/* 80C47A7C  3C 60 80 C5 */	lis r3, data_80C49CA4@ha
/* 80C47A80  38 63 9C A4 */	addi r3, r3, data_80C49CA4@l
/* 80C47A84  4B 61 B7 0C */	b ModuleDestructorsX
/* 80C47A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C47A8C  7C 08 03 A6 */	mtlr r0
/* 80C47A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80C47A94  4E 80 00 20 */	blr 
