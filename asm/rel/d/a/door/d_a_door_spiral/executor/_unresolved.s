lbl_804673B8:
/* 804673B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804673BC  7C 08 02 A6 */	mflr r0
/* 804673C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 804673C4  4B DF BC CC */	b ModuleUnresolved
/* 804673C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804673CC  7C 08 03 A6 */	mtlr r0
/* 804673D0  38 21 00 10 */	addi r1, r1, 0x10
/* 804673D4  4E 80 00 20 */	blr 
