lbl_8058DFB8:
/* 8058DFB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8058DFBC  7C 08 02 A6 */	mflr r0
/* 8058DFC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8058DFC4  4B CD 50 CC */	b ModuleUnresolved
/* 8058DFC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8058DFCC  7C 08 03 A6 */	mtlr r0
/* 8058DFD0  38 21 00 10 */	addi r1, r1, 0x10
/* 8058DFD4  4E 80 00 20 */	blr 
