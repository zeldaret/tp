lbl_807CF78C:
/* 807CF78C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 807CF790  7C 08 02 A6 */	mflr r0
/* 807CF794  90 01 00 14 */	stw r0, 0x14(r1)
/* 807CF798  4B A9 38 F4 */	b ModuleEpilog
/* 807CF79C  3C 60 80 7D */	lis r3, data_807D2084@ha
/* 807CF7A0  38 63 20 84 */	addi r3, r3, data_807D2084@l
/* 807CF7A4  4B A9 39 EC */	b ModuleDestructorsX
/* 807CF7A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 807CF7AC  7C 08 03 A6 */	mtlr r0
/* 807CF7B0  38 21 00 10 */	addi r1, r1, 0x10
/* 807CF7B4  4E 80 00 20 */	blr 
