lbl_80BD034C:
/* 80BD034C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BD0350  7C 08 02 A6 */	mflr r0
/* 80BD0354  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BD0358  4B 69 2D 34 */	b ModuleEpilog
/* 80BD035C  3C 60 80 BD */	lis r3, data_80BD30BC@ha
/* 80BD0360  38 63 30 BC */	addi r3, r3, data_80BD30BC@l
/* 80BD0364  4B 69 2E 2C */	b ModuleDestructorsX
/* 80BD0368  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BD036C  7C 08 03 A6 */	mtlr r0
/* 80BD0370  38 21 00 10 */	addi r1, r1, 0x10
/* 80BD0374  4E 80 00 20 */	blr 
