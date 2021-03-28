lbl_8045CEB8:
/* 8045CEB8  94 21 FF F0 */	stwu r1, -0x10(r1)
/* 8045CEBC  7C 08 02 A6 */	mflr r0
/* 8045CEC0  90 01 00 14 */	stw r0, 0x14(r1)
/* 8045CEC4  4B E0 61 CC */	b ModuleUnresolved
/* 8045CEC8  80 01 00 14 */	lwz r0, 0x14(r1)
/* 8045CECC  7C 08 03 A6 */	mtlr r0
/* 8045CED0  38 21 00 10 */	addi r1, r1, 0x10
/* 8045CED4  4E 80 00 20 */	blr 
