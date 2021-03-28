lbl_80BB608C:
/* 80BB608C  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BB6090  7C 08 02 A6 */	mflr r0
/* 80BB6094  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BB6098  4B 6A CF F4 */	b ModuleEpilog
/* 80BB609C  3C 60 80 BB */	lis r3, data_80BB670C@ha
/* 80BB60A0  38 63 67 0C */	addi r3, r3, data_80BB670C@l
/* 80BB60A4  4B 6A D0 EC */	b ModuleDestructorsX
/* 80BB60A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BB60AC  7C 08 03 A6 */	mtlr r0
/* 80BB60B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BB60B4  4E 80 00 20 */	blr 
