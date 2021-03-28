lbl_80BD4E8C:
/* 80BD4E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD4E90  7C 08 02 A6 */	mflr r0
/* 80BD4E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD4E98  4B 68 E1 F4 */	b ModuleEpilog
/* 80BD4E9C  3C 60 80 BD */	lis r3, data_80BD59F8@ha
/* 80BD4EA0  38 63 59 F8 */	addi r3, r3, data_80BD59F8@l
/* 80BD4EA4  4B 68 E2 EC */	b ModuleDestructorsX
/* 80BD4EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD4EAC  7C 08 03 A6 */	mtlr r0
/* 80BD4EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD4EB4  4E 80 00 20 */	blr 
