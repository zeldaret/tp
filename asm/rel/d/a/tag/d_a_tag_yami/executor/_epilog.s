lbl_80D659AC:
/* 80D659AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D659B0  7C 08 02 A6 */	mflr r0
/* 80D659B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D659B8  4B 4F D6 D4 */	b ModuleEpilog
/* 80D659BC  3C 60 80 D6 */	lis r3, data_80D6620C@ha
/* 80D659C0  38 63 62 0C */	addi r3, r3, data_80D6620C@l
/* 80D659C4  4B 4F D7 CC */	b ModuleDestructorsX
/* 80D659C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D659CC  7C 08 03 A6 */	mtlr r0
/* 80D659D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D659D4  4E 80 00 20 */	blr 
