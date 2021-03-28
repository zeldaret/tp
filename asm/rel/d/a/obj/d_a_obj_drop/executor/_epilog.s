lbl_80BDFC8C:
/* 80BDFC8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BDFC90  7C 08 02 A6 */	mflr r0
/* 80BDFC94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BDFC98  4B 68 33 F4 */	b ModuleEpilog
/* 80BDFC9C  3C 60 80 BE */	lis r3, data_80BE1F84@ha
/* 80BDFCA0  38 63 1F 84 */	addi r3, r3, data_80BE1F84@l
/* 80BDFCA4  4B 68 34 EC */	b ModuleDestructorsX
/* 80BDFCA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BDFCAC  7C 08 03 A6 */	mtlr r0
/* 80BDFCB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BDFCB4  4E 80 00 20 */	blr 
