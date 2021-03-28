lbl_80D56B8C:
/* 80D56B8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D56B90  7C 08 02 A6 */	mflr r0
/* 80D56B94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D56B98  4B 50 C4 F4 */	b ModuleEpilog
/* 80D56B9C  3C 60 80 D6 */	lis r3, data_80D585B4@ha
/* 80D56BA0  38 63 85 B4 */	addi r3, r3, data_80D585B4@l
/* 80D56BA4  4B 50 C5 EC */	b ModuleDestructorsX
/* 80D56BA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D56BAC  7C 08 03 A6 */	mtlr r0
/* 80D56BB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D56BB4  4E 80 00 20 */	blr 
