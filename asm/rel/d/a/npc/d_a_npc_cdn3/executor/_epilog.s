lbl_80978C8C:
/* 80978C8C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80978C90  7C 08 02 A6 */	mflr r0
/* 80978C94  90 01 00 14 */	stw r0, 0x14(r1)
/* 80978C98  4B 8E A3 F4 */	b ModuleEpilog
/* 80978C9C  3C 60 80 98 */	lis r3, data_8097F53C@ha
/* 80978CA0  38 63 F5 3C */	addi r3, r3, data_8097F53C@l
/* 80978CA4  4B 8E A4 EC */	b ModuleDestructorsX
/* 80978CA8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80978CAC  7C 08 03 A6 */	mtlr r0
/* 80978CB0  38 21 00 10 */	addi r1, r1, 0x10
/* 80978CB4  4E 80 00 20 */	blr 
