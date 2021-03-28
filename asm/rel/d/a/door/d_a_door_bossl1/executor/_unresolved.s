lbl_804E1D78:
/* 804E1D78  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 804E1D7C  7C 08 02 A6 */	mflr r0
/* 804E1D80  90 01 00 14 */	stw r0, 0x14(r1)
/* 804E1D84  4B D8 13 0C */	b ModuleUnresolved
/* 804E1D88  80 01 00 14 */	lwz r0, 0x14(r1)
/* 804E1D8C  7C 08 03 A6 */	mtlr r0
/* 804E1D90  38 21 00 10 */	addi r1, r1, 0x10
/* 804E1D94  4E 80 00 20 */	blr 
