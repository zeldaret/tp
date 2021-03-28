lbl_80CF866C:
/* 80CF866C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80CF8670  7C 08 02 A6 */	mflr r0
/* 80CF8674  90 01 00 14 */	stw r0, 0x14(r1)
/* 80CF8678  4B 56 AA 14 */	b ModuleEpilog
/* 80CF867C  3C 60 80 D0 */	lis r3, data_80CFB6E8@ha
/* 80CF8680  38 63 B6 E8 */	addi r3, r3, data_80CFB6E8@l
/* 80CF8684  4B 56 AB 0C */	b ModuleDestructorsX
/* 80CF8688  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80CF868C  7C 08 03 A6 */	mtlr r0
/* 80CF8690  38 21 00 10 */	addi r1, r1, 0x10
/* 80CF8694  4E 80 00 20 */	blr 
