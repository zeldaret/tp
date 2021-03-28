lbl_80D0D4AC:
/* 80D0D4AC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D0D4B0  7C 08 02 A6 */	mflr r0
/* 80D0D4B4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D0D4B8  4B 55 5B D4 */	b ModuleEpilog
/* 80D0D4BC  3C 60 80 D1 */	lis r3, data_80D0E5F4@ha
/* 80D0D4C0  38 63 E5 F4 */	addi r3, r3, data_80D0E5F4@l
/* 80D0D4C4  4B 55 5C CC */	b ModuleDestructorsX
/* 80D0D4C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D0D4CC  7C 08 03 A6 */	mtlr r0
/* 80D0D4D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80D0D4D4  4E 80 00 20 */	blr 
