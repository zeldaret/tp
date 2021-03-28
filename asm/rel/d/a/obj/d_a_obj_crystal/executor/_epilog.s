lbl_80BD634C:
/* 80BD634C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD6350  7C 08 02 A6 */	mflr r0
/* 80BD6354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD6358  4B 68 CD 34 */	b ModuleEpilog
/* 80BD635C  3C 60 80 BD */	lis r3, data_80BD68B8@ha
/* 80BD6360  38 63 68 B8 */	addi r3, r3, data_80BD68B8@l
/* 80BD6364  4B 68 CE 2C */	b ModuleDestructorsX
/* 80BD6368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD636C  7C 08 03 A6 */	mtlr r0
/* 80BD6370  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD6374  4E 80 00 20 */	blr 
