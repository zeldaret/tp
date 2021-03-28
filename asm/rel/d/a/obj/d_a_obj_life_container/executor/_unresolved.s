lbl_804CC7B8:
/* 804CC7B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804CC7BC  7C 08 02 A6 */	mflr r0
/* 804CC7C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804CC7C4  4B D9 68 CC */	b ModuleUnresolved
/* 804CC7C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804CC7CC  7C 08 03 A6 */	mtlr r0
/* 804CC7D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804CC7D4  4E 80 00 20 */	blr 
