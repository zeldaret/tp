lbl_8099D6B8:
/* 8099D6B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8099D6BC  7C 08 02 A6 */	mflr r0
/* 8099D6C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8099D6C4  4B 8C 59 CC */	b ModuleUnresolved
/* 8099D6C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8099D6CC  7C 08 03 A6 */	mtlr r0
/* 8099D6D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8099D6D4  4E 80 00 20 */	blr 
