lbl_8063A0B8:
/* 8063A0B8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8063A0BC  7C 08 02 A6 */	mflr r0
/* 8063A0C0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8063A0C4  4B C2 8F CC */	b ModuleUnresolved
/* 8063A0C8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8063A0CC  7C 08 03 A6 */	mtlr r0
/* 8063A0D0  38 21 00 10 */	addi r1, r1, 0x10
/* 8063A0D4  4E 80 00 20 */	blr 
