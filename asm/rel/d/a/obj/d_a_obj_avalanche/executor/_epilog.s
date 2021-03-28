lbl_80BA6E8C:
/* 80BA6E8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BA6E90  7C 08 02 A6 */	mflr r0
/* 80BA6E94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BA6E98  4B 6B C1 F4 */	b ModuleEpilog
/* 80BA6E9C  3C 60 80 BA */	lis r3, data_80BA7CF8@ha
/* 80BA6EA0  38 63 7C F8 */	addi r3, r3, data_80BA7CF8@l
/* 80BA6EA4  4B 6B C2 EC */	b ModuleDestructorsX
/* 80BA6EA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BA6EAC  7C 08 03 A6 */	mtlr r0
/* 80BA6EB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BA6EB4  4E 80 00 20 */	blr 
