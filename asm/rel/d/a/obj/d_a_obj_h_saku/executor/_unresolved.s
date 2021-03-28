lbl_80C15498:
/* 80C15498  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 80C1549C  7C 08 02 A6 */	mflr r0
/* 80C154A0  90 01 00 14 */	stw r0, 0x14(r1)
/* 80C154A4  4B 64 DB EC */	b ModuleUnresolved
/* 80C154A8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 80C154AC  7C 08 03 A6 */	mtlr r0
/* 80C154B0  38 21 00 10 */	addi r1, r1, 0x10
/* 80C154B4  4E 80 00 20 */	blr 
