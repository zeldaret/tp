lbl_80BB67C0:
/* 80BB67C0  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB67C4  7C 08 02 A6 */	mflr r0
/* 80BB67C8  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB67CC  3C 60 80 BB */	lis r3, data_80BB7EA4@ha
/* 80BB67D0  38 63 7E A4 */	addi r3, r3, data_80BB7EA4@l
/* 80BB67D4  4B 6A C9 78 */	b ModuleConstructorsX
/* 80BB67D8  4B 6A C8 B0 */	b ModuleProlog
/* 80BB67DC  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB67E0  7C 08 03 A6 */	mtlr r0
/* 80BB67E4  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB67E8  4E 80 00 20 */	blr 
