lbl_8066F3F8:
/* 8066F3F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8066F3FC  7C 08 02 A6 */	mflr r0
/* 8066F400  90 01 00 14 */	stw r0, 0x14(r1)
/* 8066F404  4B BF 3C 8C */	b ModuleUnresolved
/* 8066F408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8066F40C  7C 08 03 A6 */	mtlr r0
/* 8066F410  38 21 00 10 */	addi r1, r1, 0x10
/* 8066F414  4E 80 00 20 */	blr 
