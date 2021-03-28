lbl_80BE81B8:
/* 80BE81B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80BE81BC  7C 08 02 A6 */	mflr r0
/* 80BE81C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80BE81C4  4B 67 AE CC */	b ModuleUnresolved
/* 80BE81C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80BE81CC  7C 08 03 A6 */	mtlr r0
/* 80BE81D0  38 21 00 10 */	addi r1, r1, 0x10
/* 80BE81D4  4E 80 00 20 */	blr 
