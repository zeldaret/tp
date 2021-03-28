lbl_807D23F8:
/* 807D23F8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807D23FC  7C 08 02 A6 */	mflr r0
/* 807D2400  90 01 00 14 */	stw r0, 0x14(r1)
/* 807D2404  4B A9 0C 8C */	b ModuleUnresolved
/* 807D2408  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807D240C  7C 08 03 A6 */	mtlr r0
/* 807D2410  38 21 00 10 */	addi r1, r1, 0x10
/* 807D2414  4E 80 00 20 */	blr 
