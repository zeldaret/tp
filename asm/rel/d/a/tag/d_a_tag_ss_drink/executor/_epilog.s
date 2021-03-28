lbl_80D62D6C:
/* 80D62D6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D62D70  7C 08 02 A6 */	mflr r0
/* 80D62D74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D62D78  4B 50 03 14 */	b ModuleEpilog
/* 80D62D7C  3C 60 80 D6 */	lis r3, data_80D6379C@ha
/* 80D62D80  38 63 37 9C */	addi r3, r3, data_80D6379C@l
/* 80D62D84  4B 50 04 0C */	b ModuleDestructorsX
/* 80D62D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D62D8C  7C 08 03 A6 */	mtlr r0
/* 80D62D90  38 21 00 10 */	addi r1, r1, 0x10
/* 80D62D94  4E 80 00 20 */	blr 
