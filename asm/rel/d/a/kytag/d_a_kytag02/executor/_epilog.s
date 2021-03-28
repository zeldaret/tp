lbl_80855A6C:
/* 80855A6C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80855A70  7C 08 02 A6 */	mflr r0
/* 80855A74  90 01 00 14 */	stw r0, 0x14(r1)
/* 80855A78  4B A0 D6 14 */	b ModuleEpilog
/* 80855A7C  3C 60 80 85 */	lis r3, data_80855DF8@ha
/* 80855A80  38 63 5D F8 */	addi r3, r3, data_80855DF8@l
/* 80855A84  4B A0 D7 0C */	b ModuleDestructorsX
/* 80855A88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80855A8C  7C 08 03 A6 */	mtlr r0
/* 80855A90  38 21 00 10 */	addi r1, r1, 0x10
/* 80855A94  4E 80 00 20 */	blr 
