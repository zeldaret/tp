lbl_80CF5B4C:
/* 80CF5B4C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF5B50  7C 08 02 A6 */	mflr r0
/* 80CF5B54  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF5B58  4B 56 D5 34 */	b ModuleEpilog
/* 80CF5B5C  3C 60 80 CF */	lis r3, data_80CF6CD0@ha
/* 80CF5B60  38 63 6C D0 */	addi r3, r3, data_80CF6CD0@l
/* 80CF5B64  4B 56 D6 2C */	b ModuleDestructorsX
/* 80CF5B68  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF5B6C  7C 08 03 A6 */	mtlr r0
/* 80CF5B70  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF5B74  4E 80 00 20 */	blr 
