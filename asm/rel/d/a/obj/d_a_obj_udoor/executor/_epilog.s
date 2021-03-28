lbl_80D206EC:
/* 80D206EC  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80D206F0  7C 08 02 A6 */	mflr r0
/* 80D206F4  90 01 00 14 */	stw r0, 0x14(r1)
/* 80D206F8  4B 54 29 94 */	b ModuleEpilog
/* 80D206FC  3C 60 80 D2 */	lis r3, data_80D20DDC@ha
/* 80D20700  38 63 0D DC */	addi r3, r3, data_80D20DDC@l
/* 80D20704  4B 54 2A 8C */	b ModuleDestructorsX
/* 80D20708  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80D2070C  7C 08 03 A6 */	mtlr r0
/* 80D20710  38 21 00 10 */	addi r1, r1, 0x10
/* 80D20714  4E 80 00 20 */	blr 
