lbl_8049E098:
/* 8049E098  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8049E09C  7C 08 02 A6 */	mflr r0
/* 8049E0A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8049E0A4  4B DC 4F EC */	b ModuleUnresolved
/* 8049E0A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8049E0AC  7C 08 03 A6 */	mtlr r0
/* 8049E0B0  38 21 00 10 */	addi r1, r1, 0x10
/* 8049E0B4  4E 80 00 20 */	blr 
